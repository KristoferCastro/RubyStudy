# Let's play around with Regular Expressions since I think it is
# very useful that can save a lot of time in many tasks involving
# checking and finding strings with a certain pattern
#
# For example, if you have a web server and you know you are
# getting a Denial of Service Attack (DDOS), and you have a log
# of all requests that comes by.  You can go through the log entries
# and find out which ip addresses are sending too many request
# for a certain resource say '/login' resource.
#
# A typical log format for an HTTP Server by Apache can look something like this
#
# 192.168.1.3 - - [18/Feb/2000:13:33:37 -0600] "GET / HTTP/1.0" 200 5073
#
# "%h %l %u %t " the first 4 entries are: ip, logname, name of user, time
# (reference: http://publib.boulder.ibm.com/iseries/v5r2/ic2924/info/rzaie/rzaielogformat.htm)
#
# %h = 192.168.1.3
# %l = - (non existent)
# %u = - (non existent)
# %t = [18/Feb/2000:13:33:37 -0600]
#  
# ' \"%r\" %>s %b
#
# %r = "GET / HTTP/1.0"
# %>s = 200
# %b = 5073   (number of bytes)

# Say we have one of these entires and want to get the time.  Regular expression can help.
# We query saying get any characters between [ and ]

def get_time(log_entry)
  # .*  => sys that it will at least zero any character
  # \[  => says to match the single character '['
  # \]  => says to match the single character ']
  # combined together it says get the substring in the form of '[<any characters in between>]'
  time = /\[.*\]/.match(log_entry) 
  return time
end

# Now what we can do is check all requests coming from the same ip and check if it is
# sending too many request frequently.  Now we need to get the ip address from the string
# Note: we can probably use some split() function based on a delimiter but we'll focus
# on regular expressions for now.


# now we need a function that extracts out valid ip addresses from the entry
# example: 259.139.231

def get_ip(log_entry)
  ip = /[0-255]{0.3}\.[0-255]{0,3}\.[0-255]{0,3}/
  return ip 
end
