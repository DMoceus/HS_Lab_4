> module Lab4
>	where

> hLen :: (Num u, Eq t) => ([t] -> u) -> [t] -> u
> hLen = (\f x -> if x == [] then 0 else 1 + (f (tail x)))
> myLength ls = if ls == [] then 0 else 1 + myLength (tail ls)

hLen is not recursive because it does not call itself
hLen is a HOF because it takes in a function and applies it to multiple elements
hLen sum [4,5,6] = 12
hLen head [4,5,6] = 6

No it does not, it merely applies whatever function it is given to its list

hLen myLength [4,5,6] = 3

hLen and myLength do not have any explicit relation, the former is just capable of taking the latte r as an argument.

> factorial :: Integral a => a -> a
> factorial n = if n == 0 then 1 else n * (factorial (n-1))

> hFact :: Integral a => (a -> a) -> a -> a
> hFact = (\f e -> if e == 0 then 1 else e * (f (e-1)))

hFact (^2) 4 -> 36
hFact factorial 5 -> 120

> factorial' = hFact factorial'

factorial' => Integer -> Integer

> fix f = f (fix f);

fix => (t -> t) -> t

f ( fix f ) => Appies "f" to result of "fix f"
f fix f     => Applies "f" to "fix", then applies that result to "f"

factorial 6			-> 720
hFact factorial 6	-> 720
factorial' 6		-> 720
fix hFact 6			-> 720
