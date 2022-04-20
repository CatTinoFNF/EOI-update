local followchars = true
local xx = 940
local zoomLock = false
local zoom = 0.1
local yy = 1250
local xx2 = 1150
local yy2 = 1220
local ofs = 40

function onCreatePost()

	makeLuaSprite('back', 'shed/FONDOSHED2', -720, 400);
	setProperty('back.alpha', 0)
	makeLuaSprite('front', 'shed/FONDOSHED', -720, 400);
	makeAnimatedLuaSprite('bump', 'shed/shedbgcharacters', 100, 630);
	addAnimationByPrefix('bump', 'bounce','cosas moviendose', 24, true);
	addLuaSprite('front', false)
	addLuaSprite('back', false)
	addLuaSprite('bump', false);

	makeAnimatedLuaSprite('polis', 'shed/polis', -720, 1110)
	addAnimationByPrefix('polis', 'idle', 'polices', 24, false)
	setProperty('polis.alpha', 0)
	addLuaSprite('polis')

	addCharacterToList('dedbfshed', 'boyfriend')

end

function onUpdate(elapsed)
    if followchars == true then
		if mustHitSection == false then
		  if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
			triggerEvent('Camera Follow Pos',xx-ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
			triggerEvent('Camera Follow Pos',xx+ofs,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
			triggerEvent('Camera Follow Pos',xx,yy-ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
			triggerEvent('Camera Follow Pos',xx,yy+ofs)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		  if getProperty('dad.animation.curAnim.name') == 'speak' then
			triggerEvent('Camera Follow Pos',xx,yy)
		  end
		else
		  if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
			triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
			triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
			triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
			triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		  end
		  if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
			triggerEvent('Camera Follow Pos',xx2,yy2)
		  end
		end
	else
		triggerEvent('Camera Follow Pos','','')
	end
	if zoomLock then setProperty('camGame.zoom', zoom) end
end

function onStepHit()
	if curStep == 582 then setProperty('polis.alpha', 1); objectPlayAnimation('polis', 'idle'); yy = yy + 200 ; xx = xx - 900; doTweenZoom('bruh', 'camGame', 1.42, 1, 'linear') end
	if curStep == 598 then triggerEvent('Change Character', 0, 'dedbfshed'); setProperty('gf.alpha', 0); setProperty('back.alpha', 1); setProperty('dad.x', getProperty('dad.x') + 400) end
	if curStep == 608 then triggerEvent('Play Animation','speak', 'dad'); yy = yy - 200 ; xx = xx + 900; zoomLock = false ; doTweenZoom('chao', 'camGame', 0.71, 1, 'linear') end
end

function onTweenCompleted(tag)
	if tag == 'bruh' then setProperty('camGame.zoom', 1.42); zoom = 1.42; zoomLock = true end
	if tag == 'chao' then setProperty('camGame.zoom', 0.71); zoom = 0.71; zoomLock = true end
end