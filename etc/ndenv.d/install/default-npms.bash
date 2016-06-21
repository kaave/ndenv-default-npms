after_install install_default_npms

install_default_npms() {
    # check latest node or iojs install status
    [ "$STATUS" = "0" ] || return 0;
    # check setting file
    [ -f "${NDENV_ROOT}/default-npms" ] || return 0;

    echo "ndenv-default-npms install start";
    while IFS= read -ra package_name; do
        # check empty line
        [ "${#package_name[@]}" -gt 0 ] || continue
        # check comment line
        [ "${package_name[0]:0:1}" != "#" ] || continue

        echo "install start: $package_name";

        NDENV_VERSION="$VERSION_NAME" ndenv exec npm i -g "$package_name" < /dev/null || {
          echo "ndenv: error installing npm \`$package_name'"
        } >&2

    done < "${NDENV_ROOT}/default-npms"
    echo "ndenv-default-npms install finish";
}
