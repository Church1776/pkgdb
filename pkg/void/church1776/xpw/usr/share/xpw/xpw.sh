#!/usr/bin/sh
#
# The X Binary Package System Program Wrapper
#
# Unifies the CLI for xbps-commands with the following format: xpw <alias|command> "args".
# There's also a symlink for xpw: xbps.
# I decided since this is more a wrapper than an actual standalone
# it'd be more honest to make the main wrapper xpw as opposed to xbps.
# Hence why xbps is provided more as an extra to xpw rather than making it the default.
# I'd rather statex
#
# Example:
# xpw in -Syu -> xbps-install -Syu
# xpw dg -> xbps-dgraph
# etc...

OPTIONS=''
XPWTITLE='XBPS Program Wrapper'
XBPS_COMMANDS="$(find /usr/bin | sed '/xbps-/!d;s/.*xbps-//g' | sort)"
XPW_ALIASES=''

parse_alias() {
    xpwrc_line=""
    tmp_line=""
    xpw_alias=""
    tmp_alias=""
    xpwrc_line="${2#"${2%%[![:space:]]*}"}"
    tmp_line="${xpwrc_line#* = }"
    if [ "$tmp_line" != "${tmp_line#* }" ]; then
        tmp_alias="${xpwrc_line%% = *} = "
        while [ "${#tmp_alias}" -lt "${#xpwrc_line}" ]; do
            tmp_alias="${tmp_alias}${tmp_line%% *}|"
            tmp_line="${tmp_line#* }"
        done
        xpwrc_line="${tmp_alias%|}"
    fi
    if [ -z "$1" ]; then
        xpw_alias="${xpwrc_line%%' = '*}:${xpwrc_line##*' = '}"
    else
        xpw_alias="$1 ${xpwrc_line%%' = '*}:${xpwrc_line##*' = '}"
    fi
    XPW_ALIASES="$xpw_alias"
    unset xpwrc_line
    unset tmp_line
    unset xpw_alias
    unset tmp_alias
}

print_help_message_aliases() {
    msg_cmds="$XBPS_COMMANDS"
    msg_aliases="$XPW_ALIASES"
    msg_al_list=""
    msg_padding="  "
    msg_max_padding=0
    msg_tmp_padding=0

    for xcmd in $msg_cmds; do
        msg_al_list=''
        for xal in $msg_aliases; do
            if [ "${xal##*:}" != "$xcmd" ]; then
                continue
            fi
            msg_al_list="${msg_al_list:+"$msg_al_list|"}${xal%%:*}"
        done
        if [ "${#msg_al_list}" -gt "$msg_max_padding" ]; then
            msg_max_padding="${#msg_al_list}"
        fi
    done
    for xcmd in $msg_cmds; do
        msg_padding='  '
        msg_al_list=''
        for xal in $msg_aliases; do
            if [ "${xal##*:}" != "$xcmd" ]; then
                continue
            fi
            msg_al_list="${msg_al_list:+"$msg_al_list|"}${xal%%:*}"
        done
        if [ "${#msg_al_list}" -lt "$msg_max_padding" ]; then
            msg_tmp_padding="$msg_max_padding"
            while [ "${#msg_al_list}" -lt "$msg_tmp_padding" ]; do
                msg_padding="$msg_padding "
                msg_tmp_padding=$(($msg_tmp_padding - 1))
            done
        fi
        printf '%s -> %s\n' "$msg_padding[$msg_al_list]" "$xcmd"
    done
    unset msg_cmds
    unset msg_aliases
    unset msg_al_list
    unset msg_padding
    unset msg_max_padding
    unset msg_tmp_padding
}
xpw_opt() {
    case "$1" in
        deque) shift
            if [ -z "$OPTIONS" ]; then
                return
            else
                xpw_opt format
            fi
            OPTIONS="${OPTIONS#*,}"
        ;;
        format) shift
            if [ "${OPTIONS:-','}" = ',' ]; then
                OPTIONS=''
            fi
            comma="${OPTIONS#${OPTIONS%?}}"
            if [ "${comma:-','}" != ',' ]; then
                OPTIONS="$OPTIONS,"
            fi
            unset comma
        ;;
        has) shift
            tmps="$OPTIONS"
            while [ -n "$tmps" ]; do
                if [ "${tmps%%,*}" = "$1" ]; then
                    return 0
                fi
                tmps="${tmps#*,}"
            done
            unset tmps
            return 1
        ;;
        queue) shift
            if [ $# -eq 0 ]; then
                return
            elif [ -n "$OPTIONS" ]; then
                xpw_opt format
            fi
            OPTIONS="$OPTIONS$1,"
        ;;
        sort) shift
            OPTIONS="$(
                printf '%s\n' "${OPTIONS%,}" |
                tr ',' '\n' |
                LC_ALL=C sort |
                paste -s -d ','
                )"
            OPTIONS="$OPTIONS,"
        ;;
        *) printf '%s\n' \
            "Method '$1' not available."
            return 1
        ;;
    esac
}

