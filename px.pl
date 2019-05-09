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

my $name = $q->param("UserName") ||error($q, "No name entered.");

my $color = $q->param("color") ||error($q, "No color selected.");

my $icon = $q->param("icon") ||error($q, "No icon selected.");
# PRODUCE a Reply HTM file
#....................................
print $q->header("text/html");

if ($answer eq "history")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Question: Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: What do u want to know about in $answer?

<p><form action="p2.pl" method="post">

<input type="radio" value="developed" name="answer2"> Developed by?

<p><input type="radio" value="years and versions" name="answer2"> Years and versions!

<p><input type="radio" value="primary designed" name="answer2"> Primarily designed for?

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

 

if ($answer eq "programming")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HE  D>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

 

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Question: Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p>Good! you want to know about $answer .

<p>Question: So what do u want to learn in $answer?

<p><form action="p2.pl" method="post">

<input type="radio" value="paradigm" name="answer2"> Its Programming paradigm

<p><input type="radio" value="data type" name="answer2"> data types

<p><input type="radio" value="declare" name="answer2"> declaring a value

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}

if ($answer eq "application")

{

print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

Hi <font color=$color>$name</font> <img src="$icon">,

<p>Question: Welcome, what do u want to learn about COBOL?

<p>Answer: $answer

<hr>

<p> Good! you want to know about $answer .

<p>Question: What kind of $answer?

<p><form action="p2.pl" method="post">

<input type="radio" value="business applications" name="answer2"> Business applications

<p><input type="radio" value="finance application" name="answer2"> Finance applications

<p><input type="radio" value="administrative application" name="answer2"> Administrative applications

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="answer" value="$answer">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

<p></form>

</HTML>

End_Success

}
