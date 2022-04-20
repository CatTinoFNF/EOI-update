function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'bfpony');
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx');
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver');
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd');
end

function onCreatePost()
    setProperty('iconP1.alpha', tonumber(0))
    setProperty('iconP2.alpha', tonumber(0))
	setProperty('healthBar.alpha', tonumber(0))
end