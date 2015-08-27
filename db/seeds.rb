Country.create!([
  {country_name: "kenya", kitchen_id: 2, visible: false},
  {country_name: "nigeria", kitchen_id: 2, visible: false},
  {country_name: "south africa", kitchen_id: 2, visible: false},
  {country_name: "egypt", kitchen_id: 1, visible: false},
  {country_name: "Lebanon", kitchen_id: 1, visible: false},
  {country_name: "Yemen", kitchen_id: 1, visible: false},
  {country_name: "Jordan", kitchen_id: 1, visible: false},
  {country_name: "Syria", kitchen_id: 1, visible: false},
  {country_name: "Gulf countries", kitchen_id: 1, visible: false},
  {country_name: "Greater Maghreb", kitchen_id: 1, visible: false},
  {country_name: "india", kitchen_id: 4, visible: false}
])
Kitchen.create!([
  {kitchen_name: "arabian", visible: false},
  {kitchen_name: "african", visible: false},
  {kitchen_name: "european", visible: false},
  {kitchen_name: "asian", visible: false},
  {kitchen_name: "latin_amarican", visible: false}
])
Recipe.create!([
  {recipe_name: "Kenyan Greens Simmered With Tomatoes", country_id: 1, calories: "294", recipe_content: "SERVINGS 4-6\r\ncalories 231.1\r\nTime needed :45mins\r\nINGREDIENTS\r\n•\t3tablespoons oil\r\n•\t1onions, chopped or 1 mincedonion\r\n•\t2lbs kale or 2 lbs collard greens, destemmed and finely chopped\r\n•\t2cups tomatoes, chopped\r\n•\t1cup water or 1 cup stock\r\n•\tsalt and pepper\r\n\r\nDIRECTIONS\r\n1.\tHeat the oil over med-high flame in a large, heavy-bottomed pot. Add the onion and saute until translucent. Add the greens in batches, sauteing each addition until wilted.\r\n2.\tAdd the tomatoes, water or stock, salt and pepper. Bring to a boil, then reduce heat to low and simmer gently until tender, from 20 to 30 minutes or done to your liking.\r\n3.\tAdjust seasoning and serve with a little bit of the broth.\r\n4.\tYou can add a chopped chili pepper or two with the onions. If you like, add some leftover meat for more flavor.\r\n", visible: false},
  {recipe_name: "Nyama Choma Roast Meat", country_id: 1, calories: "294", recipe_content: "SERVINGS 3-4\r\nCalories 1760\r\nTime needed :35mins\r\n\r\nINGREDIENTS\r\n•\t3lbs beef short ribs\r\n•\tsalt and pepper\r\n\r\nDIRECTIONS\r\n1.\tSeason the meat with salt and pepper.\r\n2.\tGrill on a gas or charcoal grill over medium heat 30 minutes.\r\n3.\tYou can also roast the meat in an oven at 300°F for 1¼ hours.\r\n4.\tMeat should be golden brown, tender and juicy when ready.\r\n5.\tNyama choma goes well with kachumbari or cooked greens.\r\n", visible: false},
  {recipe_name: "Ugali", country_id: 1, calories: "294", recipe_content: "﻿\r\nSERVINGS 6-8\r\nCalories 294.4\r\nTime needed :15mins\r\n\r\nINGREDIENTS\r\n\r\n1.\t4cups finely ground cornmeal (If you can find the kind that is so finely ground as to be like flour, grab it!!)\r\n2.\t8cups water\r\n\r\nDIRECTIONS\r\n\r\n1.\tHeat water to boiling in a saucepan. Slowly pour the corn flour into boiling water. Avoid forming lumps.\r\n2.\tStir continuously and mash any lumps that do form. Add more corn flour until it is thicker than mashed potatoes.\r\n3.\tCook for three or four minutes, continue to stir. (Continuing to stir as the ugali thickens is the secret to success, i.e., lump-free ugali.)\r\n4.\tTop with a pat of butter or margarine, if desired.\r\n5.\tCover and keep warm.\r\n6.\tServe immediately with any meat or vegetable stew, or any dish with a sauce or gravy.\r\n\r\n", visible: false}
])
