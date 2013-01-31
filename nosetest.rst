Testing
=======

Presented by Adina Howe.

Some notes on testing
---------------------

Adapted from Titus Brown and Anthony Scopatz.

When we say "testing" we really mean *automated testing*.
The central problems addressed by testing are *correctness* and
*reproducibility*.  

Unit tests address *small units of code*, like functions.  They
are used to isolate and nail down and prove the functionality
of potentially complicated little functions.

Unless you write flawless, bug-free, perfectly accurate, fully precise, and predictable code every time, you must test your code in order to trust it enough to answer in the affirmative to at least a few of the following questions:

Does your code work?

Always?

Does it do what you think it does?

Does it continue to work after changes are made?

Does it continue to work after system configurations or libraries are upgraded?

Does it respond properly for a full range of input parameters?

What about edge or corner cases?

What's the limit on that input parameter?

How will it affect your publications?

Assert statements:
~~~~~~~~~~~~~~~~~~

Code looks like this::


   def combine_values(func, values):
      assert len(values) > 0, 'Cannot combine values from empty list'	
      current = values[0]
      for i in range(1, len(values)):
         current = func(current, values[i])
      return current

   def add(a,b):
      return a + b

   numbers = [1,3,6,7,9]
   print combine_values(add, numbers)
   print combine_values(add, [])


Nosetests:
~~~~~~~~~~

We're going to be using the nose testing framework, which is
just a framework that makes it easy to find and execute
tests.

Basically, 'nose' creates a command 'nosetests' that finds and
runs tests.  The idea is that you won't need to register new tests.

A test function looks like this::

   def test_something():
      # run some code
      # fail loudly or succeed silently

Here's a real example::

    def test_1():
        result = combine_values(add, [1,1,1]):
        assert result == 3

    def test_2():
        result = combine_values(add, [0]):
        assert result == 0



More reading
~~~~~~~~~~~~

For more reading, see:

   http://software-carpentry.org/4_0/test/

and

   http://ivory.idyll.org/articles/nose-intro.html

and also

   http://ivory.idyll.org/blog/software-quality-death-spiral.html



