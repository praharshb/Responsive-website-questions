#!/usr/bin/perl -w
#********************************
# Input User Name,Password,Email,..
# (by Hanh Pham)
#********************************
#use diagnostics;
use CGI qw( :standard );
my $q = new CGI;
# READ the LogIn Data from the ENVIRONMENT VARIABLES
# ......................................................................
my $name = $q->param("UserName") ||error($q, "No UserName entered.");

my $pass = $q->param("Password") ||error($q, "No Password entered.");

my $email =$q->param("Email") ||error($q, "No Email entered.");

my $color = $q->param("color") ||error($q, "No Color Selected.");

my $icon = $q->param("icon") ||error($q, "No Icon Selected.");
#Define the File Name to write the LogIn Data
#...............................................
my $u_filename = "u-".$name;
# write the LogIn Data into the that file in directory "d"
# ........................................................
open(F, ">>d/$u_filename"); # should create a NEW FILE based on the UserName
print F "$name", " ", "$pass", " ", "$email", " ", "$color", " ","$icon", "\n";

close(F);

# PRODUCE a Reply HTM file

#....................................

print $q->header("text/html");
print <<End_Success;

<HTML>

<HEAD>

<TITLE>LogIn Reply</TITLE>

</HEAD>

<BODY TEXT="#000000" LINK="#0000ff" VLINK="#800080""><br>

<p>Hi <font color=$color>$name</font> <img src="$icon">,

<p>Welcome, what do u want to learn about COBOL?

<p><form action="px.pl" method="post">

<input type="radio" value="history" name="answer">History/Background 

<p><input type="radio" value="programming" name="answer">Programming 

<p><input type="radio" value="application" name="answer">Applications

<input type="hidden" name="UserName" value="$name">

<input type="hidden" name="color" value="$color">

<input type="hidden" name="icon" value="$icon">

<p><input type="submit" value="Submit">

</form>

</HTML>

End_Success
