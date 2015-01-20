![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# RSpec Demo: Luhn's Algorithm

## Objectives

By the end of this, students should be able to:

- Write the shell of an rspec test
- Instantiate an instance of a class in a before block
- Write descriptions/expectations for instance methods
- Write code to make the rspec tests pass

## Instructions

- Fork and clone this repo, change working directory.
- Run `bundle install`.
- Run `rspec --init`.
- Follow along with your instructor. Stage and commit your changes as you progress.
- Push changes to your Github repo `git push origin master`.

## Notes

The Luhn Algorithm calculates a *checksum*, or a simple string/numeric summary of input data. It is useful for checking accidental errors, such as mistyping a digit, but **not** for keeping data secure; it is not an ecnryption algorithm.

[Wikipedia](http://en.wikipedia.org/wiki/Luhn_algorithm) has a nice summary of the algortihm. A copy is available in `algorithm.md` (accessed: 2015-01-20).

Some things to consider as you work through the exercise:

- Write your tests first.
- Use a class to encapsulate related data and behavior.
- Try making each step of the algorithm it's own method (test first).
- Compose these smaller methods into one or two methods that do the actual validation check.
