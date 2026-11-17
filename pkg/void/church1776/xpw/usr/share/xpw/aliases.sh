parse_alias() {
    xpwrc_line="${2#${2%%[![:space:]]*}}"
    if [ -z "$1" ]; then
        xpw_alias="${xpwrc_line%%' = '*}"
    else
        xpw_alias="$1|${xpwrc_line%%' = '*}"
    fi
    echo "$xpw_alias"
    unset xpw_alias
}
if [ -f ~/.xpwrc ]; then
    while IFS= read -r line; do
        if [ "$XPWRC_MODE" != 'alias' ]; then
            case $line in
                *'[alias]'*) XPWRC_MODE='alias'; continue;;
            esac
        elif [ "$XPWRC_MODE" = 'alias' ]; then
            case $line in
                *alternatives*) XPW_ALTERNATIVES_ALIASES="$(parse_alias "$XPW_ALTERNATIVES_ALIASES" "$line")";;
                *checkvers*) XPW_CHECKVERS_ALIASES="$(parse_alias "$XPW_CHECKVERS_ALIASES" "$line")";;
                *create*) XPW_CREATE_ALIASES="$(parse_alias "$XPW_CREATE_ALIASES" "$line")";;
                *dgraph*) XPW_DGRAPH_ALIASES="$(parse_alias "$XPW_DGRAPH_ALIASES" "$line")";;
                *digest*) XPW_DIGEST_ALIASES="$(parse_alias "$XPW_DIGEST_ALIASES" "$line")";;
                *fbulk*) XPW_FBULK_ALIASES="$(parse_alias "$XPW_FBULK_ALIASES" "$line")";;
                *fetch*) XPW_FETCH_ALIASES="$(parse_alias "$XPW_FETCH_ALIASES" "$line")";;
                *install*) XPW_INSTALL_ALIASES="$(parse_alias "$XPW_INSTALL_ALIASES" "$line")";;
                *pkgdb*) XPW_PKGDB_ALIASES="$(parse_alias "$XPW_PKGDB_ALIASES" "$line")";;
                *query*) XPW_QUERY_ALIASES="$(parse_alias "$XPW_QUERY_ALIASES" "$line")";;
                *reconfigure*) XPW_RECONFIGURE_ALIASES="$(parse_alias "$XPW_RECONFIGURE_ALIASES" "$line")";;
                *rindex*) XPW_RINDEX_ALIASES="$(parse_alias "$XPW_RINDEX_ALIASES" "$line")";;
                *remove*) XPW_REMOVE_ALIASES="$(parse_alias "$XPW_REMOVE_ALIASES" "$line")";;
                *uchroot*) XPW_UCHROOT_ALIASES="$(parse_alias "$XPW_UCHROOT_ALIASES" "$line")";;
                *uhelper*) XPW_UHELPER_ALIASES="$(parse_alias "$XPW_UHELPER_ALIASES" "$line")";;
                *uunshare*) XPW_UUNSHARE_ALIASES="$(parse_alias "$XPW_UUNSHARE_ALIASES" "$line")";;
                *) echo "Unknown command: ${line##* = }: No xbps-${line##* = } exists."
            esac
        fi
    done < "$HOME/.xpwrc"
fi
