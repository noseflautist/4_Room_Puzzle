->Room1Blue


=inventory

In your inventory, you have:
{not looped_around_rooms:A working compass,}{looped_around_rooms: A working compass?} //TODO: Click on the compass to do some cool shit? Maybe only while you're in paradox?
{bucket: a bucket full of warm soapy water,}
{sponge: a sponge,}
{meat: lots of delicious fresh red meat,}
{key: a blue key,}
+ [and that's everything.]

->->

VAR looped_around_rooms = false
VAR first_loop_event_done = false

=Room1Blue //was NWroom

You are in a blue room. There is a big blue {not cleandoor: dirty} {cleandoor: clean} sentient {not unlock: locked} {unlock: unlocked} door, {not dogmeat: guarded by a nice doggy.} {dogmeat: and there is a nice happy dog eating red meat who loves you and will let you past.} 
{looped_around_rooms && not first_loop_event_done:<i>Wait... haven't you seen this before?</i>}
~ first_loop_event_done = true
There is one other open doorway to the east (lucky you have your compass{not looped_around_rooms:!}{looped_around_rooms:...?})
{looped_around_rooms: There doesn't seem to be a doorway to the west.}
What should you do?
+ Talk to Doggy.
->talkdoggy ->Room1Blue
+ Talk to the door.
->talkdoor ->Room1Blue
* {sponge and bucket and not cleandoor} Clean the dirty blue door.
->cleandoor
* {key and not unlock} Use the blue key to unlock the blue door.
->unlock
//+ Go through the southern doorway.
//->Room4Yellow
+ Go through the eastern doorway.
->Room2Blue
+ Check what you're carrying.
-> inventory ->Room1Blue

=cleandoor

You clean the door. While you do, the door makes all sorts of groans and sighs. 
"Oh, thank you!" says the door. "I'm clean now!"
->Room1Blue

=unlock

You put the blue key in the door, and turn it. The door is now unlocked. 
->Room1Blue

=talkdoggy
"Hi doggy!"
The dog wags its tail.

* {meat} Give the dog some of the delicious red meat you have.
->dogmeat
+ {not meat} This dog is a guard dog. He won't let you leave until you give him something he wants.
->->
+ {dogmeat} The dog loves you! Hooray! 
    You give him pats.
->->



=dogmeat

You give the dog the meat. 
He eats the meat.
He likes you now.
He'll let you leave.

+ ["I like you too, doggy!"]
->Room1Blue 

=talkdoor
+ "Hello door!"
"Hello!"
+ + "How are you?"
{not cleandoor: "Oh, ohhh, I'm soooo dirty, I simply WON'T open unless I get MUCH cleaner first."} {cleandoor: "Oh, ohh, I'm soooo CLEAN, I'm simply SPARKLING, thank you SO much for sponging me up and down."}
"I see."
{not unlock: "I'm locked, you should know. There's a blue key out there somewhere that will unlock me."} {unlock: "You unlocked me! How sweet of you! I like you SO much more now!"}
"Interesting."
{not dogmeat: "That doggy there, I'm afraid it just WON'T let you past until you get it something to eat."} {dogmeat: "You fed that sweet puppy some red meat! How KIND of you! I think he'll just ADORE you FOREVER now!"}
"Fascinating."
"How am I, otherwise? I'm fine, dear."
->->


=bucket

You pick up the bucket. It is full of warm soapy water. This will be good for cleaning things.

->->

=sponge

You pick up the sponge. This will be good for cleaning things.

->->

=Room2Blue

You are in a green room. 
There is a doorway to the east, and a doorway to the west. 
There is an angry man in the corner, holding a blue key.

+ Talk to the man. 
->manchat ->Room2Blue
+ Go through the eastern doorway.
-> Room3Red
+ Go through the western doorway.
-> Room1Blue
+ Check what you're carrying.
-> inventory ->Room2Blue

=manchat

"Hello."
"Grrr! I'm an angry man! I'm very angry!"
+ "Why are you angry?"
"I can't get out of this maze! I don't like red meat! I don't like dogs! I don't like cleaning or talking to doors! All I've found is this key!"
    * * ["I will solve all the puzzles if you give me that key."]
    ->key
    + + ["That sounds terrible. You poor thing."]
        "Grr! Grr!"
        + + + [He doesn't say anything else. Oh well.]
    ->->

=key

"You want this key?"
+ "Yes."
    "Why?
    + + "To open the blue door."
        "Will you let me leave with you?"
        + + + "Yes."
        "Thank you!"
        He gives you the blue key. 
        ->->
        + + + "No."
        "Then I won't ever EVER EVER give you the key!"
        
        GAME OVER.
        
->END

=Room3Red

You are in a red room. 
There is a doorway to the east, and a doorway to the west. 
The room is full of plates of delicious fresh red meat.


+ Pick up {not meat: a} {meat: another} plate of meat.
{not meat: ->meat ->Room3Red}
{not infinimeat: ->infinimeat ->Room3Red}
{not infinimeat2: ->infinimeat2 ->Room3Red}
{infinimeat2: -> paradoxvisited -> Room3Red}
+ Go through the eastern doorway.
-> Room4Yellow
+ Go through the western doorway.
-> Room2Blue
+ Check what you're carrying.
-> inventory ->Room3Red


=meat

You pick up a plate of meat.
There are plenty more plates of meat.
Maybe you will never run out of plates of meat.
Maybe there is infinite meat.
+ [Perhaps don't think about it too hard.]

->->

=infinimeat

You pick up another plate of meat.
There are plenty more plates of meat.
Maybe you will never run out of plates of meat.
Maybe there is infinite meat.
Maybe there was, but now there is (infinity - 1) meat.
+ [Didn't I say don't think about it too hard?]

->->

=infinimeat2

You pick up another plate of meat.
There are plenty more plates of meat.
You are pretty certain you will never run out of plates of meat.
You are pretty certain there is (infinity - 2) meat.
You are not very certain whether that means there is actually less meat now than there was before, because if you take two away from infinity, doesn't that NOT change the fact that it was infinity already to begin with?
+ [Oops, you thought about it too hard.]

->paradoxenter

->->

=Room4Yellow

You are in a yellow room. There is a doorway to the east, and a doorway to the west. 
{not sponge: There is a sponge on the floor.}
{not bucket: There is a bucket of soapy water on the floor.}
* {not bucket} Pick up the bucket.
->bucket ->Room4Yellow
* {not sponge} Pick up the sponge.
->sponge ->Room4Yellow
+ Go through the eastern doorway.
~ looped_around_rooms = true
->Room1Blue
+ Go through the western doorway.
->Room3Red
+ Check what you're carrying.
-> inventory ->Room4Yellow
