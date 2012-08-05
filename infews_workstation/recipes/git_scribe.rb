#
# Dependencies for Git Scribe: https://github.com/schacon/git-scribe

brew 'asciidoc'
brew 'source-highlight'
brew 'fop'

# This appears to point to a missing file
brew 'https://raw.github.com/infews/homebrew-alt/master/non-free/kindlegen.rb'

# I don't know enough about where the error is, but the Kindlegen binary isn't executable
execute "chmod +x /usr/local/Cellar/kindlegen/2.5/bin/kindlegen"
