# 1) Put Homebrew Ruby (and its gem bin-dir) first on PATH
echo 'export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"' >> ~/.zprofile

# 2) Reload your shell as a login shell so .zprofile is read
exec $SHELL -l

# 3) Verify we’re on the right Ruby
which ruby
ruby -v   # should show 3.4.x from /opt/homebrew/opt/ruby/bin/ruby

# 4) Install Jekyll & Bundler (no sudo)
gem install bundler jekyll

# 5) In your site folder, install deps and serve
cd ~/path/to/yundaqwe.github.io
bundle install
bundle exec jekyll serve

