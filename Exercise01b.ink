/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
 
 You continue your search
 
*/

-> cave_mouth

== cave_mouth ==
You find yourself at a cave intrance. Do you wish to explore?
+ [Explore] -> cave_enter
+ [Don't Explore] -> cave_ignore

== cave_enter ==
{search_beginning: You return to the beginning and do what?|As you enter the cave rubble falls blocking you in what do you do?}
* [Try to find supplies] -> search_beginning
+ [Wait for help.] -> wolf_attack
== cave_ignore ==
You leave and remain bored, but safe.
-> END

== search_beginning ==
{continue_search: You wonder through the cave system for a bit finding a spot where light shines down through the ceiling|Its feels like its been hours and you begin to lose hope..}
* [Keep on going] -> continue_search
+ {continue_search} [Try and climb out] -> climb
+ [Quit and head back] -> cave_enter

==climb==
You make it half way and feel the struggle creep upon yourself then see a rope just out of your grasp
+ [Reach for it] -> fall
+ [Work through the struggle] -> escape

== fall ==
You barely manage to grab it before falling to your end as the rope gives to your weight.-> END
== escape ==
You push through the pain knowing the rope was to tattered to help and make it out with just a few scatches due to the sharp and difficult climb.-> END

=== continue_search ===
You keep going until.. -> search_beginning

== wolf_attack ==
{search: Hurry! What now the wolves are closing in!|You decide your best bet was to wait for help but little did you know there were wolves in the cave.}
+ [Fight Back] -> fight_back
+ {search} [Throw it at the wolves] -> friend_route
* [Check your surroundings] -> search
+ [Run] -> run

=== search ===
You find a stick! -> wolf_attack

== fight_back ==
{search: You manage to fend off the wolves surviving long enough for a group to save you|Wow for real what did you expect their wolves..}
-> END
== friend_route ==
Wow.. who would've expected such a stupid outcome.. they chased it those over glorified dogs. You were found playing fetch just a while later perfectly fine in the end. -> END
== run ==
Wow for real what did you expect their wolves.. 
-> END