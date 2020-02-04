#fish Copyright © 2005-2009 Axel Liljencrantz. fish is released under the GNU General Public License, version 2.


source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_show_opt.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_ranges.fish
source "$COMPLETION_HELPER_FUNCTIONS_DIR"/function_git_append_letters_nosep.fish

complete -f -c gl -l pretty -a '(__fish_git_show_opt pretty)'
complete -c gl -n 'not contains -- -- (commandline -op)' -a '(__fish_git_ranges)'
complete -c gl -l follow -d 'Continue listing file history beyond renames'
complete -c gl -l no-decorate -d 'Don\'t print ref names'
complete -f -c gl -l decorate -a 'short\tHide\ prefixes full\tShow\ full\ ref\ names auto\tHide\ prefixes\ if\ printed\ to\ terminal no\tDon\\\'t\ display\ ref' -d 'Print out ref names'
complete -c gl -l source -d 'Print ref name by which each commit was reached'
complete -c gl -l use-mailmap
complete -c gl -l full-diff
complete -c gl -l log-size
complete -x -c gl -s L
complete -x -c gl -s n -l max-count -d 'Limit the number of commits before starting to show the commit output'
complete -x -c gl -l skip -d 'Skip given number of commits'
complete -x -c gl -l since -d 'Show commits more recent than specified date'
complete -x -c gl -l after -d 'Show commits more recent than specified date'
complete -x -c gl -l until -d 'Show commits older than specified date'
complete -x -c gl -l before -d 'Show commits older than specified date'
complete -x -c gl -l author -d 'Limit commits from given author'
complete -x -c gl -l committer -d 'Limit commits from given committer'
complete -x -c gl -l grep-reflog -d 'Limit commits to ones with reflog entries matching given pattern'
complete -x -c gl -l grep -d 'Limit commits with message that match given pattern'
complete -c gl -l all-match -d 'Limit commits to ones that match all given --grep'
complete -c gl -l invert-grep -d 'Limit commits to ones with message that don\'t match --grep'
complete -c gl -l regexp-ignore-case -s i -d 'Case insensitive match'
complete -c gl -l basic-regexp -d 'Patterns are basic regular expressions (default)'
complete -c gl -l extended-regexp -s E -d 'Patterns are extended regular expressions'
complete -c gl -l fixed-strings -s F -d 'Patterns are fixed strings'
complete -c gl -l perl-regexp -d 'Patterns are Perl-compatible regular expressions'
complete -c gl -l remove-empty -d 'Stop when given path disappears from tree'
complete -c gl -l merges -d 'Print only merge commits'
complete -c gl -l no-merges -d 'Don\'t print commits with more than one parent'
complete -x -c gl -l min-parents -d 'Show only commit with at least the given number of parents'
complete -x -c gl -l max-parents -d 'Show only commit with at most the given number of parents'
complete -c gl -l no-min-parents -d 'Show only commit without a mimimum number of parents'
complete -c gl -l no-max-parents -d 'Show only commit without a maximum number of parents'
complete -c gl -l first-parent -d 'Follow only the first parent commit upon seeing a merge commit'
complete -c gl -l not -d 'Reverse meaning of ^ prefix'
complete -c gl -l all -d 'Pretend as if all refs in refs/ are listed on the command line as <commit>'
complete -f -c gl -l branches -d 'Pretend as if all refs are in refs/heads are listed on the command line as <commit>'
complete -f -c gl -l tags -d 'Pretend as if all refs are in ref/tags are listed on the command line as <commit>'
complete -f -c gl -l remotes -d 'Pretend as if all refs in refs/remotes  are listed on the command line as <commit>'
complete -x -c gl -l glob -d 'Pretend as if all refs matching shell glob are listed on the command line as <commit>'
complete -x -c gl -l exclude -d 'Do not include refs matching given glob pattern'
complete -c gl -l reflog -d 'Pretend as if all objcets mentioned by reflogs are listed on the command line as <commit>'
complete -c gl -l ingnore-missing -d 'Ignore invalid object names'
complete -c gl -l bisect
complete -c gl -l stdin -d 'Read commits from stdin'
complete -c gl -l cherry-mark -d 'Mark equivalent commits with = and inequivalent with +'
complete -c gl -l cherry-pick -d 'Omit equivalent commits'
complete -c gl -l left-only
complete -c gl -l rigth-only
complete -c gl -l cherry
complete -c gl -l walk-reflogs -s g
complete -c gl -l merge
complete -c gl -l boundary
complete -c gl -l simplify-by-decoration
complete -c gl -l full-history
complete -c gl -l dense
complete -c gl -l sparse
complete -c gl -l simplify-merges
complete -c gl -l ancestry-path
complete -c gl -l date-order
complete -c gl -l author-date-order
complete -c gl -l topo-order
complete -c gl -l reverse
complete -f -c gl -l no-walk -a "sorted unsorted"
complete -c gl -l do-walk
complete -c gl -l format
complete -c gl -l abbrev-commit
complete -c gl -l no-abbrev-commit
complete -c gl -l oneline
complete -x -c gl -l encoding -a '(__fish_print_encodings)'
complete -f -c gl -l expand-tabs
complete -c gl -l no-expand-tabs
complete -f -c gl -l notes
complete -c gl -l no-notes
complete -f -c gl -l show-notes
complete -c gl -l standard-notes
complete -c gl -l no-standard-notes
complete -c gl -l show-signature
complete -c gl -l relative-date

