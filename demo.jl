#Tutorial 2
#=
Daniel
=#
# ## is a break on the code

# control+c to stop the process
my_integer=5
my_float=5.
my_range=1:7
my_vector=[1, 3, 5]
my_string="hello"
my_character='o'
my_boolean=true

typeof(my_integer)
typeof(my_float)

typeof(
    my_character
)

# use \ to write simbols like alpha
α=5;
#show the command
@show α + my_integer
print("α = $α \n", "My integer is: $(my_integer)")

#println automatically saparated linea

#column vector
A = [1, 3, 5]
#row vector
A = [1 2 3]

ones(3)
zeros(5)
C=[1 3; 5 "test"]
C=[1 3; 5 9]

A = 1:9
# number with a distance o 0.5
B= 1:0.5:9
# secon element of break
B[3]

typeof(C)
eltype(C)
size(C)
length(C)
ndims(C)

#indexing
C[end]
C[1,2]
@show C
@show C[2,:] #show select row*

using LinearAlgebra

C*I
C^2
C.^2 #by element operation

sin.([1 2 3])

inv(C)
inv(C)*C # too costly
C\C # this notation is better

# to installa a package type ], add pkg name

using Random
rand(1)
rand(3)
randn(3)

Random.seed!(1234) #name of the seed
rand(1)
rand(1)

Random.seed!(1234)
rand(1)

#if/else statement
a=3
if a==3
    print("a is 3")
end

a=true
if a
    print("a is true")
end

a ? print("a is true") : nothing

if a 
    print("a is true")
else 
    print("a is no true")
end

b=true

if a | b 
    print("a or b is true (or both)")
end

if a & b  # double & makes faster the process, just evaluate the firs statement. 
    print("a and b are true")
end

#for loops
vals = ["a" "b" "c"]

for val in vals
    println(val)
end

#global
a = 3
for val in vals
    a = a + 1
    return a 
end


for i in eachindex(vals)
    println(vals[i])
end

# index and value 
for (index, value) in enumerate(vals)
    println("Element $index of vals is $value")
end

# Functions
function cobbdouglas(l, k, α, β = 1 - α; A=1)
    y=A*l^α*k^β
    return y
end

cobbdouglas(1, 3, 0.5)

@show output = cobbdouglas(1, 3, 0.5)

cobbdouglas.([1 2], 3, 0.5)

cobbdouglas(l, k, α) = A*l^α*k^(1-α)
cobbdouglas(1, 3, 0.5)

