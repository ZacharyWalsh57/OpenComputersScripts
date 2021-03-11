--  +----------------------------------------------------------------+
--  |              LUA Image Puller - 0.0.4 - ALPHA                  |
--  |    Pull down an image from a URL and save it as a local file   |
--  |    This will show images on a OC/CC display soon.              |
--  |                                                                |
--  |                 Zack Walsh - 03/09/2021                        |
--  |================================================================+
--  |                        Change Log                              |
--  | 03/09/2021 - 0.0.1A                                            |
--  |    HTTP Pulling and saving to local file.                      |
--  |                                                                |
--  | 03/09/2021 - 0.0.2A                                            |
--  |    Showing image on terminal output now.                       |
--  |                                                                |
--  | 03/09/2021 - 0.0.3A                                            |
--  |    Changed to use the Internet and Inspect Libs now instead    |
--  |    of the original use of the socket lib.                      |
--  |                                                                |
--  | 03/09/2021 - 0.0.4A                                            |
--  |    Changed to use internet lib as internet.open and read it    |
--  |    from there.                                                 |
--  +----------------------------------------------------------------+

-- HTTP Caller for the Lua language
local internet = require("internet")

-- Get the image from the Google URL. Store the contents and the output of the image download.
local ImageURL = "https://www.google.com/url?sa=i&url=https%3A%2F%2Fdrmarbys.com%2Fsecret-menu%2Fthe-meat-mountain-sandwich%2F&psig=AOvVaw1Tuocczj6v5X80MdcfZ0J6&ust=1615406681112000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLDfjv2ApO8CFQAAAAAdAAAAABAD"
local ImageRequest = internet.open(ImageURL, 80)

-- Store response values here
local ImageData = ImageRequest:read(30)
print "DOWNLOADED FILE OK. TRYING TO SAVE IT NOW"

-- Since we didnt error code out, open the new file as a binary output.
-- Basic Steps
--  1) Open a new file item named 'MeatMountain.jpg' as a binary file.
--  2) Write the contents of ImageBytes (Downloaded bytes from above).
--  3) Close out the file stream and allow the image to be saved.

local ImageName = "MeatMountain.jpg"
local FileContents = assert(io.open(ImageName, 'wb'))
print "MADE MEATMOUNTAIN.JPG OK"

FileContents:write(ImageData)                                
FileContents:close()                                          
print "SAVED STREAM OF BYTES TO FILE OK" 

-- Make image pop up on the monitor now.
--  1) Store the monitor to show this on.
--  2) Store the image we saved in a variable.
--  3) Store the old terminal and redirect its output.
--  4) Draw the image on the output window.

print "TRYING TO SHOW MEAT MOUNTAIN.JPG ON A MONITOR NOW..."
local MonitorItem = peripheral.find("monitor")
local ImageToShow = paintutils.loadImage(ImageName)
local TerminalShell = term.redirect(MonitorItem)
paintutils.drawImage(ImageToShow, 1, 1)