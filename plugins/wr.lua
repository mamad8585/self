local function run(msg,matches)
   local m =  string.reverse(matches[2])
local g = string.upper(matches[2])
local f = string.lower(matches[2])
       return 'Your TexT: <code>'..matches[2]..'</code>\n----------------------\n'..g..'\n'..m
end
return {
patterns = {
"^[#!/]([Ww]r) +(.*)$",
"^([Ww]r) +(.*)",
},
run = run
}