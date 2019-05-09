#!/usr/bin/perl -w
#********************************
# Input User Choice & Pass parameters to the Applet
# (by Hanh Pham)
#********************************
use CGI qw( :standard );
my $q = new CGI;
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $answer = $q->param("answer") ||error($q, "No value entered.");
my $answer2 = $q->param("answer2") ||error($q, "No value entered.");
my $answer3 = $q->param("answer3") ||error($q, "No value entered.");
my $name = $q->param("UserName") ||error($q, "No name entered.");
my $color = $q->param("color") ||error($q, "No color entered.");
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
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: Welcome, what do u want to learn about COBOL?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Good! you want to know about $answer .">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do u want to know about in $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Question: Who do u think it was $answer2 ?">
<PARAM name="Line10" value="Answer: $answer3">
<PARAM name="Line11" value="">
<PARAM name="Line12" value="It was developed by CODASYL in 1959 for business primarily!! Good luck">
</APPLET>
</HTML>
End_Success
}

if ($answer eq "programming")
{
print <<End_Success;
<HTML>
<HEAD>
<TITLE>LogIn Reply</TITLE>
</HEAD>
<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>
Hi <font color=$color>$name</font> <img src="$icon">,
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: Welcome, what do u want to learn about COBOL?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Good! you want to know about $answer .">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do u want to know about in $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Question: About its $answer2 ?">
<PARAM name="Line10" value="Answer: $answer3">
<PARAM name="Line11" value="">
<PARAM name="Line12" value="Its Imperative, Procedural n Object oriented, all A-Z 1-9 A-9, 77  stu-id  PIC 9(5) VALUE 13254!! Good luck">
</APPLET>
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
<p>
<APPLET code="DrawStringApplet.class" width="500" height="500">
<PARAM name="Line1" value="Question: Welcome, what do u want to learn about COBOL?">
<PARAM name="Line2" value="Answer: $answer">
<PARAM name="Line3" value="">
<PARAM name="Line4" value="Good! you want to know about $answer .">
<PARAM name="Line5" value="">
<PARAM name="Line6" value="Question: What do u want to know about in $answer?">
<PARAM name="Line7" value="Answer: $answer2">
<PARAM name="Line8" value="">
<PARAM name="Line9" value="Question: About its $answer2 ?">
<PARAM name="Line10" value="Answer: $answer3">
<PARAM name="Line11" value="">
<PARAM name="Line12" value="Batch n Trasaction processing,ATM n In-person financial transactions,Mainframes in Admin !! Good luck">
</APPLET>
</HTML>
End_Success
}
