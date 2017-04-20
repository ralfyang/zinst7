# zinst7

```
├── back 					- For old backup
│   ├── zinst_conf
│   └── zinst_new_20170413
├── base_package				- Zinst base packages for distribution server
│   ├── server_default_setting-1.3.0.zinst
│   └── zinst_simple_server-1.0.1.zinst
├── build					- Build base dir
│   ├── build.sh
│   ├── main					- main Source for Zinst body
│   └── src					- Source dir for each Function
│       ├── Check_command_install
│       ├── Cront_Command
│       ├── Daemon_Control
│       ├── Daemon_list
│       ├── exit_abnormal
│       ├── Help_Command
│       ├── Help_Detail
│       ├── History
│       ├── hosts_redefine
│       ├── OS_Checker
│       ├── Package_Array_Sort
│       ├── Package_Parse_Check
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
├── install.sh					- INSTALL command for zinst 1st
├── README.md
└── zinst					- zinst command
```


