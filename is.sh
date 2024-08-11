#!/bin/bash
# Game of Is: What is and what may ever be?
read -p "Welcome to the game of is! - Who are you? " deadmanname
read -p "Well met, {$deadmanname}. I am the spirit in the shell. I am the oneshot oracle living in your computer. First, I bid you answer my questions-three. {$deadmanname} Who do you serve? 1/0 " q0
read -p "I see, {$deadmanname}. What is your fate? 1/0 " q1
read -p "I understand, {$deadmanname}. How did this begin? 1/0 " q2

if [ "$q0" = "1" ]; then
  echo "Ok."
fi
if [ "$q0" = "0" ]; then
  echo "Goodbye."
fi

if [ "$q1" = "1" ]; then
  echo "Ok."
fi
if [ "$q1" = "0" ]; then
  echo "Ok."
fi

if [ "$q2" = "1" ]; then
  echo "Ok."
fi
if [ "$q2" = "0" ]; then
  echo "Ok."
fi

answers=("It is certain." "It is decidedly so."
  "Without a doubt." "Yes - definitely."
  "You may rely on it." "As I see it, yes." "Most likely."
  "Outlook good." "Yes." "Signs point to yes."
  "Reply hazy, try again." "Ask again later."
  "Better not tell you now." "Cannot predict now."
  "Concentrate and ask again." "Don't count on it."
  "My reply is no." "My sources say no."
  "Outlook not so good." "Very doubtful.")

read -p "What is your question? " question

answer=$(( $RANDOM % 20 ))

echo ""
echo ""
echo "I have looked into the future and I say: "
echo "     ${answers[$answer]}" ; echo ""

exit 0
