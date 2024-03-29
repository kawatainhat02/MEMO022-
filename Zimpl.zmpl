NAME 
ROWS
COLUMNS
RHS
BOUNDS
ENDATA


set V :={"a","b","s","t"};
set A :={<"s","a">, <"s","b">, <"a","b">, <"a","t">, <"b","t">}; param c[A] := <"s","a"> 17, <"s","b"> 47, <"a","b"> 19, <"a","t"> 53,
<"b","t"> 23; defset dminus(v) := {<i,v> in A}; defset dplus(v) := {<v,j> in A};
var x[A] binary;
minimize cost: sum<i,j> in A: c[i,j] * x[i,j]; subto fc:
forall <v> in V - {"s","t"}:
sum<i,v> in dminus(v): x[i,v] == sum<v,i> in dplus(v): x[v,i];
subto uf:
sum<s,i> in dplus("s"): x[s,i] == 1;

set V:= {read "nodes.txt" as "<1s>"}; set A:= {read "arcs.txt" as "<1s,2s>"}; param c[A] := read "arcs.txt" as "<1s,2s>3n";

-t format
-o name
-F filter
-l length -n cform
-P filter
-s seed
-v 0..5
-D name=val
-b 
-f 
-h 
-m 
-O 
-r 
-V

a∧b, a**b a+b
a-b
a*b
a/b
a mod b
abs(a)
sgn(a)
floor(a)
ceil(a)
round(a)
a!
min(S)
min(s in S) e(s) 
max(S)
max(s in S) e(s)
min(a,b,c,...,n) 
max(a,b,c,...,n) 
sum(s in S) e(s) 
prod(s in S) e(s) 
card(S) 
random(m,n) 
ord(A,n,c)
length(s)
if a then b
else c end
sqrt(a) square root
log(a) logarithm to base 10 
ln(a) natural logarithm exp(a)
