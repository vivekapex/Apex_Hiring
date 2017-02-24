EASY_HASH = {
	"Recently you invented a brand-new definition of prime numbers. For a given set of positive integers S let's call X a prime if there are no elements in S which are divisors of X (except X itself). You are given a set S. Find elements in it which are prime numbers for this set.@@@" => "{10, 5, 3, 15, 16}$$${5, 4, 16}",
	"Print all permutations of a string.@@@" => "{ABC}$$${ABC ACB BAC BCA CBA CAB}",
	"Write a method that sorts the keys in a hash by the length of the key as a string.@@@" => "{ abc: 'hello', 'another_key' => 123, 4567 => 'third' }$$${'abc', '4567', 'another_key'}",
	"Write a method to generate the pattern shown:@@@" => "{hash = { a: { b: { c: 42, d: 'foo' }, d: 'bar' }, e: 'baz' }}$$${ :a_b_c=>42, :a_b_d=>'foo', :a_d=>'bar', :e=>'baz' }",
	"We have an array of hash of a fixed structure, convert it to the pattern shown:@@@" => "{{a1: 42, b1: { c1: 'foo' }},{a2: 43, b2: { c2: 'bar' }},{a3: 44, b3: { c3: 'baz' }}}$$${'foo', bar', baz'}",
}

MEDIUM_HASH = {
	"Given an array of integers, print the front runners in the array. A front runner is an element which is larger than all the elements in the array to its right.@@@" => "{ 98, 23, 54, 12, 20, 7, 27 }$$${27, 54, 98}",
	"Find the unique element in an array.@@@" => "{12, 1, 12, 3, 12, 1, 1, 2, 3, 3}$$${2}", 
	"Find the maximum element in a Sorted and Rotated array.@@@" => "{5, 6, 1, 2, 3, 4}$$${6}", 
	"Bomber Algorithm - It says that given a string and a sub-string, delete sub-string from string recursively till its empty. Print YES if the string can be made empty by applying the algorithm otherwise NO.@@@" => "{str = 'APAPEXAPEXEX', sub_str = 'APEX'}$$${YES}",
	"There are 9 coins, all except one are the same weight, the odd one is heavier than the rest. You must determine which is the odd one out using an old fashioned balance. You may use the balance twice. Explain how this can be done.@@@" => "{None}$$${None}",
}

HARD_HASH = {
	"Adam, Bob, Clair and Dave are out walking: They come to an old wooden bridge. The bridge is weak and only able to carry the weight of two of them at a time. Because they are in a rush and the light is fading they must cross in the minimum time possible and must carry a torch (flashlight) on each crossing. They only have one torch and it can't be thrown. Because of their different fitness levels and some minor injuries they can all cross at different speeds. Adam can cross in 1 minute, Bob in 2 minutes, Clair in 5 minutes and Dave in 10 minutes. What is the minimum time they would take to cross the bridge?@@@" => "{None}$$${None}",
	"100 people stand in a circle in order 1 to 100. No. 1 has a sword. He kills the next person (i.e. No. 2) and gives the sword to the next living person (i.e. No. 3). All people do the same until only 1 survives. Which number survives to the end?@@@" => "{None}$$${None}",
	"Given an amount V and n coins c1, c2, … cn of different denominations with infinite supply, write an algorithm to find the minimum number of coins required to make amount V.@@@" => "{V = 5, COINS = {1, 2, 3}}$$${NUM_COINS = 2, COINS = {2, 3}}",
	"Given an array with index as date and element as price of a particular stock on that date. Implement an algorithm that given this array will output the maximum profit. You can complete only one buy and sell transactions i.e buy one share and sell the same share at a later date. You cannot perform more than one transaction on a day.@@@" => "{2, 1, 3, 4, 9, 7, 13, 6, 4, 1}$$${12}",
}