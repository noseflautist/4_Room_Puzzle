->Room1Blue


=inventory

In your inventory, you have:
{not looped_around_rooms:A working compass,}{looped_around_rooms: A working (?) compass,} //TODO: Click on the compass to do some cool shit? Maybe only while you're in paradox?
{bucket: a bucket full of warm soapy water,}
{sponge: a sponge,}
{meat: lots of delicious fresh red meat,}
{key: a blue key,}
+ and that's everything.
...
->->

VAR looped_around_rooms = false
VAR first_loop_event_done = false

=Room1Blue
#IMAGE: images/bluedoor.jpg

You are in a blue room.
There is a  big blue {not cleandoor: dirty} {cleandoor: CLEAN} sentient {not unlock: locked} {unlock: UNLOCKED} door, {not dogmeat: guarded by a nice doggy.} {dogmeat: NO LONGER GUARDED BY a nice happy dog eating red meat who loves you and will let you past.} 

    {looped_around_rooms && not first_loop_event_done:<i>Wait... haven't you seen this before?</i>}
    
There is one other open doorway to the east (lucky you have your compass{not looped_around_rooms:!}{looped_around_rooms:...?})

    {looped_around_rooms && not first_loop_event_done: There doesn't seem to be a doorway to the west...}
    
    {looped_around_rooms && not first_loop_event_done:
    ~ first_loop_event_done = true
    } //Make sure "Wait... haven't you seen this before?" only shows once.

What should you do?
+ [Talk to doggy]
->talkdoggy ->Room1Blue
+ [Talk to the door]
->talkdoor ->Room1Blue
* {sponge and bucket and not cleandoor} [Clean the dirty blue door]
->cleandoor
* {key and not unlock} [Use the blue key to unlock the blue door]
->unlock
//+ Go through the southern doorway.
//->Room3Yellow
* {unlock and cleandoor and dogmeat} YOU CAN OPEN THE SENTIENT DOOR AND LEAVE IF YOU WISH!
# CLEAR
->endgame
+ [Go through the eastern doorway] You go through the eastern doorway.
->Room2Green
+ [Check what you're carrying]
-> inventory ->Room1Blue

=cleandoor

You clean the door.

While you do, the door makes all sorts of groans and sighs. 

+ You splash some soapy water on the door.
"OooOoohhhhmmm that's warm."
+ + You scrub a bit.
"Y-yeah, just there!"
+ + + You wipe down the front.
"Mmmmmmmmmmmmmmmyeah I like that."
+ + + + You are finished.
"Oh, thank you!" says the door. "I'm clean now!"
+ + + + + [You sure are.]
...
->Room1Blue

=unlock

You put the blue key in the door, and turn it. The door is now unlocked. 
->Room1Blue

=talkdoggy
"Hi doggy!"
The dog wags its tail.

* {meat} [Give the dog some of the delicious red meat you have] You give the dog some of the delicious red meat you have.
->dogmeat
+ {not meat} This dog is a guard dog. He won't let you leave until you give him something he wants.
...
->->
+ {dogmeat} The dog loves you! Hooray! 
    You give him pats.
...
->->



=dogmeat

He eats the meat.
He likes you now.
He'll let you leave.

+ "I like you too, doggy!"
...
->Room1Blue 

=talkdoor
"Hello door!"
"Hello!"
+ "How are you?"
{not cleandoor: "Oh, ohhh, I'm <i>soooo</i> dirty, I simply <i>WON'T</i> open unless I get <i>much</i> cleaner first."} {cleandoor: "Oh, ohh, I'm soooo CLEAN, I'm simply SPARKLING, thank you SO much for sponging me up and down."}
+ + "I see."
{not unlock: "I'm locked, you should know. There's a blue key out there somewhere that will unlock me."} {unlock: "You unlocked me! How sweet of you! I like you <i>sooo</i> much more now!"}
+ + + "Interesting."
{not dogmeat: "That doggy there, I'm afraid it just WON'T let you past until you get it something to eat."} {dogmeat: "You fed that sweet puppy some red meat! How KIND of you! I think he'll just ADORE you FOREVER now!"}
+ + + + "Fascinating."
"How am I, otherwise? I'm fine, dear."
+ + + + + [Cool beans!]

...
->->


=Room2Green
#IMAGE: images/greenroom.jpg
You are in a green room. 
There is an angry man in the corner, {not key: holding a blue key.} {key: looking at you expectantly.}
There is a doorway to the east, and a doorway to the west. 

+ Talk to the man
->manchat ->Room2Green
+ [Go through the eastern doorway] You go through the eastern doorway.
-> Room3Yellow
+ [Go through the western doorway] You go through the western doorway.
-> Room1Blue
+ [Check what you're carrying]
-> inventory ->Room2Green

=manchat

"Hello."
"Grrr! I'm an angry man! I'm very angry!"
+ "Why are you angry?"
"I <b>can't</b> get out of this maze! I <b>don't</b> like red meat! I <b>don't</b> like dogs! I <b>don't</b> like cleaning or talking to <b>doors!</b> All I've found is {not key: this key!"} {key: that blue key I gave you!"}
    * * ["I will solve all the puzzles if you give me that key."]
    ->key
    + + ["That sounds terrible. You poor thing."]
        "<b>Grr! Grr!</b>"
        + + + [He doesn't say anything else. Oh well.]
        
        ...
        
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
        ...
        ->->
        + + + "No."
        "Then I won't ever EVER EVER give you the key!"
        
        GAME OVER.
        
->END

=Room4Red
#IMAGE: images/redroom.jpg
You are in a red room. 
The room is full of plates of delicious fresh red meat.
There is a doorway to the east, and a doorway to the west.

+ [Pick up {not meat: a} {meat: another} plate of meat]
{not meat: ->meat ->Room4Red}
{not infinimeat: ->infinimeat ->Room4Red}
{not infinimeat2: ->infinimeat2 ->Room4Red}
{infinimeat2: -> paradoxvisited -> Room4Red}
+ [Go through the eastern doorway] You go through the eastern doorway.
~ looped_around_rooms = true
-> Room1Blue
+ [Go through the western doorway] You go through the western doorway.
-> Room3Yellow
+ [Check what you're carrying]
-> inventory ->Room4Red


=meat

You pick up a plate of meat.
There are plenty more plates of meat.
Maybe you will never run out of plates of meat.
Maybe there is infinite meat.
+ [Perhaps don't think about it too hard.]

...
->->

=infinimeat

You pick up another plate of meat.
There are plenty more plates of meat.
Maybe you will never run out of plates of meat.
Maybe there is infinite meat.
Maybe there was, but now there is (infinity - 1) meat.
+ [Didn't I say don't think about it too hard?]

...
->->

=infinimeat2

You pick up another plate of meat.
There are plenty more plates of meat.
You are pretty certain you will never run out of plates of meat.
You are pretty certain there is (infinity - 2) meat.
You are not very certain whether that means there is actually less meat now than there was before, because if you take two away from infinity, doesn't that NOT change the fact that it was infinity already to begin with?
+ [Oops, you thought about it too hard.]

->paradoxenter

...
->->

=Room3Yellow
# IMAGE: images/yellowroom.jpg
You are in a yellow room.
There is a closet labelled "CLEANING SUPPLIES" that {not looped_around_rooms: someone has left halfway open.}{looped_around_rooms: is now firmly shut.}

There is a doorway to the east, and a doorway to the west.

+ [Look in the closet] You look in the closet.
->CleaningSupplies
+ [Go through the eastern doorway] You go through the eastern doorway.
->Room4Red
+ [Go through the western doorway] You go through the western doorway.
->Room2Green
+ [Check what you're carrying]
-> inventory ->Room3Yellow

=CleaningSupplies
{not looped_around_rooms:
    <i>{&Oh, ratbags! | Oh, buttocks! | Oh, tarnation! | Oh, badoodle! | Oh, fartsicles! | Oh, fiddlesticks! | Oh, punchable peanuts! | 大便!}</i> //TODO: add more here!

    It's <b>empty.</b>
}
{looped_around_rooms:
    {not sponge: There is a sponge here.}
    {not bucket: There is a bucket of soapy water here.}
    {sponge && bucket: The closet is empty.}
    * {not bucket} [Pick up the bucket] You pick up the bucket.
    ->bucket ->CleaningSupplies
    * {not sponge} [Pick up the sponge] You pick up the sponge.
    ->sponge ->CleaningSupplies
}
+ [Back to the room]
...
->Room3Yellow

=bucket

It is full of warm soapy water. This will be good for cleaning things.

...
->->

=sponge

This will be good for cleaning things.

...
->->

=endgame
#IMAGE: images/whiteroom.jpg
You open the big blue clean sentient unlocked door, and step out of the Puzzle Rooms, free at last.
It was an escape room type place. The staff member asks you to complete a satisfaction survey.

+ "NEVER! I REFUSE! HAHAHAHAHAHAH GOODBYE FOREVER!"
->youleave
+ "I rate it 5 stars."
->starrating5
+ "I rate it 4 stars."
->starrating
+ "I rate it 3 stars."
->starrating
+ "I rate it 2 stars."
->starrating
+ "I rate it 1 star."
->starrating



=starrating

You fill out the survey with your rating.
->youleave



=starrating5

You fill out the survey with your rating.
->youleave


=youleave

You walk out the front door of the building.

# CLASS: end
The End

CONGRATULATIONS!

{starrating5: ACHIEVEMENT UNLOCK! YOU GOT THE PERFECT ENDING!}

->DONE
