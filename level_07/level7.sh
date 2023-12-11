#!/bin/ash
cd /home/level7

echo '''This challenge will make you familier with encodings and ciphers.
	Here the text is wrapped with a rotation cipher and then with a base encoding.''' > README
echo '''Let’s start with a fact.  The UK generated 221.0 million tonnes of total waste in 2016.  We throw away unwanted food, glass bottles, plastic bottles, cans, wrappers, paper and cardboard.  Can you think of anything else?

Many of these things are made up of natural resources such as trees, coal, oil and aluminium and one day some of these resources will be used up completely.

Over the last ten years the whole of the UK has come together to do more about this. An EU target was set, for the UK to recycle at least 50% of household waste by 2020. In 2018 the recycling rate for England was 44.7%, compared to just 11% in 2000.  Do you recycle at home and at school?  Why recycle?  Well, this takes us back to the topic of energy.  Recycling glass, paper, cardboard and plastic should save the energy it would take to make new paper, glass bottles and plastic containers

According to RecycleNow, recycling in the UK saves more than 18 million tonnes of carbon dioxide a year – equivalent to taking 5 million cars off the road.  Recycling isn’t a new thing either.  During World War II, the British people recycled everything they could to help.  Toys were made with scraps of fabric and metal pots and pans were melted down to be reused.  So, is all our rubbish really rubbish?

Detectives - We’ve seen some great projects where schools have collected all of their waste and weighed it every week - the results over 1 school year can be shocking!  Why not see how much your school, class or family chucks out and try and set targets to reduce the waste.

How to help:
Thinking more about what we waste helps to protect the environment by saving energy, reducing pollution, cutting costs and preserving our natural resources.  

Sort it out!  Not all of our recycling is taken by helpful dustmen.  Unwanted or leftover food such as tea bags and potato peelings can be added straight to a compost heap.  Plenty of minibeasts will be on-hand there to help!  Little insects help break down food and plant matter and make it into scrumptious soil that plants, trees and other animals love.  Many local councils now include compostable waste in their recycling collections.
Recycle Bank  Some councils don’t collect plastics or cardboard but there is always somewhere nearby with big recycling banks where you can take them.
Save trees  Save trees by recycling your own paper.  Paper with a clean side can be made into notepads with a simple staple or a hole to tie a piece of string.  These are great for doodles and notes.  If you are buying paper, buy recycled paper.
Fashion Statement  Give any unwanted clothes to charity shops or to a Salvation Army recycling bank.  A lot of our unwanted clothes go to the homeless to keep them warm or alternatively, the clothes are sent to developing countries.  There’s always someone who will want that knitted jumper!
Would you like a bag?  If you can carry your shopping home without a bag then carry it home.  If you can’t why not take a bag you already have with you.  Re-using bags is the cool way to shop!
Packaging  Packaging is a big problem for the environment because once the product is open you don’t need it and it’s thrown out or, if it’s lucky, recycled.  So avoid buying products that have a lot of paper and plastic around them.
Shout out - Tell Friends of the Earth what products or companies you think highlight the problem of our trashed planet.So here is your flag ~''' +  $(python3 /root/flag.py) | tr 'A-Za-z' 'N-ZA-Mn-za-m' | base64  > /home/level7/flag.txt

chattr +i /home/level7
/usr/sbin/sshd -D
