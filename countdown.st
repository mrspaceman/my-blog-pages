"Create a new class"
Object subclass: #DateCountdownUI
    instanceVariableNames: 'window currentDateLabel countdownLabel targetDate'
    classVariableNames: ''
    package: 'DateCountdown'

"Initialize method"
DateCountdownUI >> initialize
    super initialize.
    targetDate := Date year: 2028 month: 08 day: 27.  "Example: Christmas 2025"
    self buildWindow.
    self startUpdateProcess

"Build the window UI"
DateCountdownUI >> buildWindow
    window := StandardWindow new.
    window title: 'Date Countdown'.
    
    currentDateLabel := LabelMorph new.
    countdownLabel := LabelMorph new.
    
    window addMorph: (
        BoxedMorph new
            layoutPolicy: TableLayout new;
            listDirection: #topToBottom;
            cellPositioning: #center;
            addMorph: currentDateLabel;
            addMorph: countdownLabel;
            yourself
    ).
    
    window openCentered

"Update the display"
DateCountdownUI >> updateDisplay
    | today weeksLeft |
    today := Date today.
    weeksLeft := (targetDate subtractDate: today) weeks rounded.
    
    currentDateLabel contents: 'Today: ', today ddmmmyyyy.
    countdownLabel contents: weeksLeft asString, ' weeks until ', targetDate mmddyyyy

"Start the update process"
DateCountdownUI >> startUpdateProcess
    [
        [ true ] whileTrue: [
            self updateDisplay.
            1 second wait
        ]
    ] forkAt: Processor userBackgroundPriority

"Class side method to open the window"
DateCountdownUI class >> open
    ^self new
