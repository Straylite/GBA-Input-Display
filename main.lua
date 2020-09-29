buttons = {"A","B","L","R","Up","Right","Down","Left","Start","Select"}
x = 1
y = 135
unlock = false
key_switch = false
background = false

while true do
if unlock == true then gui.pixelText(2,2,"Unlocked") end
pad = joypad.get()
key = input.get()
mouse = input.getmouse()
if key["U"] and key_switch == false then unlock = not unlock key_switch = true end
if key["B"] and key_switch == false then background = not background key_switch = true end
if not key["U"] and not key["B"] then key_switch = false end


if unlock == true then
	if mouse["Left"] then
		x = mouse["X"]
		y = mouse["Y"]
	end
end

if background == true then
gui.drawImage("buttons/Border.png",x-1,y-1)
end

gui.drawImage("buttons/Layout.png",x,y)

for i=1,#buttons do
	if pad[buttons[i]] then gui.drawImage("buttons/"..buttons[i]..".png",x,y) end
end

emu.frameadvance()
end