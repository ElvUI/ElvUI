std = "lua51c"
codes = true
ranges = true
quiet = 1

max_line_length = false
max_code_line_length = false
max_string_line_length = false
max_comment_line_length = false

allow_defined = true
allow_defined_top = true

exclude_files = {
	"**/Libraries",
}

ignore = {
	"112", -- Mutating an undefined global variable
	"113", -- Accessing undefined variable
	"142", -- Setting an undefined field of a global variable
	"143", -- Accessing an undefined field of a global variable
	"212", -- Unused argument

	"1/SLASH_.*",			-- Setting/Mutating/Accessing an undefined global variable (Slash commands)
	"113/[A-Z][A-Z0-9_]+",	-- Accessing an undefined global variable (GlobalStrings and Constants 2char+)
	"131/[A-Z][A-Z0-9_]+",	-- Unused implicitly defined global variable (GlobalStrings and Constants 2char+)
	"211/[E|L|V|P|G]",		-- Unused local variable
	"213/i",				-- Unused loop variable
	"432/self",				-- Shadowing an upvalue

	"131/GetMinimapShape",			-- Unused implicitly defined global variable
	"131/RaidMark_HotkeyPressed",	-- Unused implicitly defined global variable
	"131/HideBothChat",				-- Unused implicitly defined global variable
	"131/ElvUIGUIFrame",			-- Unused implicitly defined global variable
}

globals = {
	-- Lua Std
	"assert",
	"bit.arshift",
	"bit.band",
	"bit.bnot",
	"bit.bor",
	"bit.bxor",
	"bit.lshift",
	"bit.rshift",
	"collectgarbage",
	"coroutine.create",
	"coroutine.resume",
	"coroutine.running",
	"coroutine.status",
	"coroutine.wrap",
	"coroutine.yield",
	"error",
	"gcinfo",
	"getfenv",
	"getmetatable",
	"ipairs",
	"loadstring",
	"math.abs",
	"math.acos",
	"math.asin",
	"math.atan",
	"math.atan2",
	"math.ceil",
	"math.cos",
	"math.cosh",
	"math.deg",
	"math.exp",
	"math.floor",
	"math.fmod",
	"math.frexp",
	"math.ldexp",
	"math.log",
	"math.log10",
	"math.max",
	"math.min",
	"math.modf",
	"math.pow",
	"math.rad",
	"math.random",
	"math.sin",
	"math.sinh",
	"math.sqrt",
	"math.tan",
	"math.tanh",
	"newproxy",
	"next",
	"pairs",
	"pcall",
	"print",
	"rawequal",
	"rawget",
	"rawset",
	"select",
	"setfenv",
	"setmetatable",
	"string.byte",
	"string.char",
	"string.dump",
	"string.find",
	"string.format",
	"string.gmatch",
	"string.gsub",
	"string.len",
	"string.lower",
	"string.match",
	"string.rep",
	"string.reverse",
	"string.sub",
	"string.upper",
	"table.concat",
	"table.foreach",
	"table.foreachi",
	"table.getn",
	"table.insert",
	"table.maxn",
	"table.remove",
	"table.sort",
	"tonumber",
	"tostring",
	"type",
	"unpack",
	"xpcall",

	-- WOW Lua
	"abs",
	"acos",
	"asin",
	"atan",
	"atan2",
	"bit.mod",
	"ceil",
	"cos",
	"date",
	"debugbreak",
	"debugdump",
	"debughook",
	"debuginfo",
	"debugload",
	"debuglocals",
	"debugprint",
	"debugprofilestart",
	"debugprofilestop",
	"debugstack",
	"debugtimestamp",
	"deg",
	"difftime",
	"exp",
	"floor",
	"forceinsecure",
	"foreach",
	"foreachi",
	"format",
	"frexp",
	"geterrorhandler",
	"getglobal",
	"getn",
	"getprinthandler",
	"gmatch",
	"gsub",
	"hooksecurefunc",
	"issecure",
	"issecurevariable",
	"ldexp",
	"log",
	"log10",
	"max",
	"message",
	"min",
	"mod",
	"rad",
	"random",
	"rtable.concat",
	"rtable.insert",
	"rtable.ipairs",
	"rtable.maxn",
	"rtable.newtable",
	"rtable.next",
	"rtable.pairs",
	"rtable.remove",
	"rtable.sort",
	"rtable.type",
	"rtable.unpack",
	"rtable.wipe",
	"scrub",
	"securecall",
	"seterrorhandler",
	"setglobal",
	"setprinthandler",
	"sin",
	"sort",
	"sqrt",
	"strbyte",
	"strchar",
	"strconcat",
	"strfind",
	"string.gfind",
	"string.join",
	"string.replace",
	"string.rtgsub",
	"string.split",
	"string.trim",
	"strjoin",
	"strlen",
	"strlenutf8",
	"strlower",
	"strmatch",
	"strrep",
	"strreplace",
	"strrev",
	"strsplit",
	"strsub",
	"strtrim",
	"strupper",
	"tContains",
	"tDeleteItem",
	"table.removemulti",
	"table.setn",
	"table.wipe",
	"tan",
	"time",
	"tinsert",
	"tostringall",
	"tremove",
	"updateContainerFrameAnchors",
	"wipe",
}