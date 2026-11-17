#!/usr/bin/sh
# Simple wrapper for xbps-commands. makes calling the xbps commands similar to dnf with aliases.
# Example:
# xpw in -Syu -> xbps-install -Syu
# xpw deps -> xbps-dgraph

OPTIONS=''
XPWTITLE='XBPS Program Wrapper'
XPWALIASFILE="../share/xpw/aliases.sh"
XPW_ALIASES=''
XPW_MAX_ALIAS_LENGTH=0
add_cmd_alias() {
    if [ -z "$1" ]; then
        tmp="$2"
    else
        tmp="$1|$2"
    fi
    echo $tmp
    tmp=""    
}
check_xbps_command() {
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        return
    fi
    arg="$1"
    xpw_aliases="$2"
    xbps_cmd="$3"
    for xa in $(echo $xpw_aliases | tr '|' ' ' ); do
        if [ $xa = $arg ]; then
            echo 1
        fi
    done
    echo 0
}
get_max_alias_length() {
    max=0
    for s in \
        "$XPW_ALTERNATIVES_ALIASES" \
        "$XPW_CHECKVERS_ALIASES" \
        "$XPW_CREATE_ALIASES" \
        "$XPW_DGRAPH_ALIASES" \
        "$XPW_DIGEST_ALIASES" \
        "$XPW_FBULK_ALIASES" \
        "$XPW_FETCH_ALIASES" \
        "$XPW_INSTALL_ALIASES" \
        "$XPW_PKGDB_ALIASES" \
        "$XPW_QUERY_ALIASES" \
        "$XPW_RECONFIGURE_ALIASES" \
        "$XPW_RINDEX_ALIASES" \
        "$XPW_REMOVE_ALIASES" \
        "$XPW_UCHROOT_ALIASES" \
        "$XPW_UHELPER_ALIASES" \
        "$XPW_UUNSHARE_ALIASES"
    do
        n=${#s}
        [ "$n" -gt "$max" ] && max=$n
    done
    echo $max
    unset max
}
print_help_message_alias() {
    msg_alias="$1"
    msg_cmd="$2"

    msg_max_padding=$XPW_MAX_ALIAS_LENGTH
    msg_tmp_padding=$msg_max_padding
    msg_padding='  '

    if [ ${#msg_alias} -lt $msg_max_padding ]; then
        msg_tmp_padding=$msg_max_padding
        while [ ${#msg_alias} -lt $msg_tmp_padding ]; do
            msg_padding="$msg_padding "
            msg_tmp_padding=$(($msg_tmp_padding - 1))
        done
    fi
    printf '%s -> %s\n' "$msg_padding[$msg_alias]" "$msg_cmd"
    unset msg_alias  msg_cmd  msg_padding
    unset msg_max_padding  msg_tmp_padding
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

if [ -f "$XPWALIASFILE" ]; then
    . "$XPWALIASFILE"
fi

XPW_ALTERNATIVES_ALIASES="$(add_cmd_alias "$XPW_ALTERNATIVES_ALIASES" 'al')"
XPW_CHECKVERS_ALIASES="$(add_cmd_alias "$XPW_CHECKVERS_ALIASES" 'cv')"
XPW_CREATE_ALIASES="$(add_cmd_alias "$XPW_CREATE_ALIASES" 'cr')"
XPW_DGRAPH_ALIASES="$(add_cmd_alias "$XPW_DGRAPH_ALIASES" 'dg')"
XPW_DIGEST_ALIASES="$(add_cmd_alias "$XPW_DIGEST_ALIASES" 'di')"
XPW_FBULK_ALIASES="$(add_cmd_alias "$XPW_FBULK_ALIASES" 'fb')"
XPW_FETCH_ALIASES="$(add_cmd_alias "$XPW_FETCH_ALIASES" 'fe')"
XPW_INSTALL_ALIASES="$(add_cmd_alias "$XPW_INSTALL_ALIASES" 'in')"
XPW_PKGDB_ALIASES="$(add_cmd_alias "$XPW_PKGDB_ALIASES" 'pk')"
XPW_QUERY_ALIASES="$(add_cmd_alias "$XPW_QUERY_ALIASES" 'qu')"
XPW_RECONFIGURE_ALIASES="$(add_cmd_alias "$XPW_RECONFIGURE_ALIASES" 're')"
XPW_RINDEX_ALIASES="$(add_cmd_alias "$XPW_RINDEX_ALIASES" 'ri')"
XPW_REMOVE_ALIASES="$(add_cmd_alias "$XPW_REMOVE_ALIASES" 'rm')"
XPW_UCHROOT_ALIASES="$(add_cmd_alias "$XPW_UCHROOT_ALIASES" 'uc')"
XPW_UHELPER_ALIASES="$(add_cmd_alias "$XPW_UHELPER_ALIASES" 'uh')"
XPW_UUNSHARE_ALIASES="$(add_cmd_alias "$XPW_UUNSHARE_ALIASES" 'uu')"

if [ $# -gt 0 ]; then
    XPW_CMD_FOUND="0"
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_ALTERNATIVES_ALIASES" 'alternatives')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-alternatives"
        xbps-alternatives "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_CHECKVERS_ALIASES" 'checkvers')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-checkvers"
        xbps-checkvers "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_CREATE_ALIASES" 'create')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-create"
        xbps-create "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_DGRAPH_ALIASES" 'dgraph')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-dgraph"
        xbps-dgraph "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_DIGEST_ALIASES" 'digest')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-digest"
        xbps-digest "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_FBULK_ALIASES" 'fbulk')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-fbulk"
        xbps-fbulk "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_FETCH_ALIASES" 'fetch')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-fetch"
        xbps-fetch "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_INSTALL_ALIASES" 'install')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-install"
        xbps-install "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_PKGDB_ALIASES" 'pkgdb')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-pkgdb"
        xbps-pkgdb "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_QUERY_ALIASES" 'query')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-query"
        xbps-query "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_RECONFIGURE_ALIASES" 'reconfigure')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-reconfigure"
        xbps-reconfigure "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_RINDEX_ALIASES" 'rindex')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-rindex"
        xbps-rindex "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_REMOVE_ALIASES" 'remove')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-remove"
        xbps-remove "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_UCHROOT_ALIASES" 'uchroot')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-uchroot"
        xbps-uchroot "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_UHELPER_ALIASES" 'uhelper')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-uhelper"
        xbps-uhelper "$@"
        exit
    fi
    XPW_CMD_FOUND=$(check_xbps_command "$1" "$XPW_UUNSHARE_ALIASES" 'uunshare')
    if [ "$XPW_CMD_FOUND" = "1" ]; then
        echo "Executing the xbps command: xbps-uunshare"
        xbps-uunshare "$@"
        exit
    fi
