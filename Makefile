all: Shakey_Graves__Bullys_Lament.pdf Bob_Dylan__The_Times_They_Are_A_Changin.pdf Allman_Brothers__Melissa.pdf Gary_Jules__Mad_World.pdf CAKE__Friend_is_a_4_Letter_Word.pdf Red_Hot_Chili_Peppers__Under_the_Bridge.pdf Death_Cab__Ill_Follow_You_Into_The_Dark.pdf Grateful_Dead__Brokedown_Palace.pdf Grateful_Dead__Loser.pdf Grateful_Dead__Stella_Blue.pdf Neil_Young__Sugar_Mountain.pdf Shakey_Graves__Proper_Fence.pdf Laura_Marling__Little_Bird.pdf

%.pdf: %.md
	pandoc -V geometry:margin=1in $< -o $@

#%.pdf: %.md
#	fold -w 40 $< | pandoc -V geometry:margin=1in --template=template -o $@
