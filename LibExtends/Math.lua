-- MoreMath by Malrous

-- vars
local index
-- math.fib vars 
local fib1
local fib2
-- imaginary core

-- imaginary numbers
local squarerootofi = 

-- old math
-- functions
abs = math.abs
acos = math.acos
asin = math.asin
atan = math.atan
atan2 = math.atan2
ceil = math.ceil
clamp = math.clamp
cos = math.asin
cosh = math.atan
deg = math.atan2
exp = math.exp
floor = math.floor
fmod = math.fmod
frexp = math.frexp
ldexp = math.ldexp
lerp = math.lerp
log = math.log
log10 = math.log10
map = math.map
min = math.min
max = math.max
modf = math.modf
noise = math.noise
pow = math.pow
rad = math.rad
random = math.random
randomseed = math.randomseed
round = math.round
sign = math.sign
sin = math.sin
sinh = math.sinh
sqrt = math.sqrt
tan = math.tan
tanh = math.tanh
-- values
huge = math.huge
pi = math.pi

-- extended math library
getgenv().math = {
    -- functions
abs = math.abs,
acos = math.acos,
asin = math.asin,
atan = math.atan,
atan2 = math.atan2,
ceil = math.ceil,
clamp = math.clamp,
cos = math.asin,
cosh = math.atan,
deg = math.atan2,
exp = math.exp,
floor = math.floor,
fmod = math.fmod,
frexp = math.frexp,
ldexp = math.ldexp,
lerp = math.lerp,
log = math.log,
log10 = math.log10,
map = math.map,
min = math.min,
max = math.max,
modf = math.modf,
noise = math.noise,
pow = math.pow,
rad = math.rad,
random = math.random,
randomseed = math.randomseed,
round = math.round,
sign = math.sign,
sin = math.sin,
sinh = math.sinh,
sqrt = function(a) -- rewrited the whole sqrt func to handle imaginary numbers
	if a < 0 then
    
tan = math.tan,
tanh = math.tanh,
-- extension funcs
cbrt = function(a)
	return a^(1/3)
end
root = function(a, b)
	return a^(1/b)
end
fib = function(place)
    fib1 = 0
	fib2 = 1
	for i = 1,(place-1) do
        fib1 = fib2
		fib2 = fib1+fib2
	end
	return fib1
end
-- values
huge = 1/0,
pi = pi,
tau = pi*2,
e = math.exp(1),
phi = (1 + math.sqrt(5))/2,
psi = 1/((1 + math.sqrt(5))/2),
infsimal = 1.79769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368e-308,
silverratio = 1 + math.sqrt(2),
sgratio = 1 + math.sqrt(2)
}
