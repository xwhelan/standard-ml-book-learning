# Chapter 1 - Standard ML

Good definitions of key terms:

Functional programming
: where programs consist of operating on simple data structures
_mutable_ objects
: can be updated using an assignment command
modules:
: parts of the program can be specified and coded separately

The type system enforces design by contract

Quote I need to rediscover: "All programs transform streams of characters into different streams of characters," which could also describe a Turing machine

Oh, Pascal! A comparison of imperative and functional GCD:

```pascal
function gcd(m,n: integer) : integer;
  var prevm: integer;
begin
  while m<>0 do
    begin prevm := m; m := n mod m; n := prevm end;
  gcd := n
end;
```

By comparsion, a recursive definiton in Standard ML:

```sml
fun gcd(m,n) =
    if m=0 then n
           else gcd(n mod m, m);
```

The example says more about Pascal than it does about SML ritght now.

Some features of a functional language:

- functions
- recursion
- pattern matching

An example of pattern matching, this time with SML vs. Lisp:

```sml
fun length []
  | length (x::xs) = 1 + length xs;
```

Parentheses are optional, newlines are ignored in parsing, and the compiler matches arguments

Lisp doesn't do that here:

```scheme
(define (length x)
  (if (null? x)
    0
    (+ 1 (length (cdr x)))))
```

Polymorphic type checking => generics, higher order functions, infinite data structures

The recursive GCD definition is an _executable specification_

Bottom up optimization comes from profiling

Tactics, Tacticals, and a history of proof checkers

From the standard library, defining:

Vector
: an immutable array

> We cannot soon expect to have ML programs running in our digital watches.

Funny words in retrospect, written in the 1996 second edition

## TODO

I skimmed through the history of proof checkers and LCF, an interesting aside, but the code examples left me chomping at the bit.

This is all vaguely familiar, as the structure of the language has given rise to OCaml, Haskell, Rust, and F#. These are all "what if Standard ML but..."
