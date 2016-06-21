after_install install_default_npms

install_default_npms() {
    [ "$STATUS" = "0" ] || return 0;
    [ ! -f "${NDENV_ROOT}/default-npms" ] || return 0;


    while IFS=" " read -r -a line; do
      # Skip empty lines
      [ "${#line[@]}" -gt 0 ] || continue

      # Skip comment lines that begin with `#`.
      [ "${line[0]:0:1}" != "#" ] || continue


      # gem_name="${line[0]}"
      # gem_version="${line[1]}"
      #
      # if [ "$gem_version" == "--pre" ]; then
      #   args=( --pre )
      # elif [ -n "$gem_version" ]; then
      #   args=( --version "$gem_version" )
      # else
      #   args=()
      # fi
      #
      # # Invoke `gem install` in the just-installed Ruby. Point its
      # # stdin to /dev/null or else it'll read from our default-gems
      # # file.
      # RBENV_VERSION="$VERSION_NAME" rbenv-exec gem install "$gem_name" "${args[@]}" < /dev/null || {
      #   echo "rbenv: error installing gem \`$gem_name'"
      # } >&2

    done < "${NDENV_ROOT}/default-npms"
}

