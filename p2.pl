#!/usr/bin/perl -w
#********************************
# Input User Choice
# (by Hanh Pham)
#********************************
use CGI qw( :standard );
my $q = new CGI;
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................

my $answer = $q->param("answer") ||error($q, "No value entered.");
my $answer2 = $q->param("answer2") ||error($q, "No value entered.");
my $name = $q->param("UserName") ||error($q, "No name entered.");

my $color = $q->param("color") ||error($q, "No color selected.");

my $icon = $q->param("icon") ||error($q, "No icon selected.");
# PRODUCE a Reply HTM file
#....................................
print $q->header("text/html");

if ($answer2 eq "developed")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: Who do u think it was $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="codasyl" name="answer3"> CODASYL

<p><input type="radio" value="grace" name="answer3"> Grace hopper

<p><input type="radio" value="ansi" name="answer3">ANSI

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

 

if ($answer2 eq "years and versions")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: When was the initial $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="nineteen fifty nine" name="answer3"> 1959

<p><input type="radio" value="nineteen eighty six" name="answer3"> 1986

<p><input type="radio" value="nineteen ninety five" name="answer3"> 1995

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

if ($answer2 eq "primary designed")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: When was the initial $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="business apps" name="answer3"> Business applications

<p><input type="radio" value="programming applications" name="answer3"> Programming applications

<p><input type="radio" value="gaming" name="answer3"> Gaming applications

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

if ($answer2 eq "paradigm")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: About its $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="imperative" name="answer3"> Imperative

<p><input type="radio" value="procedural" name="answer3"> Procedural

<p><input type="radio" value="object oriented" name="answer3"> Object Oriented

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}


if ($answer2 eq "data type")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: About its $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="alphabets" name="answer3"> Alphabets(A-Z,a-z)

<p><input type="radio" value="numeric" name="answer3"> Numbers(0-9)

<p><input type="radio" value="alphanumeric" name="answer3"> Alphanumeric(A-9)

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

if ($answer2 eq "declare")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: $answer2 a number-id ?

<p><form action="p3.pl" method="post">

<input type="radio" value="option a" name="answer3"> 77  stu-id  PIC 9(5) VALUE 13254  

<p><input type="radio" value="option b" name="answer3"> 77  stu-id  pic A(5) val 13254

<p><input type="radio" value="option c" name="answer3"> 77  stu-id  PIC a(5)  13254

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

if ($answer2 eq "business applications")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: About its $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="batch n transaction processing" name="answer3"> Batch and transaction processing

<p><input type="radio" value="sharing business data" name="answer3"> Sharing business data

<p><input type="radio" value="starting a business" name="answer3"> Starting a business

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

if ($answer2 eq "finance application")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: About its $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="ATM and In-person financial transactions" name="answer3"> ATM and In-person financial transactions

<p><input type="radio" value="lending and borrowing" name="answer3"> lending and borrowing

<p><input type="radio" value="Distribution of money" name="answer3"> Distribution of money

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

if ($answer2 eq "administrative application")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?
<p> $answer2 !
<p>Question: About its $answer2 ?

<p><form action="p3.pl" method="post">

<input type="radio" value="Mainframe computers in Administration" name="answer3"> Mainframe computers in Administration

<p><input type="radio" value="Human resource management" name="answer3"> Human resource management

<p><input type="radio" value="planning" name="answer3"> Planning

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="answer2" value="$answer2">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}