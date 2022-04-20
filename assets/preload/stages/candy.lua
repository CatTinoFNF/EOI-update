function onCreate()

	makeLuaSprite('candybg', 'EOI/candybg', -400, 1630);
	addLuaSprite('candybg', false);
	makeLuaSprite('candyfront', 'EOI/candymesa', -400, 1625);
	addLuaSprite('candyfront', true);
	--scaleObject('cupbg', 1.2, 1.3);
	makeAnimatedLuaSprite('apple', 'EOI/candy', 700, 2200);
	addAnimationByPrefix('apple', 'bounce','appleboom', 24, true);
	addLuaSprite('apple', false);
end