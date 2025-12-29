function __git_cd_root
  command git rev-parse --show-toplevel 2>/dev/null
end

function __git_cd_dirs
  set -l root (__git_cd_root)
  if test -z "$root"
    return
  end

  command find "$root" -mindepth 1 -type d -name .git -prune -o -type d -print0 2>/dev/null | string split0 | string replace -- "$root/" "" | string escape --
end

complete -c git-cd -f -a "(__git_cd_dirs)" -d "a directory under the Git repository root"
complete -c git-cd -s h -l help -d "Show help"
