https://github.com/BenSanex/phase-0/blob/master/week-4/simple-string.rb

https://github.com/BenSanex/phase-0/blob/master/week-4/basic-math.rb

https://github.com/BenSanex/phase-0/blob/master/week-4/defining-variables.rb



What does puts do?

Puts prints something to the terminal in a new line.

What is an integer? What is a float?

An integer is a number with no decimals, a float is a number with a decimal.

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

When dividing with integers, if the number isn't an integer is rounds down to the nearest integer, with floats it will include the decimals. It is important in programming because
sometimes you are dealing with numbers of things that wouldn't make sense to have a decimal, like people.

```
2.3.0 :002 > p 24 * 365
8760
 => 8760 
2.3.0 :003 > p 60 * 24 * 365 * 10                                                                                                                                                         
5256000
 => 5256000 
 
```


How does Ruby handle addition, subtraction, multiplication, and division of numbers?

If you have no decimal in your numbers, ruby will round everything down to the nearest integer unless you specify that it is a float. `+` is addition `-` is subtraction `/` is division and `*` is multiplication.

What is the difference between integers and floats?

Integers are round numbers with no decimals, floats can handle decimals.

What is the difference between integer and float division?

Integer division will get rounded down to the nearest integer, floats will include the decimal.

What are strings? Why and when would you use them?

Strings can basically be anything, such as text, a number or a symbol. Strings are denoted by "s or 's.  They are used for many situations where you need to output text or other non numerical data.

What are local variables? Why and when would you use them?

A local variable is a variable that is only attributed to a specific block or method or loop and has no value outside of where it is used. 

How was this challenge? Did you get a good review of some of the basics?

I needed the refresher since my only Ruby experience was in the interview prep, so I've forgotten a lot.  My biggest struggle was remembering syntax and some of the specific methods, but planning out how the programs would work was easy.