complete -x -c gl -l date -a '
  relative
  local
  iso
  iso-local
  iso8601
  iso8601-local
  iso-strict
  iso-strict-local
  iso8601-strict
  iso8601-strict-local
  rfc-local
  rfc2822-local
  short
  short-local
  raw
  unix
  format:
  default
  default-local
'

complete -c gl -l parents
complete -c gl -l children
complete -c gl -l left-right
complete -c gl -l graph
complete -f -c gl -l show-linear-break
complete -c gl -s c
complete -c gl -l cc
complete -c gl -s m
complete -c gl -s r
complete -c gl -s t
complete -c gl -l patch -s p
complete -c gl -s u
complete -c gl -l no-patch -s s
complete -x -c gl -l unified -s U
complete -c gl -l raw
complete -c gl -l patch-with-raw
complete -c gl -l indent-heuristic
complete -c gl -l no-indent-heuristic
complete -c gl -l compaction-heuristic
complete -c gl -l no-compaction-heuristic
complete -c gl -l minimal
complete -c gl -l patience
complete -c gl -l histogram
complete -f -x -c gl -l stat
complete -c gl -l numstat
complete -c gl -l shortstat
complete -c gl -l summary
complete -c gl -l patch-with-stat
complete -c gl -s z
complete -c gl -l name-only
complete -c gl -l name-status
complete -f -c gl -l color -a 'always never auto'
complete -c gl -l no-color
complete -f -c git -l word-diff -a '
  color
  plain
  porcelain
  none
'
complete -f -c gl -l color-words
complete -c gl -l no-renames
complete -c gl -l check
complete -c gl -l full-index
complete -c gl -l binary
complete -f -c gl -l abbrev
complete -f -c gl -l break-rewrittes -s B
complete -f -c gl -l find-renames -s M
complete -f -c gl -l find-copies -s C
complete -c gl -l find-copies-harder
complete -c gl -l irreversible-delete -s D
complete -f -c gl -s l
complete -x -c gl -l diff-filter -a '(__fish__git_append_letters_nosep a\tExclude\ added c\tExclude\ copied d\tExclude\ deleted m\tExclude\ modified r\tExclude\ renamed t\tExclude\ type\ changed u\tExclude\ unmerged x\tExclude\ unknown b\tExclude\ broken A\tAdded C\tCopied D\tDeleted M\tModified R\tRenamed T\tType\ Changed U\tUnmerged X\tUnknown B\tBroken)'
complete -x -c gl -s S
complete -x -c gl -s G
complete -c gl -l pickaxe-all
complete -f -c gl -s O
complete -c gl -s R
complete -c gl -l relative
complete -c gl -l text -s a
complete -c gl -l ignore-space-at-eol
complete -c gl -l ignore-space-change -s b
complete -c gl -l ignore-all-space -s w
complete -c gl -l ignore-blank-lines
complete -x -c gl -l inter-hunk-context
complete -c gl -l function-context -s W
complete -c gl -l ext-diff
complete -c gl -l no-ext-diff
complete -c gl -l textconv
complete -c gl -l no-textconv
complete -x -c gl -l src-prefix
complete -x -c gl -l dst-prefix
complete -c gl -l no-prefix
complete -x -c gl -l line-prefix
complete -c gl -l ita-invisible-in-index
