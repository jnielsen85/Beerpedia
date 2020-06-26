
User.destroy_all
u1 = User.create :email => 'thisisjn@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'greg@greg.com', :password => 'greg'
u3 = User.create :email => 'dom@dom.com', :password => 'Dom'
puts "#{ User.count } users"

Brewer.destroy_all
b1 = Brewer.create( :name => 'James', :bio => 'Brewing for 10 years.  Favourite Style is Ales.  Check out my cherry Ale', :specialty => 'Lagers', :image => 'https://lh3.googleusercontent.com/ajbN6TKVwQx_gh_vkQRXwHYzsSe6hnEb83DKYcUE6MKQgyxFHMLhLwnHikaquqtVSO_jfqFlO_lOptaDjaCKx765hiWBRQCwcodsjNI0PXbRA2Oe6LsKLoYfjTymBfTEhfxr9adM22lgot8fSf0mQPTA-sqGXjq-Yge7s_6t2PRQOSf4Xih14UmLY3fsxhtR-FdNGsXHc7WQpZIS-A-hoaC8hLX_WSbwjnCXmgBH3UXpkO5HwONsDs3MFWhZxdXUwE-q-U2BZFmh4gDs8d9iV-rgfmbSMt3bc9bvLeQFUHUCDcEsZgTyxLnLzvE3uQ0b-miOGqi_zGaZujMaJSOb-ZblaPu6RZDhjDkjwkURpdUt5z4uhmXEX7Y_1FA7wIH5WF1thKUWAV1wnrapsdZ7LB_xI1A3ZxbaPGN6sIHKBwe_CQwobp2ReBizDTnNo8yW871SMQAhd601594QQw_fbg66AT_YXSD5cs8tsWzwwVOjCcteuSezWOKG5qiYlpx29xKuXCNdLF9t0a3L1fRLP08qOhhtGhNCCxIOiH7DO9GFiWVwosKYswHuC8Lo6tZmkw1JdUPbm4XbtdP2rVhGnzsEC8sp0G3oYDYlXyyDZFnTCgnDWuig11pW7SB3ZEynNi7Zk2Xmu9N2zmOcV8URdgXnxoOWasoJFJGy3JWXYsNWEmcuhqVPJP_1ldDKvds=w491-h492-no?authuser=0' )
b2 = Brewer.create( :name => 'Greg', :bio => 'Brewing for 10 years.  Favourite Style is Ales.  Check out my cherry Ale', :specialty => 'Ales', :image => 'https://i.pinimg.com/originals/66/bb/ac/66bbac974bff6d43616bf27b6cc413b8.jpg')
b3 = Brewer.create( :name => 'Dom', :bio => 'Brewing for 10 years.  Favourite Style is Ales.  Check out my cherry Ale', :specialty => 'Lagers', :image => 'https://i.pinimg.com/474x/89/22/bf/8922bfa2bb86adb5d1b083caf6f143d7.jpg')
puts " #{ Brewer.count } Brewers created."

