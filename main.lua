-----------------------------------------------------------------------------------------
--
-- main.lua
--
--
-- april 5, 2019
-- by joshua van der laan
-- to allow the user to know if they get a student discont at a museum.
-----------------------------------------------------------------------------------------

local ageTextField = native.newTextField( display.contentCenterX + 110, display.contentCenterY + 75 , 50, 50 )
ageTextField.id = "age textBox"


local ageText = display.newText( "what is your age?", display.contentCenterX - 50, display.contentCenterY + 75, native.systemFont, 20 )


 local answerTextField = display.newText( "do you get the student dicount:", display.contentCenterX, display.contentCenterY - 50, native.systemFont, 17.5 )


 local statementTextField = display.newText( "", display.contentCenterX, display.contentCenterY - 30, native.systemFont, 20 )

 local dayText = display.newText( "what is the day of the week?", display.contentCenterX- 150, display.contentCenterY + 10, native.systemFont, 20 )
 local dayTextField = native.newTextField(display.contentCenterX + 75, display.contentCenterY + 10 , 200, 50)


local search = display.newImageRect("button.jpg", 180 , 50 )
search.x = display.contentCenterX + 45
search.y = display.contentCenterY + 125
search.id = "calculate button"

local function searchTouch( event )
    
    local day = dayTextField.text 
	local age = ageTextField.text
	age = tonumber(age, a)
    

if ((day == "thursday" or day == "tuesday") or (age >= 12 and age <= 21)) then 
	answerTextField.text = "you get the student discount"

else answerTextField.text = "you have to pay full price"



end

statementTextField.text = "thanks for verifying your age"

end

search:addEventListener( "touch", searchTouch )