else
    echo "error: No command provided."
    xpw_opt queue 'help'
fi
for arg in "$@"; do
    if [ "${arg%${arg#??}}" != '--' ]; then
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
XPW_MAX_ALIAS_LENGTH=$(get_max_alias_length)
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
            print_help_message_alias "$XPW_ALTERNATIVES_ALIASES" "alternatives"
            print_help_message_alias "$XPW_CHECKVERS_ALIASES" "checkvers"
            print_help_message_alias "$XPW_CREATE_ALIASES" "create"
            print_help_message_alias "$XPW_DGRAPH_ALIASES" "dgraph"
            print_help_message_alias "$XPW_DIGEST_ALIASES" "digest"
            print_help_message_alias "$XPW_FBULK_ALIASES" "fbulk"
            print_help_message_alias "$XPW_FETCH_ALIASES" "fetch"
            print_help_message_alias "$XPW_INSTALL_ALIASES" "install"
            print_help_message_alias "$XPW_PKGDB_ALIASES" "pkgdb"
            print_help_message_alias "$XPW_QUERY_ALIASES" "query"
            print_help_message_alias "$XPW_RECONFIGURE_ALIASES" "reconfigure"
            print_help_message_alias "$XPW_RINDEX_ALIASES" "rindex"
            print_help_message_alias "$XPW_REMOVE_ALIASES" "remove"
            print_help_message_alias "$XPW_UCHROOT_ALIASES" "uchroot"
            print_help_message_alias "$XPW_UHELPER_ALIASES" "uhelper"
            print_help_message_alias "$XPW_UUNSHARE_ALIASES" "uunshare"
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