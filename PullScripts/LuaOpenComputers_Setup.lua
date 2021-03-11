--  +----------------------------------------------------------------+
--  |          LuaOpenComputers_Setup.lua - Version 0.0.2A           |
--  |        Pull down all scripts from the OpenComputers Repo       |
--  |                                                                |
--  |                  Zack Walsh - 03/10/2021                       |
--  |================================================================+
--  |                        Change Log                              |
--  | 03/10/2021 - 0.0.1A                                            |
--  |    First build of this script. Hopefully, this will            |
--  |    be able to pull down a whole repo/tar.gz of the script I    |
--  |    generate over time. Once that's done, this gets deployed    |
--  |    and the rest of the scripts are derived from the repo.      |
--  |                                                                |
--  | 03/11/2021 - 0.0.2A                                            |
--  |    Included Tar call to unzip/decompress the gz archive        |
--  |    pulled from the wget command to git. Output file goes       |
--  |    into the dir /home/OEScritping/OEScripting-main             |
--  +----------------------------------------------------------------+

-- #region Configuration
-- Git Configuration
local UserName = "ZacharyWalsh57"
local RepoName = "OpenComputersScripts"
local RepoBranch = "main"
local RepoURL = "https://github.com/"..UserName.."/"..RepoName.."/archive/"..RepoBranch..".tar.gz"

-- Output File locations for downloads
local DownloadDir = "/home/OCScripting/"
local OutputZip = DownloadDir.."OCScripting-"..RepoBranch..".tar.gz"
-- #endregion

-- Download the repo now.
require("/bin/wget")
wget("-f".." "..RepoURL.." "..OutputZip)
print ("1) REPO CLONED OK!")

-- Decompress tar.gz
require("/bin/tar")
tar(OutputZip)
print ("2) REPO WAS DECOMPRESSED OK!")
print ("   REPO LOCATION: "..DownloadDir.."OCScripting-"..RepoBranch..)