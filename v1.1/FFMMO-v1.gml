#define script_initlines
//
//  Initializes the collection of lines for display
//
{
  global.maxline = 6;
  for (i=0; i<global.maxline; i+=1)
  {
    global.line[i] = '';
    global.color[i] = c_black;
  }
}
#define script_drawlines
//
//  Draws the collection of lines at the indicated place
//
{
  var xxx,yyy;
  xxx = argument0;
  yyy = argument1;
  draw_set_font(fnt_normal);
  for (i=0; i<global.maxline; i+=1)
  {
    draw_set_color(global.color[i]); 
    draw_text(xxx,yyy,global.line[i]);
    yyy += 20;
  }
}

#define script_addline
//
//  Adds a line to the display
// argument0 = the test, argument1 = the color
//
{
  for (i=0; i<global.maxline-1; i+=1)
  {
    global.line[i] = global.line[i+1];
    global.color[i] = global.color[i+1];
  }
    global.line[global.maxline-1] = argument0;
    global.color[global.maxline-1] = argument1;
}

#define dllinit
global._39dll = argument0;
if(is_real(argument0))global._39dll= "39dll.dll";
//Buffer
global._BufA = external_define(global._39dll, "WriteByte", dll_cdecl, ty_real, 1, ty_real);
global._BufB = external_define(global._39dll, "WriteString", dll_cdecl, ty_real, 2, ty_string, ty_real);
global._BufC = external_define(global._39dll, "WriteShort", dll_cdecl, ty_real, 1, ty_real);
global._BufD = external_define(global._39dll, "WriteInt", dll_cdecl, ty_real, 1, ty_real);
global._BufE = external_define(global._39dll, "WriteFloat", dll_cdecl, ty_real, 1, ty_real);
global._BufF = external_define(global._39dll, "WriteDouble", dll_cdecl, ty_real, 1, ty_real);
global._BufG = external_define(global._39dll, "ReadByte", dll_cdecl, ty_real, 0);
global._BufH = external_define(global._39dll, "ReadString", dll_cdecl, ty_string, 2, ty_real, ty_string);
global._BufI = external_define(global._39dll, "ReadShort", dll_cdecl, ty_real, 0);
global._BufJ = external_define(global._39dll, "ReadInt", dll_cdecl, ty_real, 0);
global._BufK = external_define(global._39dll, "ReadFloat", dll_cdecl, ty_real, 0);
global._BufL = external_define(global._39dll, "ReadDouble", dll_cdecl, ty_real, 0);
global._BufM = external_define(global._39dll, "ClearBuffer", dll_cdecl, ty_real, 0);
global._BufN = external_define(global._39dll, "SetPos", dll_cdecl, ty_real, 1, ty_real);
global._BufO = external_define(global._39dll, "GetPos", dll_cdecl, ty_real, 1, ty_real);
global._BufQ = external_define(global._39dll, "BufferSize", dll_cdecl, ty_real, 0);

