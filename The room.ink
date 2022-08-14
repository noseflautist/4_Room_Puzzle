
->NWroom


=inventory

In your inventory, you have:
A working compass,
{bucket: a bucket full of warm soapy water,}
{sponge: a sponge,}
{meat: lots of delicious fresh red meat,}
{key: a blue key,}
+ [and that's everything.]

->->


=NWroom

You are in a blue room. There is a  big blue {not cleandoor: dirty} {cleandoor: clean} sentient {not unlock: locked} {unlock: unlocked} door, {not dogmeat: guarded by a nice doggy.} {dogmeat: and there is a nice happy dog eating red meat who loves you and will let you past.} 
There are two other open doorways, one to the south, and one to the east (lucky you have your compass!)
What should you do?
+ Talk to Doggy.
->talkdoggy ->NWroom
+ Talk to the door.
->talkdoor ->NWroom
* {sponge and bucket and not cleandoor} Clean the dirty blue door.
->cleandoor
* {key and not unlock} Use the blue key to unlock the blue door.
->unlock
+ Check what you're carrying.
-> inventory ->NWroom
+ Go through the southern doorway.
->SWroom
+ Go through the eastern doorway.
->NEroom


=cleandoor

You clean the door. While you do, the door makes all sorts of groans and sighs. 
"Oh, thank you!" says the door. "I'm clean now!"
->NWroom

=unlock

You put the blue key in the door, and turn it. The door is now unlocked. 
->NWroom

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
->NWroom 

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

=SWroom

You are in a yellow room. There is a doorway to the north, and a doorway to the East. 
{not sponge: There is a sponge on the floor.}
{not bucket: There is a bucket of soapy water on the floor.}
+ Check what you're carrying.
-> inventory ->SWroom
* {not bucket} Pick up the bucket.
->bucket ->SWroom
* {not sponge} Pick up the sponge.
->sponge ->SWroom
+ Go through the northern doorway.
->NWroom
+ Go through the eastern doorway.
->SEroom


=bucket

You pick up the bucket. It is full of warm soapy water. This will be good for cleaning things.

->->

=sponge

You pick up the sponge. This will be good for cleaning things.

->->

=NEroom

You are in a green room. 
There is a doorway to the west, and a doorway to the south. 
There is an angry man in the corner, holding a blue key.

+ Talk to the man. 
->manchat ->NEroom
+ Check what you're carrying.
-> inventory ->NEroom
+ Go through the western doorway.
-> NWroom
+ Go through the southern doorway.
-> SEroom


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

=SEroom

You are in a red room. 
There is a doorway to the north, and a doorway to the west. 
The room is full of plates of delicious fresh red meat.


+ Check what you're carrying.
-> inventory ->SEroom
+ Pick up a plate of meat.
->meat ->SEroom
+ Go through the western doorway.
-> SWroom
+ Go through the northern doorway.
-> NEroom


=meat

You pick up a plate of meat. 
There are plenty more plates of meat. 
Maybe you will never run out of plates of meat. 
Maybe there is infinite meat. 
+ [Perhaps don't think about it too hard.]
->->


