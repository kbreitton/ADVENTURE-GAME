#1/bin/bash

cd manly-cove

show_wrong_input() { echo "NO DON'T DO THAT STOP"; }

show_start_text() {
  echo ""
  echo "YOU ARE AN ETHNICALLY AMBIGUOUS LITTLE HIGH SCHOOL BOY AND TONIGHT IS THE NIGHT OF YOUR LIIIIIIIIFE" 
  echo "TODAY IS THE DAY YOU ASK SHERRY TO THE PROM"
  echo "TODAY IS THE DAY YOU BECOME A MAN"
  echo ""
  sleep 5
  echo "AIGHT REAL TALK SO TO PLAY THIS GAME EVERYTHING YOU TYPE SHOULD BE IN ALL LOWER CASE."
  echo "TYPE 'where' TO SEE WHERE YOU CAN GO"
  echo "TYPE 'go-to <location>' TO GO SOMEWHERE"
  sleep 2
  echo "SO YEAH IT'S MORNING AND FIRST YOU SHOULD LIKE, BRUSH YOU TEETH OR SOMETHING, MAN."
  echo ""
  echo "YOU ARE CURRENTLY IN $(basename "$PWD")" 
}

go_to_bathroom() {
  while true; do
    read input
    case $input in
      where) ls 
             echo "YOU ARE CURRENTLY IN $(basename "$PWD")" 
             echo "" ;;
      "go-to bathroom") cd bathroom 
                        echo "YOU ARE IN THE BATHROOM. YOU KNOW WHAT YOU MUST DO."
                        break ;;
      *) show_wrong_input ;;
    esac
  done
}

brush_teeth() {
  while true; do
    read input
    case $input in
      "brush teeth") echo "SO FRESH." 
                   cd ..
                   echo ""
                   echo "AIGHT YOU'RE BACK IN YOUR ROOM NOW"
                   echo "TIME TO GO TO SCHOOL (BREAKFAST IS FOR LOSERS, OR SOMETHING)"
                   break ;;
      where) ls 
             echo "YOU ARE CURRENTLY IN $(basename "$PWD")" 
             echo "" ;;
      *) show_wrong_input ;;
    esac
  done
}

go_to_school() {
  while true; do
    read input
    case $input in
      where) ls 
             echo "YOU ARE CURRENTLY IN $(basename "$PWD")" 
             echo "" ;;
      "go-to school") cd school 
                      echo "YOU ARE NOW AT SCHOOL. YOU MUST FIND SHERRY. IT IS YOUR DUTY."
                        break ;;
      *) show_wrong_input ;;
    esac
  done
}

find_sherry() {
  while true; do
    read input
    case $input in
      where) ls 
             echo "YOU ARE CURRENTLY IN $(basename "$PWD")" ;;
      "find sherry")  
        if find Sherry; then
          echo ""
          echo "YOU EASILY FOUND HER BECAUSE YOU KNOW HER SCHEDULE, OF COURSE. YOU GO UP TO HER."
        fi
        break ;;
      "find Sherry")  
        if find Sherry; then
          echo ""
          echo "YOU EASILY FOUND HER BECAUSE YOU KNOW HER SCHEDULE, OF COURSE. YOU GO UP TO HER."
        fi
        break ;;
      "go-to sherry")  
        if find Sherry; then
          echo ""
          echo "YOU EASILY FOUND HER BECAUSE YOU KNOW HER SCHEDULE, OF COURSE. YOU GO UP TO HER."
        fi
        break ;;
      "go-to Sherry")  
        if find Sherry; then
          echo ""
          echo "YOU EASILY FOUND HER BECAUSE YOU KNOW HER SCHEDULE, OF COURSE. YOU GO UP TO HER."
        fi
        break ;;
      *) show_wrong_input ;;
    esac
  done
}

sherry_text() {
  echo ""
  sleep 3
  echo "errr, hey, Sonny. Um. Hi. Are you okay? Why are you looking at me like that?"
  sleep 5
  echo ""
  echo "YOUR PALMS ARE SWEATING. YOU'VE BEEN WAITING FOR THIS MOMENT YOUR WHOLE MISERABLE PUBESCENT LIFE"
  sleep 2
  echo "YOU'VE LOVED SHERRY SINCE SHE MOVED INTO YOUR NEIGHBORHOOD IN 4TH GRADE"
  sleep 2
  echo "YOU'VE STARED AT HER FROM AFAR FOR SO, SO LONG"
  sleep 2
  echo "WISHING."
  sleep 2
  echo "HER COARSE BLOND HAIR"
  sleep 2
  echo "HER CRACKED LIPS"
  sleep 2
  echo "HER VOLUPTUOUS FIGURE-EIGHT"
  sleep 2
  echo "HER TINNY VOICE"
  sleep 2
  echo "HER BUDGET NAILS"
  sleep 2
  echo "YOU'VE WANTED IT. HER. AND NOW IS YOUR CHANCE. THE ONLY."
  sleep 2
  echo "YOU STARE INTO HER PLASTIC EYES"
  sleep 2
  echo "NOW IS THE TIME, BOY"
  sleep 2
  echo "ASK HER. ASK SHERRY."
}

ask_sherry() {
  while true; do
    read input
    case $input in
      where) ls 
             echo "YOU ARE CURRENTLY IN $(basename "$PWD")" 
             echo "" ;;
      "ask sherry") break;; 
      *) show_wrong_input ;;
    esac
  done
}

ending_text() {
  echo ""
  sleep 5
  echo "ummmmm. uh, sorry, Sonny. um. sorry. no. Pablo asked me already."
  sleep 5
  echo ""
  echo "WELL BUMMER DUDE"
  sleep 3
  echo "GUESS SHE'S NOT THAT INTO YOU"
  sleep 2
  echo "I MEAN THERE'S ALWAYS MORE FISH IN THE SEA"
  sleep 2
  echo "SO DON'T GET DISCOURAGED"
  sleep 2
  echo "IT'S NOT YOU OR YOUR ACNE"
  sleep 2
  echo "NOT YOUR TOTAL LACK OF CONFIDENCE"
  sleep 2
  echo "NOT YOUR INABILITY TO FORM DEEP HUMAN CONNECTIONS"
  sleep 2
  echo "NOT YOUR DAMN PUDGY SELF"
  sleep 2
  echo "NOT ANY OF THAT"
  sleep 2
  echo "IT'S EVERYONE ELSE"
  sleep 2
  echo "ALL OF THEM."
  sleep 2
  echo "SO DON'T GET DISCOURAGED"
  sleep 3
  echo "THINGS WILL ONLY GET BETTER FROM HERE ON OUT"
}

show_start_text
go_to_bathroom
brush_teeth
go_to_school
find_sherry
sherry_text
ask_sherry
ending_text
