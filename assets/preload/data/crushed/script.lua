function onEndSong()
	if not allowEnd and isStoryMode then
		setProperty('healthBar.alpha', tonumber(0))
    		setProperty('iconP1.alpha', tonumber(0))
    		setProperty('iconP2.alpha', tonumber(0))
		setProperty('health', 1) -- prevents any kind of health gain or loss
		setProperty('inCutscene', true);
		startDialogue('post-dialogue', 'breakfast');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end