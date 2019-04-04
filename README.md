* Create a Song class that provides a method `lyrics` that will return the lyrics to ["Hush Little Baby, Don't Say a Word"](https://www.poetryfoundation.org/poems/46950/hush-little-baby-dont-say-a-word)
* Watch [this](http://www.kytrinyx.com/talks/succession/) video by Katrina Owen
* Refactor your existing solution to meet the following requirements:
    * `lyrics` always returns a string that starts with "Hush little baby, don't say a word," and ends with "You'll still be the sweetest little baby in town!"
    * Each of the middle verses of the song always have two lines: "And if that x", and "y's gonna z".
    * You can determine how to input the `x`, `y`, `z` portions for each verse/the song as a whole.
* Read [this article](https://solnic.codes/2013/12/17/the-world-needs-another-post-about-dependency-injection-in-ruby/), down to the portion that says "Here's a pattern I started using."
* Refactor your existing solution so that a Song can also return the full lyrics to "99 Bottles of Beer", and "Ten Little Monkeys Jumping on a Bed".
* Create a Vocalist class that can learn songs and print the full lyrics to the terminal using a method called `sing`
