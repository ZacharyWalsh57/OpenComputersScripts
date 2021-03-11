--  +----------------------------------------------------------------+
--  |          LuaOpenComputers_Setup.lua - Version 0.0.1A           |
--  |        Pull down all scripts from the OpenComputers Repo       |
--  |                                                                |
--  |                  Zack Walsh - 00/00/0000                       |
--  |================================================================+
--  |                        Change Log                              |
--  | 03/10/2021 - 0.0.1A                                            |
--  |    First build of this script. Hopefully, this will            |
--  |    be able to pull down a whole repo/tar.gz of the script I    |
--  |    generate over time. Once that's done, this gets deployed    |
--  |    and the rest of the scripts are derived from the repo.      |
--  +----------------------------------------------------------------+

-- HTTP Caller for the Lua language
local internet = require("internet")

-- Commonly Used Vars
local UserName = "ZacharyWalsh57"
local RepoName = 

-- Setup base repo URL
-- URL: https://github.com/<user>/<repo>/archive/<branch>.zip
