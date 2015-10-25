;Test complete AHK script. A concept to show TestComplete can be farther automated and controled using AHK.
;Also showing AHK is conceptually similar to TestComplete by manipulating Windows.

;kingtest.pjs, simply opens notepad.

;control-J to activate script.
^j::
    Run, "C:\Users\qian\Documents\TestComplete 11 Projects\kingtest\kingtest.pjs"
    SetTitleMatchMode 2
    WinWaitActive, TestComplete, , 30
    if ErrorLevel
    {
        MsgBox, "Error: Testcomplete didn't launch"
    }
    else
    {
        Sleep, 10000 ; Current sleep is necessary due to TestComplete window loading process unreliable. Needs better condition to trigger click.
        Click 548, 175 ; Unfortunately Run Test button doesn't have its own object name in AHK. Using relative position.
    }

Return

	
