function onCreatePost()

	makeLuaSprite('cupbg', 'EOI/pinkiebg', -400, 1500);
	addLuaSprite('cupbg', false);
	scaleObject('cupbg', 1.2, 1.3);

	makeLuaSprite('SANGRE', 'FX/SANGRE', -400, 1500)
	addLuaSprite('SANGRE')
	setProperty('SANGRE.alpha', 0)
	scaleObject('SANGRE', 1.2, 1.3)

	makeAnimatedLuaSprite('dash', 'EOI/dash', -380, 2300);
	addAnimationByPrefix('dash', 'bounce','dash', 24, true);
	addLuaSprite('dash', true);
	objectPlayAnimation('dash', 'bounce', true);
	makeAnimatedLuaSprite('cierra', 'EOI/cierra', 2000, 1700);
	addAnimationByPrefix('cierra', 'bounce','CIERRA', 24, true);
	addLuaSprite('cierra', true);
	objectPlayAnimation('cierra', 'bounce', true);

	makeLuaSprite('black', 'FX/black', 0, 0)
	setObjectCamera('black', 'camHud')
	scaleObject('black', 8, 5)
	addLuaSprite('black', true)
end

function onStepHit()
	if curStep == 270 then setProperty('black.alpha', 0);	setProperty('healthBar.alpha', 1); setProperty('iconP1.alpha', 1); setProperty('iconP2.alpha', 1) end
	if curStep == 1392 then doTweenAlpha('perown', 'black', 0.4, 1, 'linear'); setProperty('SANGRE.alpha', 1) end
	if curStep == 2319 then doTweenAlpha('blackHi', 'black', 1, 0.9, 'circInOut') end
	if curStep == 2368 or curStep == 2372 or curStep == 2376 or curStep == 2384 then setProperty('black.alpha', 0) end
	if curStep == 2370 or curStep == 2374 or curStep == 2380 then setProperty('black.alpha', 1) end
end