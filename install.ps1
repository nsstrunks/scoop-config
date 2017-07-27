#This is an installation and configuration script for Scoop - https://github.com/lukesampson/scoop

#Install Scoop
set-executionpolicy remotesigned -s cu
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Add extras repo
scoop install 7zip git-with-openssh
scoop bucket add extras

#Theming Powershell to look "prettier"
scoop install concfg pshazz
concfg export console-backup.json
confg import solarized.json small

pshazz config editor subl
pshazz get https://raw.githubusercontent.com/nsstrunks/scoop-config/master/pshazz/nessy.json
pshazz use nessy


#Basic tools
scoop install sublime-text oraclejdk cloudfoundry-cli idea sqlitebrowser tomcat busybox curl cacert maven nodejs yarn python
