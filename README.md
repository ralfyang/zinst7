# zinst7
## Manual
  * https://github.com/goody80/Ralf_Dev/blob/master/README.md

## Install
  * We have 2 way of install
    * 1st way is ___client only mode___ via github reposityr as below
      * `curl -sL bit.ly/zinst-install |bash`
    * 2nd way is the ___private server & client mode___ via local install as below
      * `git clone https://github.com/goody80/zinst7.git; cd zinst7; ./install.sh`

## Directorys & Files
```
├── back 					- For old backup
│   ├── zinst_conf
│   └── zinst_new_20170413
├── base_package				- Zinst base packages for distribution server
│   ├── server_default_setting-1.3.2.zinst
│   └── zinst_simple_server-1.0.4.zinst
├── build					- Build base dir
│   ├── build.sh
│   ├── conf     - Base configuration of zinst
│   │   └── zinst.conf
│   ├── main					- main Source for Zinst body
│   └── src      - Source dir for each Function
│       ├── Check_command_install
│       ├── Cront_Command
│       ├── Daemon_Control
│       ├── Daemon_list
│       ├── exit_abnormal
│       ├── Help_Command
│       ├── Help_Detail
│       ├── History
│       ├── hosts_redefine
│       ├── Log_History_dir
│       ├── OS_Checker
│       ├── Package_Array_Sort
│       ├── Package_Parse_Check
│       ├── Parser_engine
│       ├── Pass_Checker
│       ├── Pkg_Find
│       ├── Pkg_Getset
│       ├── Pkg_Install
│       ├── Pkg_List
│       ├── Pkg_Remove
│       ├── Pkg_Restore
│       ├── Pkg_Set
│       ├── Pkg_Sync
│       ├── Pkg_Track
│       ├── PrintCheck
│       ├── Requires_Pkg_install
│       ├── Save_Restore_file
│       ├── Select_OS
│       ├── System_Controller_checker
│       ├── version_redefine
│       ├── Zinst_SelfConfig
│       └── Zinst_Selfupdate
├── dist					- Dir for Zinst package server
│   └── rhel7					- For RHEL 7 version supports
│       ├── git-0.0.1.zinst			- Git package for internal use
│       ├── package_tracker-1.0.6.zinst		- Zinst package tracking tool
│       ├── server_default_setting-1.3.0.zinst	- Server default base setting
│       ├── sshpass-1.0.5.zinst			- sshpass package via zinst
│       ├── sudo_account_policy-1.0.6.zinst	- Account policy pacakge
│       ├── tree-0.0.1.zinst			- tree pacakge by zinst
│       ├── zinst_making_tool-1.2.8.zinst	- zinst package maker
│       └── zinst_simple_server-1.0.1.zinst	- zinst distribution server
├── install.sh					          - INSTALL command for zinst 1st
├── install_with_gitrepo.sh  - INSTALL command for zinst git-repo(for test install)
├── instruction              - Package set for service stack
│   └── ldap_lam_stack       - LDAP Account Manager with LDAP install stack
├── README.md
└── zinst					- zinst command
```


