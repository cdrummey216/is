#!/bin/bash
# Game of Is: What is and what may ever be?
# answer questions and return an answer with altering odds
read -p "Welcome to the game of is! - Who are you? " name
echo "I am the spirit in the shell."
echo "I am the oneshot oracle living in your computer."
echo "I bid you answer my questions-three, so that I may calculate an answer to your any query."
while true; do

echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "###############|````|##############"
echo "#####\```````````````````````/#####"
echo "######\`````````````````````/######"
echo "#######\```````````````````/#######"
echo "########\`````````````````/########"
echo "#########\```````````````/#########"
echo "##########\`````````````/##########"
echo "###########\```````````/###########"
echo "############\`````````/############"
echo "#############\```````/#############"
echo "##############\`````/##############"
echo "###############\```/###############"
echo "################\`/################"
echo "#################\/################"
echo ""

clock=21

read -p "Well met, $name. First, tell me, are you alive now? y/n " q0
if [ "$q0" = "y" ]; then
  clock=21
  read -p "That is good. Next, are you mortal here? y/n  " q1
  if [ "$q1" = "y" ]; then
      read -p "Ever better, $name. Last, is your spirit eternal? y/n " q2

      if [ "$q2" = "y" ]; then
        clock=10
      fi
      if [ "$q2" = "n" ]; then
        clock=21
      fi
  fi
  if [ "$q1" = "n" ]; then
      clock=21
      read -p "What's your secret?" secret
  fi
fi
if [ "$q0" = "n" ]; then
  clock=21
  read -p "What's your secret?" secret
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

read -p "What is your question? " question

answer=$(( $RANDOM % clock ))

echo ""
echo ""
echo "I have looked into the future and I say: "
echo "     ${answers[$answer]}" ; echo ""

#exit 0
done
