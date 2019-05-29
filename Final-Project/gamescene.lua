local composer = require( "composer" )
 
local gamescene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- scene event functions
-- -----------------------------------------------------------------------------------
 

-- create()
function gamescene:create( event )
 
    local scene3Group = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
function gamescene:show( event )
 
    local scene3Group = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

        --hides the status bar
        display.setStatusBar(display.HiddenStatusBar)

        local text1 = display.newText( "game" , 160, 30, "Ariel", 25 )
        text1:setFillColor(  255/255, 0/255, 0/255 )
        scene3Group:insert(text1)

    elseif ( phase == "did" ) then


    end
end
 
 

 
 
-- -----------------------------------------------------------------------------------
-- scene event function listeners
-- -----------------------------------------------------------------------------------
gamescene:addEventListener( "create", gamescene )
gamescene:addEventListener( "show", gamescene )
-- -----------------------------------------------------------------------------------
 
return gamescene