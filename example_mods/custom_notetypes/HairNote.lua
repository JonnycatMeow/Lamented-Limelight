function onCreate()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'HairNote' then
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'HAIRNOTE_assets') --Replace with your own graphics
            setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true) --Hitting increases miss count
            setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0) --Doesn't damage when missed (now when hit)
            setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true) --Doesn't add miss if you don't hit
        end
    end
end

             if downscroll then
			 
                    setPropertyFromGroup('unspawnNotes', i, 'flipY', false); -- flip the y for downscroll
                    setPropertyFromGroup('unspawnNotes', i, 'offsetY', -250); -- OFFSET Y FOR DOWNSCROLL
                end

		
    --debugPrint('Script started!')

function onUpdate( elapsed )
    for i = 0, getProperty('unspawnNotes.length')-1 do
        --Check if the note is an Instakill Note

            if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'HairNote' then 
                
                    setPropertyFromGroup('unspawnNotes', i, 'offsetX', -70); -- OFFSET X

                if downscroll then
                    setPropertyFromGroup('unspawnNotes', i, 'offsetY', 0); -- OFFSET Y
                end


            end
    end
end

local stunDuration = 3 --In Seconds

function noteMiss(id, d, noteType, sus) --noteMiss because hitting acts as a miss instead of a hit
    if noteType == 'HairNote' then
        setProperty('boyfriend.stunned', true);
        runTimer('stunned', 3, 1);
    end
end


function onTimerCompleted(tag)
    if tag == 'stunned' then
        setProperty('boyfriend.stunned', false);
    end
end