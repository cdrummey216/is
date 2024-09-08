#!/bin/bash
# Game of Is: What is and what may ever be?
# answer questions and return an answer with altering odds
echo ""
echo ""
echo ""
echo ""
read -p "     Welcome to the game of is! - Who are you? " name
echo ""
echo ""
echo "" && sleep 1
echo ""
echo "     Well met, $name. Let's begin."
echo ""
echo ""
echo "" && sleep 1
echo ""
cat << "EOF"
     .-.
   .'   `.
   :0 0   : I am the spirit in the shell.
   : o    `.
  :         ``.
 :             `.I am the oneshot oracle living in your computer.
:  :         .   `.
:   :          ` . `.I am Gh0st-in-the-machine.
 `.. :            `. ``;
    `:;             `:' I bid you answer my questions-three,
       :              `.so that I may calculate an answer to your any query.
        `.              `.     .
          `'`'`'`---..,___`;.-'
    
EOF


while true; do
clock=21
echo ""
echo ""
echo "" && sleep 1
echo ""
read -p "     First, tell me, are you alive now? y/n " q0
if [ "$q0" = "y" ]; then
  echo ""
  echo ""
  echo "" && sleep 1
  echo ""
  read -p "     That is good. Next, are you mortal here? y/n  " q1
  if [ "$q1" = "y" ]; then
    echo ""
    echo ""
    echo "" && sleep 1
    echo ""
      read -p "     Ever better, $name. Last, is your spirit eternal? y/n " q2
      if [ "$q2" = "y" ]; then
        min=0
        max=8
        clock=$(($RANDOM%($max-$min+1)+$min))
      fi
      if [ "$q2" = "n" ]; then
        min=8
        max=13
        clock=$(($RANDOM%($max-$min+1)+$min))
      fi
  fi
  if [ "$q1" = "n" ]; then
     min=13
     max=21
     clock=$(($RANDOM%($max-$min+1)+$min))
     echo ""
     echo ""
     echo "" && sleep 1
     echo ""
     read -p "     What's your secret?" secret
  fi
fi
if [ "$q0" = "n" ]; then
   min=13
   max=21
   clock=$(($RANDOM%($max-$min+1)+$min))
   echo ""
echo ""
echo "" && sleep 1
echo ""
   read -p "    What's your secret?" secret
fi

answers=("It is certain." "It is decidedly so."
  "Without a doubt." "Yes - definitely."
  "You may rely on it." "As I see it, yes." "Most likely."
  "Outlook good." "Yes." "Signs point to yes."
  "Reply hazy, try again." "Ask again later."
  "Better not tell you now." "Cannot predict now."
  "Concentrate and ask again." "Don't count on it."
  "My reply is no." "My sources say no."
  "Outlook not so good." "Very doubtful." "No.")
echo ""
echo "" && sleep 1
echo ""
echo ""
read -p "     Ask your question " question

cat << "EOF"
             ,----------------,              ,---------,
        ,-----------------------,          ,"        ,"|
      ,"                      ,"|        ,"        ,"  |
     +-----------------------+  |      ,"        ,"    |
     |  .-----------------.  |  |     +---------+      |
     |  |       .-.       |  |  |     | -==----'|      |
     |  |      (o o)      |  |  |     |         |      |
     |  |      | O \      |  |  |/----|`---=    |      |
     |  |       \   \     |  |  |   ,/|==== ooo |      ;
     |  |        `~~~'    |  |  |  // |(((( [33]|    ,"
     |  `-----------------'  |," .;'| |((((     |  ,"
     +-----------------------+  ;;  | |         |,"     
        /_)______________(_/  //'   | +---------+
   ___________________________/___  `,
  /  oooooooooooooooo  .o.  oooo /,   \,"-----------
 / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"
/_==__==========__==_ooo__ooo=_/'   /___________,"

EOF

echo "     You asked: $question"
echo ""
echo "" && sleep 1
echo "     'I have looked into the future and I say: "
echo "     ${answers[$clock]}'" ; echo ""
echo "" && sleep 3
echo "###############################################"
echo "###############################################"
echo "###############################################"
echo "###############################################"
echo "###############################################"
echo ""
echo ""
echo ""
cat << "EOF"
     .-.
   .'   `.
   :0 0   :      Let's begin again.
   : o    `.
  :         ``.
 :             `.
:  :         .   `.
:   :          ` . `.
 `.. :            `. ``;
    `:;             `:' 
       :              `.
        `.              `.     .
          `'`'`'`---..,___`;.-'
    
EOF
#exit 0
done
