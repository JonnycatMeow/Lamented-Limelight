local allowCountdown = false
local disclaimer = 'disclaimer' -- put your image in mods/images, needs to be 1280x720
local confirmed = 0

function onCreate()
 makeLuaSprite('disclaimer', disclaimer, 0, 0)
 screenCenter('disclaimer', 'xy')
 setObjectCamera('disclaimer', 'other')
 
 addLuaSprite('disclaimer', true)
end

function onStartCountdown()
 if not allowCountdown then
  return Function_Stop
 end
 if allowCountdown then
  return Function_Continue
 end
end

function onUpdate()
 if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and confirmed == 0 then
  allowCountdown = true
  startCountdown();
  doTweenAlpha('nomoredisclaimer', 'disclaimer', 0, 1, sineOut);
  playSound('confirmMenu');
  confirmed = 1
 end
 
 if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') and confirmed == 0 then
  allowCountdown = true
  confirmed = 1
  playSound('cancelMenu');
  endSong();
 end
end