Recipe.destroy_all
r1 = Recipe.create(:name => 'Jims Lager', :description => 'The hippest beer this side of Bushwick, ‘1st Borough’ is a Vienna style lager with attitude. While you’re free to make your own mulch using a custom fixie, you won’t need to add dandruff from your beard; this amber coloured brew is all caramel malt with lifted floral, citrus, and biscuity aromas. Medium bodied and so ironically bitter you’ll need to adjust your tortoiseshell frames, this refreshing lager is one you’ll want to try before it decides it’s ‘so over.’', :ingredients => '1 x 1.7kg Coopers Real Ale
2 x 500g Coopers Light Dry Malt
1 x 25g Hallertau Mittelfrueh Hop Pellets
1 x 25g Cascade Hop Pellets
1 x 11.5g Saflager W-34/70 Dry Yeast
1 x 250g Coopers Carbonation Drops', :directions => '1. MIX
In a good size pot (around 8 litres) bring 500g of Light Dry Malt to the boil with 3 litres of water.
Add the Hallertau Mittelfrueh Hop Pellets and boil for 15mins.
Cool the liquid by placing the pot in a bath of cold water for about 15mins then strain into a Fermenting Vessel (FV).
Mix in the Real Ale and the other 500g of Light Dry Malt. Don’t be concerned if lumps persist as these will dissolve over the course of a few hours.
Fill with cool water to 18 litres, stir vigorously and check the brew temperature.
Top up to 21 litres with warm or cold water (refrigerated if necessary) to get as close to 18C as possible.
Sprinkle on both the W-34/70 and brew can yeast then fit the lid.
2. BREW
Place the FV in a location out of direct sunlight and try to ferment at 15C.
Fermentation should take around 10 to 12 days.
At around day 7, add the Cascade Hops (we recommend wrapping them in a mesh cleaning cloth, pulled straight from the wrapper).
On day 10 check the specific gravity (SG).
Check the SG again the following day and so on.
The brew is ready once the SG has stabilised over a couple of days, expect about 1006 to 1010.', :equipment => 'Standard Brew Tanks', :image => 'https://www.diybeer.com/media/wysiwyg/Beer-Glasses/American_Ale_700x700px.png')
r2 = Recipe.create(:name => 'Gregs Ashes Ale', :description => 'Rivalry between the Australian and English cricket teams is long standing. The most prized trophy, for which these teams compete, is ‘The Ashes’. What could be more fitting than sitting down to watch the The Ashes Test Series with your own beer made from Australian and English ingredients? We’ve chosen a blend of East Kent Goldings and Bramling Cross hops, which can impart delightfully fresh blackcurrant and lemon characters to the beer. However, you might like to use any English hops that suit your taste. With the addition of Crystal Malt grains the final result is a full strength ale, packed with flavour and aroma. HOWZAT?!', :ingredients => '1 x 1.7kg Coopers Australian Pale Ale
2 x 500g Coopers Light Dry Malt
1 x 25g East Kent Goldings Hop Pellets
2 x 25g Bramling Cross Hop Pellets
1 x 200g Crystal Malt Grains
1 x 11g Nottingham Dry Yeast (or English ale yeast of your choice)
1 x 250g Coopers Carbonation Drops', :directions => 'Mix, Brew, Bottle', :equipment => 'Standard Brew Tanks', :image => 'https://www.diybeer.com/media/wysiwyg/Beer-Glasses/Australian_Pale_Ale_700x700px.png')
r3 = Recipe.create(:name => 'Doms Dubbel', :description => 'Most of us enjoy drinking Belgian Beer but if you make it yourself you may well Dubbel the pleasure and Dubbel the fun! The late hop characters give this ale an interesting twist on a typical Dubbel.', :ingredients => '1 x 1.3kg Mr Beer Bewitched Amber Ale
1 x 250g Mr Beer Unhopped Malt Extract - Smooth
1 x 12g Saaz Hop Pellets
1 x 11.5g Safbrew T-58 Dry Yeast
1 x 72g Mr Beer Carbonation Drops', :directions => 'Mix, Brew, Bottle', :equipment => 'Standard Brew Kit', :image => 'https://www.diybeer.com/media/wysiwyg/Beer-Glasses/Saison_Red_700x700px.png')
puts " #{ Recipe.count } Recipes created."

Style.destroy_all
t1 = Style.create :name => 'Ale'
t2 = Style.create :name => 'Lager'
t3 = Style.create :name => 'Pilsner'
t4 = Style.create :name => 'Stout'
t5 = Style.create :name => 'Wheat'
t6 = Style.create :name => 'American-Style Amber/Red Ale'
t7 = Style.create :name => 'American-Style Barley Wine Ale'
t8 = Style.create :name => 'American-Style Brown Ale'
t9 = Style.create :name => 'American-Style Cream Ale'
t10 = Style.create :name => 'American-Style Fruit Beer'
t11 = Style.create :name => 'American-Style Imperial Porter'
t12 = Style.create :name => 'American-Style Imperial Stout'
t13 = Style.create :name => 'American-Style India Pale Ale'
t14 = Style.create :name => 'American-Style Malt Liquor'
t15 = Style.create :name => 'American-Style Pale Ale'
t16 = Style.create :name => 'American-Style Pilsener'
t17 = Style.create :name => 'American-Style Stout'
t18 = Style.create :name => 'American-Style Strong Pale Ale'
t19 = Style.create :name => 'Australian-Style Pale Ale'
t20 = Style.create :name => 'Baltic-Style Porter'
t21 = Style.create :name => 'Belgian-Style Blonde Ale'
t22 = Style.create :name => 'Belgian-Style Flanders Oud Bruin or Oud Red Ale'
t23 = Style.create :name => 'Belgian-Style Flanders Oud Bruin or Oud Red Ale'
t24 = Style.create :name => 'Belgian-Style Fruit Beer'
t25 = Style.create :name => 'Belgian-Style Fruit Lambic'
t26 = Style.create :name => 'Belgian-Style Gueuze Lambic'
t27 = Style.create :name => 'Belgian-Style Lambic'
t28 = Style.create :name => 'Belgian-Style Pale Ale'
t29 = Style.create :name => 'Belgian-Style Witbier'
t30 = Style.create :name => 'Berliner-Style Weisse'
t31 = Style.create :name => 'Bohemian-Style Pilsener'
t32 = Style.create :name => 'Brett Beer'
t33 = Style.create :name => 'British-Style Barley Wine Ale'
t34 = Style.create :name => 'British-Style Imperial Stout'
t35 = Style.create :name => 'Brown Porter'
t36 = Style.create :name => 'California Common Beer'
t37 = Style.create :name => 'Chili Pepper Beer'
t38 = Style.create :name => 'Chocolate or Cocoa Beer'
t39 = Style.create :name => 'Classic English-Style Pale Ale'
t40 = Style.create :name => 'Classic French & Belgian-Style Saison'
t41 = Style.create :name => 'Classic Irish-Style Dry Stout'
t42 = Style.create :name => 'Coffee Beer'
t43 = Style.create :name => 'Contemporary Gose'
t44 = Style.create :name => 'Dortmunder/European-Style Export'
t45 = Style.create :name => 'Double Red Ale'
t46 = Style.create :name => 'English-Style Brown Ale'
t47 = Style.create :name => 'English-Style Dark Mild Ale'
t48 = Style.create :name => 'English-Style India Pale Ale'
t49 = Style.create :name => 'English-Style Pale Mild Ale'
t50 = Style.create :name => 'English-Style Summer Ale'
t51 = Style.create :name => 'European-Style Dark Lager'
t52 = Style.create :name => 'Export-Style Stout'
t53 = Style.create :name => 'Extra Special Bitter'
t54 = Style.create :name => 'Field Beer'
t55 = Style.create :name => 'French-Style Bière de Garde'
t56 = Style.create :name => 'Fruit Wheat Beer'
t57 = Style.create :name => 'German-Style Altbier'
t58 = Style.create :name => 'German-Style Doppelbock'
t59 = Style.create :name => 'German-Style Eisbock'
t60 = Style.create :name => 'German-Style Heller Bock/Maibock'
t61 = Style.create :name => 'German-Style Kölsch'
t62 = Style.create :name => 'German-Style Leichtes Weizen'
t63 = Style.create :name => 'German-Style Maerzen'
t64 = Style.create :name => 'German-Style Oktoberfest/Wiesn'
t65 = Style.create :name => 'German-Style Pilsener'
t66 = Style.create :name => 'German-Style Rye Ale'
t67 = Style.create :name => 'German-Style Schwarzbier'
t68 = Style.create :name => 'Golden or Blonde Ale'
t69 = Style.create :name => 'Golden or Blonde Ale'
t70 = Style.create :name => 'Herb and Spice Beer'
t71 = Style.create :name => 'Imperial or Double India Pale Ale'
t72 = Style.create :name => 'Imperial Red Ale'
t73 = Style.create :name => 'International-Style Pale Ale'
t74 = Style.create :name => 'International-Style Pilsener'
t75 = Style.create :name => 'Irish-Style Red Ale'
t76 = Style.create :name => 'Leipzig-Style Gose'
t77 = Style.create :name => 'Mixed-Culture Brett Beer'
t78 = Style.create :name => 'Münchner (Munich)-Style Helles'
t79 = Style.create :name => 'Münchner Dunkel'
t80 = Style.create :name => 'Oatmeal Stout'
t81 = Style.create :name => 'Old Ale'
t82 = Style.create :name => 'Ordinary Bitter'
t83 = Style.create :name => 'Pumpkin Spice Beer'
t84 = Style.create :name => 'Pumpkin/Squash Beer'
t85 = Style.create :name => 'Robust Porter'
t86 = Style.create :name => 'Rye Beer'
t87 = Style.create :name => 'Scotch Ale'
t88 = Style.create :name => 'Session India Pale Ale'
t89 = Style.create :name => 'Smoke Beer'
t90 = Style.create :name => 'Smoke Porter'
t91 = Style.create :name => 'South German-Style Bernsteinfarbenes Weizen'
t92 = Style.create :name => 'South German-Style Dunkel Weizen'
t93 = Style.create :name => 'South German-Style Hefeweizen'
t94 = Style.create :name => 'South German-Style Kristal Weizen'
t95 = Style.create :name => 'Special or Best Bitter'
t96 = Style.create :name => 'Specialty Honey Beer'
t97 = Style.create :name => 'Specialty Saison'
t98 = Style.create :name => 'Standard Australian Lager'
t99 = Style.create :name => 'Sweet Stout or Cream Stout'
t100 = Style.create :name => 'Traditional German-Style Bock'
t101 = Style.create :name => 'Vienna-Style Lager'
t102 = Style.create :name => 'Wild Beer'
t103 = Style.create :name => 'Wood- and Barrel-Aged Beer'
t104 = Style.create :name => 'Wood- and Barrel-Aged Dark Beer'
t105 = Style.create :name => 'Wood- and Barrel-Aged Pale to Amber Beer'
t106 = Style.create :name => 'Wood- and Barrel-Aged Sour Beer'
t107 = Style.create :name => 'Wood- and Barrel-Aged Strong Beer'
puts "#{ Style.count } styles"

##Associations
puts "Brewers and Recipes"
b1.recipes << r1
b2.recipes << r2
b3.recipes << r3

puts "Users and Brewers"
u1.brewers << b1
u2.brewers << b2
u3.brewers << b3
#
# puts "Recipes and Styles"
# r1.style << t2
# r2.style << t1
# r3.style << t79
