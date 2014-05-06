#!/usr/bin/perl
#File Name: hash_names.pl
#Program Description: Reads a file and prints out each name found multiple times with the number of occurrences

@file_input = <>;
%hash_names =();

foreach $line (@file_input)
{
@tmpline = split(/ /, $line);
@key = split(/:/, $tmpline[$line]);
$key[$line] = $key[$#key];

if (exists($hash_names{$key[$line]}))
{
$hash_names{$key[$line]}++;
}
else
{
$hash_names{$key[$line]} = 1;
}
}
foreach $name (sort keys %hash_names)
{
if($hash_names{$name} > 1)
{
print "$name occurs $hash_names{$name} times\n";
}
}