global._BufU = external_define(global._39dll, "CreateBuffer", dll_cdecl, ty_real, 0);
global._BufV = external_define(global._39dll, "SetBuffer", dll_cdecl, ty_real, 1, ty_real);
global._BufW = external_define(global._39dll, "ResetBuffer", dll_cdecl, ty_real, 0);
global._BufX = external_define(global._39dll, "DestroyBuffer", dll_cdecl, ty_real, 1, ty_real);
global._BufY = external_define(global._39dll, "WriteuShort", dll_cdecl, ty_real, 1, ty_real);
global._BufZ = external_define(global._39dll, "WriteuInt", dll_cdecl, ty_real, 1, ty_real);
global._BufAA = external_define(global._39dll, "ReaduShort", dll_cdecl, ty_real, 0);
global._BufAB = external_define(global._39dll, "ReaduInt", dll_cdecl, ty_real, 0);
if(argument1)
{
//Sockets
global._SokA = external_define(global._39dll, "TcpConnect", dll_cdecl, ty_real, 3, ty_string, ty_real, ty_real);
global._SokB = external_define(global._39dll, "TcpListen", dll_cdecl, ty_real, 3, ty_real, ty_real, ty_real);
global._SokC = external_define(global._39dll, "TcpAccept", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokD = external_define(global._39dll, "MessageSend", dll_cdecl, ty_real, 3, ty_real, ty_string, ty_real);
global._SokE = external_define(global._39dll, "MessageRecieve", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokF = external_define(global._39dll, "setSync", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokG = external_define(global._39dll, "SetFormat", dll_cdecl, ty_real, 2, ty_real, ty_string);
global._SokH = external_define(global._39dll, "UdpConnect", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokI = external_define(global._39dll, "GetIp", dll_cdecl, ty_string, 1, ty_string);
global._SokJ = external_define(global._39dll, "LastUdpIp", dll_cdecl, ty_string, 0);
global._SokK = external_define(global._39dll, "SockClose", dll_cdecl, ty_real, 1, ty_real);
global._SokL = external_define(global._39dll, "TcpAddress", dll_cdecl, ty_string, 1, ty_real);
global._SokM = external_define(global._39dll, "LastError", dll_cdecl, ty_real, 0);
global._SokN = external_define(global._39dll, "MyHost", dll_cdecl, ty_string, 0);
global._SokO = external_define(global._39dll, "IpCompare", dll_cdecl, ty_real, 2, ty_string, ty_string);
global._SokP = external_define(global._39dll, "SockExit", dll_cdecl, ty_real, 0);
global._SokQ = external_define(global._39dll, "SockStart", dll_cdecl, ty_real, 0);
global._SokR = external_define(global._39dll, "GetMACAddress", dll_cdecl, ty_string, 0);
global._SokS = external_define(global._39dll, "MessagePeek", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokT = external_define(global._39dll, "SetNagleAlgorithm", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._SokU = external_define(global._39dll, "IsSockConnected", dll_cdecl, ty_real, 1, ty_real);
global._SokV = external_define(global._39dll, "SetRawOption", dll_cdecl, ty_real, 5, ty_real, ty_real, ty_real, ty_real, ty_real);
global._SokW = external_define(global._39dll, "GetRawOption", dll_cdecl, ty_real, 4, ty_real, ty_real, ty_real, ty_real);
}
if(argument2)
{
//File functions
global._FilA = external_define(global._39dll, "BinOpen", dll_cdecl, ty_real, 2, ty_string, ty_real);
global._FilB = external_define(global._39dll, "BinClose", dll_cdecl, ty_real, 1, ty_real);
global._FilC = external_define(global._39dll, "BinWrite", dll_cdecl, ty_real, 1, ty_real);
global._FilD = external_define(global._39dll, "BinRead", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._FilE = external_define(global._39dll, "BinGetPos", dll_cdecl, ty_real, 1, ty_real);
global._FilF = external_define(global._39dll, "BinSetPos", dll_cdecl, ty_real, 2, ty_real, ty_real);
global._FilG = external_define(global._39dll, "BinFileSize", dll_cdecl, ty_real, 1, ty_real);

global._UtilA = external_define(global._39dll, "MD5String", dll_cdecl, ty_string, 1, ty_string);
global._UtilB = external_define(global._39dll, "MD5Buffer", dll_cdecl, ty_string, 0);
global._UtilC = external_define(global._39dll, "bufferchecksum", dll_cdecl, ty_real, 0);
global._UtilD = external_define(global._39dll, "StreamEncrypt", dll_cdecl, ty_real, 1, ty_string);
global._UtilE = external_define(global._39dll, "IptoUInt", dll_cdecl, ty_real, 1, ty_string);
global._UtilF = external_define(global._39dll, "UInttoIP", dll_cdecl, ty_string, 1, ty_real);
global._UtilG = external_define(global._39dll, "netconnected", dll_cdecl, ty_real, 0);

}
#define dllfree
external_free(global._39dll);
#define tcpconnect
/*
  creates a socket and connects to a ip and port
  Argument0 = Ip to connect to.
  Argument1 = Port to connect to.
  Argument2 = Blocking(0)/Non-blocking(1)/Non-blocking++(2) mode.
  
  Set argument2 to 2 if you want it to be non-blocking and also not freeze
  the game while it is connecting. Use tcpconnected() to find out when it has
  connected
*/
return external_call(global._SokA, argument0, argument1, argument2);
#define tcplisten
/*
  Creates a listening socket to monitor a certain port for incoming
  connections.
  Argument0 = Port to listen on
  Argument1 = Max amount of people allowed to be in the connected but not
  accepted list
  Argument2 = Blocking(0)/Non-Blocking(1) mode. Affects the tcpaccept script.
  
  returns the id of the socket or a negative error code.
*/
return external_call(global._SokB, argument0, argument1, argument2);
#define tcpaccept
/*
Accepts and incoming connected on a listening socket.
Argument0 = Listening socket.
Argument1 = Blocking/Non-Blocking mode.

returns the id of a newly created read/write socket or a negative error code.
*/
return external_call(global._SokC, argument0, argument1);
#define tcpip
//Returns the ip that the socket is connected to.
//Argument 0 = socket id.
return external_call(global._SokL, argument0);
#define setnagle
/*
Turns on/off the naggle (TCP NODELAY) algorithm.
argument0 = socket id to affect
argument1 = true/false (on/off)
*/
return external_call(global._SokT, argument0, argument1);
#define tcpconnected
/*
argument0 = Socket id to check
Returns true if the tcp socket is connected to a local/remote host.
*/
return external_call(global._SokU, argument0);
#define udpconnect
/*Creates a udp socket and listen on a port for incoming messages.
Argument0 = Port.
Argument1 = Blocking/non-blocking mode.
*/
return external_call(global._SokH, argument0, argument1);
#define sendmessage
/*
  Sends the data in the internal buffer to the selected tcp or udp socket.
  Argument0 = Socket to send to.
  [Argument1] = Ip to send to (for udp sockets)
  [Argument2] = Port to send to (for udp socket)
  
  Returns the amount of bytes sent + the bytes used to seperate the messages
  
*/
return external_call(global._SokD, argument0, argument1, argument2);
#define receivemessage
/*
Receives data from the selected tcp or udp socket and copies to the 
internal buffer.
Argument0 = Socket to recieve from.
[Argument1] = Amount of bytes to receive. Optional. Overrides the format
mode if used.

returns the amount of bytes recieved
*/
return external_call(global._SokE, argument0, argument1);
#define peekmessage
/*
Copies any data recieved on a specified socket to the internal buffer but
does not remove it from the recv buffer.
Argument0 = TCP or UDP socket to recieve from
[Argument1] = Bytes to receive. Optional (otherwise receives as much as
possible)
Returns amount of bytes recieved.
*/
return external_call(global._SokS, argument0, argument1);
#define setformat
/*
When sending messages over a tcp socket the messages need to be seperated.
The dll provides two methods of seperation. 

Method 0: Binary mode. Setting this mode makes every tcp message have a 2 byte
integer attached at the front which represents the amount of data in that 
message. This is the default method and is reccomended in online games.

Method 1: Text mode. Setting this mode makes every tcp message have a delimeter
added at the end which is used to identify the end of the message. This is
reccomended for text based protocols like irc.

Method 2: No formatting. Only the data in the internal buffer is sent and
no seperation methods are included. Reccomended with messagepeek. 
Argument0 = Method number.
[Argument1] = seperation string when using method 1.

MAKE SURE THE CORRECT FORMAT MODE IS SET WHEN RECIEVING A MESSAGE THAT IS IN A
SPECIFIC FORMAT.
returns argument0
*/
return external_call(global._SokG, argument0, argument1);
#define lastip
/*
Returns the ip of the person who sent the last udp message to you.
It also can return the ip of a person who you just accepted with tcpaccept.
*/return external_call(global._SokJ);
#define setsync
/*
Changes the blocking/non-blocking mode of a socket.

Argument0 = Socket to change.
Argument1 = Mode to set to. 0 = Blocking. 1 = Non-blocking.
*/
return external_call(global._SokF, argument0, argument1);
#define closesocket
//Disconnects and frees the selected socket.
return external_call(global._SokK, argument0);
#define socklasterror
//Returns the error code for the last socket related error.
return external_call(global._SokM);
#define myhost
//Returns your host name
return external_call(global._SokN);
#define compareip
/*
This script compares an ip to a masked ip. Will return true of they match.
e.g 127.0.0.1 matches 127.0.0.*
e.g 127.1.0.1 does not match 127.0.0.*
Useful when banning hackers who have a dynamic ip.
Argument0 = Ip
Argument1 = Masked ip.
*/
return external_call(global._SokO, argument1, argument0);
#define sockexit
//Call this when you want to free winsock. (The dll automatically does this
//when you free the dll)
return external_call(global._SokP);
#define sockstart
//Call this when you want to start winsock only after you free'd it
return external_call(global._SokQ);
#define hostip
/*
  Gets the ip of the specified host name.
  Argument0 = host name.
  
  returns the ip address.
*/return external_call(global._SokI, argument0);
#define setsockopt
/*
  Sets a option on a socket
  argument0 = socket
  argument1 = level
  argument2 = option
  argument3 = value
  argument4 = size of the data type used for value
  For advanced users only! Read the msdn.
*/
return external_call(global._SokV, argument0, argument1, argument2, argument3, argument4);
#define getsockopt
/*
  Gets a option value on a socket
  argument0 = socket
  argument1 = level
  argument2 = option
  argument3 = size of the data type used for the return value
  Returns the value of the option
  For advanced users only! Read the msdn.
*/
return external_call(global._SokW, argument0, argument1, argument2, argument3);
#define writebyte
//Write 1 byte. The value can be between 0 and 255
//Argument0 = value;
return external_call(global._BufA, argument0);
#define writestring
/*
Writes a sequence of characters to the buffer.
Argument0 = String to write.
[Argument1] = True/false. True to write string size for later reading
Returns the length of the string. + 2 if argument1==true.
*/
return external_call(global._BufB, argument0, argument1);
#define writeshort
/*
Writes a 2 byte integer to the buffer. the value can be between
-32768 and +32767
Argument0 = value
*/
return external_call(global._BufC, argument0);
#define writeushort
/*
Writes a 2 byte UNSIGNED integer to the buffer. the value can be between
0 and +65536
Argument0 = value
*/
return external_call(global._BufY, argument0);
#define writeint
/*
Writes a 4 byte integer to the internal buffer. The value can be between
-2147483648 and +2147483647
*/
return external_call(global._BufD, argument0);
#define writeuint
/*
Writes a 4 byte UNSIGNED integer to the internal buffer. The value can be between
0 and +4294967296
*/
return external_call(global._BufD, argument0);
#define writefloat
/*
Writes a 4 byte real number (number that can contain a decimal place).
Argument0 = Value;
*/
return external_call(global._BufE, argument0);
#define writedouble
/*
Same as writefloat but the number can be much larger.
Argument0 = value.
*/
return external_call(global._BufF, argument0);
#define readbyte
//Returns a byte from the buffer.
return external_call(global._BufG);
#define readstring
/*Returns a string from the buffer.
Argument0 = amount of characters to read.
[Argument1] = Seperator.

If Argument0 is 0 bytes then it will return a string string based on its size.
If Argument0 is 0 bytes a seperator is used then it will return a string that
is seperated by the seperator string.
*/
return external_call(global._BufH, argument0, argument1);
#define readshort
//Returns a short int from the buffer.
return external_call(global._BufI);
#define readushort
//Returns a unsigned short int from the buffer.
return external_call(global._BufAA);
#define readint
//Returns a int from the buffer.
return external_call(global._BufJ);
#define readuint
//Returns a unsigned int from the buffer.
return external_call(global._BufAB);
#define readfloat
//Returns a float from the buffer.
return external_call(global._BufK);
#define readdouble
//Returns a double from the buffer.
return external_call(global._BufL);
#define readbit
/*
  Reads the bit at a certain position in a number
  argument0 = number
  argument1 = bit position (0-7)
  returns the bit value (true/false)
*/
return (argument0 & power(2, argument1))>0;
#define buildbyte
/*
  returns a byte based on true/false arguments
  argument0-argument7 = bit values
*/
return argument0*128 + argument1*64 + argument2*32 + argument3*16 + argument4*8 + argument5*4 + argument6*2 + argument7*1; 
#define getpos
//Returns the read or write pos
//Argument0 = read/write. 0(false) = write pos. 1(true) = read pos
return external_call(global._BufO, argument0);
#define clearbuffer
return external_call(global._BufM);
#define buffsize
/*
  Returns the amount of bytes in the internal buffer.
*/
return external_call(global._BufQ);
#define setpos
/*
  Sets the read/write pos in the internal buffer.
  Argument0 = pos.
*/
return external_call(global._BufN, argument0);
#define bytesleft
//Returns how much bytes are left to read. Buffsize-Buffreadpos.
return external_call(global._BufQ) - external_call(global._BufO, true);
#define createbuffer
/*
Creates a new buffer and returns the buffers ID
note: ID's are actually the address of the buffer in memory so you
can access the data using external dll's by passing on the id.
*/
return external_call(global._BufU);
#define resetbuffer_target
/*
Reset the target buffer back to the original buffer created by the dll
returns: id of the initial buffer
*/
return external_call(global._BufW);
#define setbuffer
/*
argument0 = Buffer Id
Sets the current buffer to this buffer ID. All buffer calls will be made to
this buffer
*/
return external_call(global._BufV, argument0);
#define freebuffer
/*
argument0 = buffer id
Frees a buffer and all data in it from memory.
*/
return external_call(global._BufX, argument0);
#define md5string
/*
  returns a md5 hash of argument0
  argument0 = string
*/
return external_call(global._UtilA, argument0);
#define md5buffer
/*
  returns the MD5 hash of the data inside the buffer
*/
return external_call(global._UtilB);
#define bufferencrypt
/*
  Encrypts the buffer with the RC4 encryption algorithm
  Argument0 = (string) password.
*/
return external_call(global._UtilD, argument0);
#define bufferdecrypt
/*
  same as bufferencrypt but used to prevent confusion on how to decrypt.
  Argument0 = (string) password
*/
return external_call(global._UtilD, argument0);
#define fileopen
/*
  Opens or creates a file for reading or writing.
  Argument0 = Filename.
  Argument1 = mode. 0 = reading, 1 = writing, 2 = both reading and writing
  Returns a file id.   
*/
return external_call(global._FilA, argument0, argument1);
#define filesize
/*
  argument0 = file id
  Returns the size of the file in bytes.
*/

return external_call(global._FilG, argument0);
#define filesetpos
/*
  Sets the read/write pos in the open file. 
  argument0 = file id
  Argument1 = position to set to.
*/

return external_call(global._FilF, argument0, argument1);
#define filepos
/*
  argument0 = file id
  Returns the read/write pos in the open file.
*/
return external_call(global._FilE, argument0);
#define fileread
/*
  Reads bytes from the file and copies to the internal buffer (starting at the
  write position)
  Argument0 = file id.
  Argument1 = Number of bytes to read.
*/
return external_call(global._FilD, argument0, argument1);
#define filewrite
/*
  Writes the data in the internal buffer into the open file.
  argument0 = file id
*/

return external_call(global._FilC, argument0);
#define fileclose
/*
  Closes a open file
  argument0 = file id
*/
return external_call(global._FilB, argument0);
#define alder32
/*
  This function creates checksum value of the data inside the buffer.
  This can be used for data verification.
  note: Checksums are similar to MD5 but faster and less accurate. It also
  returns a number not a string. Uses adler-32 checksum algorithm
*/
return external_call(global._UtilC);
#define iptouint
/*
  Converts a ip string (ie 202.13.23.1) to a number.
  The number is the right size to be written as a unsigned int
  in a buffer.
  argument0 = ip address
  returns: number
*/
return external_call(global._UtilE, argument0);
#define getmacaddress
/*
  returns the computers local MAC address. Do not just rely on this for player banning and the 
  mac address can easily be spoofed.
*/
return external_call(global._SokR);
#define uinttoip
/*
  Converts a number to a ip address.
  argument0 = number (integer)
  returns: ip address (string)
*/
return external_call(global._UtilF, argument0);
#define netconnected
/*
  checks if the local computer is connected to the internet
  returns true if it is...
*/
return external_call(global._UtilG);
