# Capybara + Cucumber web automation  workshop
Web Automation project using Ruby+Cucumber+Capybara frameworks
## Getting Started
1) Install any IDE
2) Install Ruby 2.1.5 OR use the VM provided
    * `sudo apt update`
    * `sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev`
    * `curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -`
    * `echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc`
    * `echo 'eval "$(rbenv init -)"' >> ~/.bashrc`
    * `source ~/.bashrc`
    * `rbenv install 2.5.1`
    * `rbenv global 2.5.1`
3) Download this clone/project
4) `cd /path-to-project`
5) `gem install bundler`
6) `bundle install`

## Running
### Command line

####To run tests:
In the project's directory run command:
```
cucumber
```