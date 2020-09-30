buttons = {"A","B","L","R","Up","Right","Down","Left","Start","Select"}
x = 1
y = 136
unlock = false
key_switch = false

while true do
if unlock == true then gui.pixelText(2,2,"Unlocked") end
pad = joypad.get()
key = input.get()
mouse = input.getmouse()
if key["U"] and key_switch == false then unlock = not unlock key_switch = true end
if not key["U"] and not key["B"] then key_switch = false end


if unlock == true then
	if mouse["Left"] then
		x = mouse["X"]
		y = mouse["Y"]
	end
end

gui.drawImage("buttons/Layout.png",x,y)

for i=1,#buttons do
	if pad[buttons[i]] then gui.drawImage("buttons/"..buttons[i]..".png",x,y) end
end

emu.frameadvance()
end