### Script starts here.

# Grab User aliases
if [ -f ~/.xpwrc ]; then
    while IFS= read -r line; do
        if [ "$XPWRC_MODE" != 'alias' ]; then
            case $line in
                *'[alias]'*) XPWRC_MODE='alias'; continue;;
            esac
        elif [ "$XPWRC_MODE" = 'alias' ]; then
            parse_alias "$XPW_ALIASES" "$line"
        fi
    done < "$HOME/.xpwrc"
fi

# Add default aliases for commands.
for xcmd in $XBPS_COMMANDS; do
    case $xcmd in
        remove) xal='rm';;
        *) xal="$(printf '%.2s' "$xcmd")"
    esac
    parse_alias "$XPW_ALIASES" "$xal = $xcmd"
done

if [ $# -gt 0 ]; then
    for al in $( echo $XPW_ALIASES | sort); do
        tmp_opts=""
        al_opts="${al}"
        case $al_opts in
            *'|'*) al="${al%%|*}"; al_opts="${al_opts#*|}";;
            *) al_opts="";;
        esac
        if [ -n "$al_opts" ]; then
            for ao in $(echo $al_opts | tr '|' ' '); do
                tmp_opts="${tmp_opts:+"$tmp_opts "}$ao"
            done
            al_opts="$tmp_opts"
        fi
        if [ "${al%%:*}" = $1 ] || [ "${al##*:}" = $1 ]; then
            shift
            "xbps-${al##*:}" "${al_opts:+$al_opts}" "$@"
            exit
        fi
    done
else
    echo "error: No command provided."
    xpw_opt queue 'help'
fi
for arg in "$@"; do
    if [ "${arg%${arg#??}}" != '--' ]; then
        if [ "${arg%${arg#?}}" != '-' ]; then
            echo "error: Unknown argument: '$arg'"
            exit
        fi
        chars="${arg#-}"
        while [ -n "$chars" ]; do
            c="${chars%${chars#?}}"
            case $c in
                h) if xpw_opt has 'help'; then continue; fi ; xpw_opt queue 'help';;
                v) if xpw_opt has 'version'; then continue; fi ; xpw_opt queue 'version';;
                *) echo "error: Invalid option: '$chars'"; if ! xpw_opt has 'help'; then xpw_opt queue 'help'; fi ; break 2;;
            esac
            chars="${chars#?}"
        done
        unset chars c
        continue
    else
        case "${arg#--}" in
            help) if xpw_opt has 'help'; then continue; fi ; xpw_opt queue 'help';;
            version) if xpw_opt has 'version'; then continue; fi ; xpw_opt queue 'version';;
            *) echo "error: Invalid option: '${arg#--}'"; if ! xpw_opt has 'help'; then xpw_opt queue 'help'; fi ; break;;
        esac
    fi
done
xpw_opt sort
while [ -n "$OPTIONS" ]; do
    case "${OPTIONS%%,*}" in
        help) printf '%s\n' \
            "$XPWTITLE" \
            "Usage: ${0##*/} [OPTIONS|command] [command arguments]" \
            '' \
            'OPTIONS:' \
            '  -h, --help     Show this help message' \
            '  -v, --version  Show XBPS version' \
            '' \
            'Command Aliases:' 
            print_help_message_aliases
            echo '' 
            printf '%s\n' 'Examples: ' \
            "  ${0##*/} al <args> -> xbps-alternatives <args>" \
            "  ${0##*/} dg <args> -> xbps-dgraph <args>" \
            "  ${0##*/} in <args> -> xbps-install <args>" \
            "  ${0##*/} ri <args> -> xbps-rindex <args>" \
            ''
            ;;
        version) xbps-install -V ;;
    esac
    xpw_opt deque
done

unset -f xpw_opt
unset -v OPTIONS