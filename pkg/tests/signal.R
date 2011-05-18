library("signal")
# bartlett
bartlett(1)
bartlett(2)
bartlett(51)
# bilinear
# blackman
blackman(1)
blackman(2)
blackman(51)
# boxcar
boxcar(2)
boxcar(51)
# butter
butter(4, 0.1, type="pass", plane="z") 
butter(buttord(1000/(10000/2), 1200/(10000/2), 0.5, 29))    # buttord.Rd
butter(5, 0.1)  # cheby1.Rd
# buttord
buttord(1000/(10000/2), 1200/(10000/2), 0.5, 29)
# cheb1ord
cheb1ord(1000/(10000/2), 1200/(10000/2), 0.5, 29)
# chebwin
chebwin(50, 100)
# cheby1
cheby1(cheb1ord(1000/(10000/2), 1200/(10000/2), 0.5, 29))   # cheb1ord.Rd
cheby1(5, 3, 0.1)
cheby1(5, 0.5, 0.5)
cheby1(3, 3, 2*c(1000, 3000)/8000, 'stop')  # grpdelay.R
# cheby2
cheby2(5, 20, 0.5)  # cheby1.Rd
# chirp
chirp(seq(0, 0.6, len=5000))
chirp(seq(0, 5, by=0.001))
chirp(seq(-2, 15, by=0.001), 400, 10, 100, 'quadratic')
chirp(seq(0, 5, by=1/8000), 200, 2, 500, "logarithmic")
chirp(seq(0, 2, by=0.001), 0, 2, 500)   # specgram.R
chirp(seq(0, 2, by = 0.01), 2, 0.5, 10, 'quadratic') + sin(2*pi*seq(0, 2, by = 0.01)*0.4)  # decimate.Rd
# decimate
decimate(chirp(seq(0, 2, by = 0.01), 2, 0.5, 10, 'quadratic') + sin(2*pi*seq(0, 2, by = 0.01)*0.4), 4)
# ellip
ellip(5, 3, 40, 0.1)
ellip(ellipord(1000/(10000/2), 1200/(10000/2), 0.5, 29))    # ellipord.Rd
# ellipke
signal:::ellipke(c(0.0, 0.01, 0.1, 0.5, 0.9, 0.99, 1.0)) # test: last value ??
# ellipord
ellipord(c(0.1, 0.2), 0.4, 1, 90)
ellipord(1000/(10000/2), 1200/(10000/2), 0.5, 29)
# fftfilt
set.seed(1)
fftfilt(rep(1, 10)/10, sin(2*pi*seq(0, 1, len = 100)*2.3) + 0.25*rnorm(length(seq(0, 1, len = 100))))   # example with random numbers, set.seed
# filter
set.seed(1)
filter(butter(3, 0.1), sin(2*pi*seq(0, 1, len = 100)*2.3) + 0.25*rnorm(length(seq(0, 1, len = 100))))   # example with random numbers, set.seed
# filtfilt
set.seed(1)
filtfilt(butter(3, 0.1), sin(2*pi*seq(0, 1, len = 100)*2.3) + 0.25*rnorm(length(seq(0, 1, len = 100)))) # example with random numbers, set.seed
# fir1
fir1(40, 0.3)
fir1(10, c(0.3, 0.5), "stop")
fir1(10, c(0.3, 0.5), "pass")
# fir1(15, c(0.2, 0.5), "stop")   # error
# fir1(15, c(0.2, 0.5), "stop", 'noscale') # error
# fir1(2, 0.5, 'low', "hanning", 'scale') # error
# fir1(2, 0.5, 'low', "hanning", 'scale') # error
fir1(2, 0.5, 'low', hamming(3), 'scale') # ??
# fir1(10, 0.5, 'noscale') # error
# fir1(10, 0.5, 'low', 'hamming', 'noscale') # error
fir1(10, 0.5, 'high')
# fir1(10, 0.5, 'high', 'hamming', 'scale') # error
# fir1(10, 0.5, 'boxcar') # error
# fir1(10, 0.5, 'low', 'boxcar', 'scale') # error
# fir1(10, 0.5, 'hanning', 'scale') # error
# fir1(10, 0.5, 'scale', 'hanning', 'low') # error
# fir1(10, 0.5, 'hanning', 'noscale') # error
# fir1(10, 0.5, 'noscale', 'hanning', 'low') # error
# fir1(10, 0.5, 'boxcar', c()) # error
# fir1(10, 0.5, 'boxcar') # error
fir1(40, 2*(0.3*8000/2)/8000)    # grpdelay.R
# fir2
fir2(100, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0))
fir2(50, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0), 512, 0)
fir2(50, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0), 512, 25.6)
fir2(50, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0), 512, 51.2)
fir2(20, c(seq(0, 2/3-0.0001, length=200), 2/3, 1), c((1 - (seq(0, 2/3-0.0001, length=200)/2/3)^2)^(-1/4), 0, 0))
fir2(50, c(seq(0, 2/3-0.0001, length=200), 2/3, 1), c((1 - (seq(0, 2/3-0.0001, length=200)/2/3)^2)^(-1/4), 0, 0))
fir2(200, c(seq(0, 2/3-0.0001, length=200), 2/3, 1), c((1 - (seq(0, 2/3-0.0001, length=200)/2/3)^2)^(-1/4), 0, 0))
# flattopwin
flattopwin(1, sym = 'periodic')
flattopwin(2, sym = 'symmetric')
flattopwin(2, sym = 'periodic')
flattopwin(51, sym = 'symmetric')
flattopwin(51, sym = 'periodic')
# fractdiff
# freqs
unclass(freqs(c(1, 2), c(1, 1), seq(0, 4, length=128)))
# freqz
unclass(freqz(c(0.292893218813452, 0.585786437626905, 0.292893218813452), c(1, 0, 0.171572875253810), 32)) # test ??
unclass(freqz(c(1, 1, 1)/3, 1, 32, 'whole', plot=F)) # test ??
unclass(freqz(c(1, 1, 1)/3, 1, 16, 'half')) # test ??
unclass(freqz(c(1, 1, 1)/3, 1, 16, 320)) # test ??
unclass(freqz(c(1, 1, 1)/3, 1, c(0:15)*10, 320)) # test: h, last value f ??
unclass(freqz(c(1, 1, 1)/3, 1, 32, 'whole', 320)) # test h, last value f ??
unclass(freqz(c(1, 0, -1), c(1, 0, 0, 0, 0.25)))
unclass(freqz(butter(5, 0.1)))  # cheby1.Rd
unclass(freqz(cheby1(5, 3, 0.1)))   # cheby1.Rd
unclass(freqz(cheby1(5, 0.5, 0.5))) # cheby1.Rd
unclass(freqz(cheby2(5, 20, 0.5)))  # cheby1.Rd
unclass(freqz(butter(5, 0.1)))      # ellip.Rd
unclass(freqz(ellip(5, 3, 40, 0.1)))    # ellip.Rd
unclass(freqz(fir1(40, 0.3)))                   # fir1.Rd
unclass(freqz(fir1(10, c(0.3, 0.5), "stop")))   # fir1.Rd
unclass(freqz(fir1(10, c(0.3, 0.5), "pass")))   # fir1.Rd
unclass(freqz(fir2(100, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0))))       # fir2.Rd
unclass(freqz(fir2(50, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0), 512, 0)))    # fir2.R
unclass(freqz(fir2(50, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0), 512, 25.6))) # fir2.R
unclass(freqz(fir2(50, c(0, 0.3, 0.3, 0.6, 0.6, 1), c(0, 0, 1, 1/2, 0, 0), 512, 51.2))) # fir2.R
unclass(freqz(fir2(20, c(seq(0,2/3-0.0001,length=200), 2/3, 1), c((1 - (seq(0,2/3-0.0001,length=200)/2/3)^2)^(-1/4), 0, 0))))   # fir2.R
unclass(freqz(fir2(50, c(seq(0,2/3-0.0001,length=200), 2/3, 1), c((1 - (seq(0,2/3-0.0001,length=200)/2/3)^2)^(-1/4), 0, 0))))   # fir2.R
unclass(freqz(fir2(200, c(seq(0,2/3-0.0001,length=200), 2/3, 1), c((1 - (seq(0,2/3-0.0001,length=200)/2/3)^2)^(-1/4), 0, 0))))  # fir2.R
# gausswin
gausswin(51, 5)
gausswin(2) 
gausswin(2, 5)
# grpdelay
unclass(grpdelay(c(1, 0.9), 1, 512, 'whole', 1))
unclass(grpdelay(poly(c(1/0.9*exp(1i*pi*0.2), 0.9*exp(1i*pi*0.6))), poly(c(0.9*exp(-1i*pi*0.6), 1/0.9*exp(-1i*pi*0.2))), 512, 'whole', 1))
unclass(grpdelay(c(0, 1))) # test
unclass(grpdelay(c(0, 1), 1)) # test
unclass(grpdelay(c(0, 1), 1, 4)) # test ??
unclass(grpdelay(c(0, 1), 1, 4, 'whole')) # test ??
unclass(grpdelay(c(0, 1), 1, 4, 0.5)) # test ??
unclass(grpdelay(c(0, 1), 1, 4, 'whole', 1)) # test ??
unclass(grpdelay(c(1, -0.9i), c(), 4, TRUE, 1)) # test: ??
unclass(grpdelay(1, c(1, 0.9), 4)) # test ??
unclass(grpdelay(c(1, 2), c(1, 0.5, 0.9), 4)) # test ??
unclass(grpdelay(c(1, 2), c(1, 0.5, 0.25), 4)) # test ??
unclass(grpdelay(conv(c(1, 2), c(0.25, 0.5, 1)), 1, 4)) # test ??
unclass(grpdelay(c(0.09026579, 0.00000000, 0.27079736, 0.00000000, 0.27079736, 0.00000000, 0.09026579),
c(1.000000e+00, 1.110223e-16, -6.905559e-01, 4.440892e-16, 8.018905e-01, -1.665335e-16, -3.892083e-01), 256, FALSE, 8000)) # test ??
unclass(grpdelay(c(0.09026579, 0.00000000, 0.27079736, 0.00000000, 0.27079736, 0.00000000, 0.09026579),
c(1.000000e+00, 1.110223e-16, -6.905559e-01, 4.440892e-16, 8.018905e-01, -1.665335e-16, -3.892083e-01), 512, TRUE, 8000)) # test ??
# hamming
hamming(1)
hamming(2)
hamming(5)
hamming(51)
# hanning
hanning(1)
hanning(2)
hanning(5)
hanning(51)
# impz
unclass(impz(butter(5, 0.3)))
unclass(impz(ellip(5, 0.5, 30, 0.3)))
# interp1
interp1(c(0:10), sin(2*pi*c(0:10)/5), seq(0,11,length=500), 'linear', extrap = TRUE)
interp1(c(0:10), sin(2*pi*c(0:10)/5), seq(0,11,length=500), 'spline', extrap = TRUE)
interp1(c(0:10), sin(2*pi*c(0:10)/5), seq(0,11,length=500), 'pchip', extrap = TRUE)
interp1(c(0:10), sin(2*pi*c(0:10)/5), seq(0,11,length=500), 'cubic', extrap = TRUE)
interp1(c(0:10), sin(2*pi*c(0:10)/5), seq(0,11,length=500), 'nearest', extrap = TRUE)
interp1(c(0, 4, 5, 6, 8, 10), sin(2*pi*c(0, 4, 5, 6, 8, 10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'linear')
interp1(c(0, 4, 5, 6, 8, 10), sin(2*pi*c(0, 4, 5, 6, 8, 10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'spline')
interp1(c(0, 4, 5, 6, 8, 10), sin(2*pi*c(0, 4, 5, 6, 8, 10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'cubic')
interp1(c(0, 4, 5, 6, 8, 10), sin(2*pi*c(0, 4, 5, 6, 8, 10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'nearest')
interp1(c(0:4, 6:10), sin(2*pi*c(0:4, 6:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'linear')
interp1(c(0:4, 6:10), sin(2*pi*c(0:4, 6:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'spline')
interp1(c(0:4, 6:10), sin(2*pi*c(0:4, 6:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'cubic')
interp1(c(0:4, 6:10), sin(2*pi*c(0:4, 6:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'nearest')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'linear')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'spline')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'cubic')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'nearest')
interp1(c(0:1, 3:10), sin(2*pi*c(0:1, 3:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'linear')
interp1(c(0:1, 3:10), sin(2*pi*c(0:1, 3:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'spline')
interp1(c(0:1, 3:10), sin(2*pi*c(0:1, 3:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'cubic')
interp1(c(0:1, 3:10), sin(2*pi*c(0:1, 3:10)/5), sin(2*pi*seq(0, 10, length=500)/5), 'nearest')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, by=0.05)/5), 'linear')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, by=0.05)/5), 'spline')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, by=0.05)/5), 'cubic')
interp1(c(0:10), sin(2*pi*c(0:10)/5), sin(2*pi*seq(0, 10, by=0.05)/5), 'nearest')
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(min(c(0:5))-1, max(c(0:5))+1))    # test
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(0:5), 'nearest') # test, last value??
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(-1, max(c(0:5))+1)) # test
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(0:5), 'linear')   # test, last value?
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(0:5), 'cubic') # test, last value?
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(0:5), 'spline')   # test, last value?
interp1(c(1:5), seq(3, 11, by=2), c(0,6), 'linear', 'extrap') # test, last value?
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(-1, max(c(0:5))+1), 'linear', 5)   # test
interp1(c(1:2), 1:2, 1.4, 'nearest')  # test
interp1(c(1:4), 1:4, 1.4, 'cubic')    # test
interp1(c(1:3), 1:3, 1.4, 'spline')   # test
interp1(seq(1, 4, by=2), seq(1, 4, by=2), 1.4, 'nearest')   # test
interp1(seq(1, 8, by=2), seq(1, 8, by=2), 1.4, 'cubic') # test
interp1(seq(1, 6, by=2), seq(1, 6, by=2), 1.4, 'spline')    # test
interp1(seq(1, 4, by=2), seq(1, 4, by=2), c(0,1,1.4,3,4), 'linear') # test ??
# interp1(1:2, 1:2, 1.4, 'linear') # error
interp1(seq(1, 4, by=2), seq(1, 4, by=2), c(0, 1, 1.4, 3, 4), 'linear') # test ??
interp1(t(c(0:5)), t(sin(2*pi*c(0:5)/5)), c(), 'nearest') # test isempty
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(), 'nearest')    # test isempty
interp1(t(c(0:5)), t(sin(2*pi*c(0:5)/5)), c(), 'linear') # test isempty
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(), 'linear')    # test isempty
interp1(t(c(0:5)), t(sin(2*pi*c(0:5)/5)), c(), 'cubic') # test isempty
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(), 'cubic')    # test isempty
interp1(t(c(0:5)), t(sin(2*pi*c(0:5)/5)), c(), 'spline') # test isempty
interp1(c(0:5), sin(2*pi*c(0:5)/5), c(), 'spline')    # test isempty
x2 <- chirp(seq(0, 2, by = 0.01), 2, 0.5, 10, 'quadratic') + sin(2*pi*seq(0, 2, by = 0.01)*0.4)
interp(x2[seq(1, length(x2), by = 4)], 4, 4, 1)
# kaiser
kaiser(2, 5)
kaiser(2, 10)
kaiser(101, 2)
kaiser(101, 10)
kaiser(101, 50)
# kaiserord
kaiserord(c(1200, 1500), c(1, 0), c(0.1, 0.1), 11025)
kaiserord(c(1000, 1500), c(0, 1), c(0.1, 0.1), 11025)
kaiserord(c(1000, 1200, 3000, 3500), c(0, 1, 0), 0.1, 11025)
kaiserord(100 * c(10, 13, 15, 20, 30, 33, 35, 40), c(1, 0, 1, 0, 1), 0.05, 11025)
# m2R
# pchip
pchip(c(0:10), sin(2*pi*c(0:10)/5), seq(0, 11, length=500))
pchip(c(0:1, 3:10), sin(2*pi*c(0:1, 3:10)/5), seq(0, 10, length=500))
pchip(c(0:10), sin(2*pi*c(0:10)/5), seq(0, 10, length=500))

m <- diff(cbind(sin(seq(0, pi, length=5)), cos(seq(0, pi, length=5)))) / (seq(0, pi, length=5)[2]-seq(0, pi, length=5)[1])
b <- cbind(sin(seq(0, pi, length=5)), cos(seq(0, pi, length=5)))[1:4,]
print(pp <- signal:::mkpp(seq(0, pi, length=5), cbind(as.vector(m), as.vector(b))))
signal:::ppval(pp, seq(0, pi, length=5))   
# poly
poly(c(1, -1))
poly(roots(1:3))
poly(matrix(1:9, 3, 3))
poly(c(1/0.9*exp(1i*pi*0.2), 0.9*exp(1i*pi*0.6)))   # grpdelay.Rd
poly(c(0.9*exp(-1i*pi*0.6), 1/0.9*exp(-1i*pi*0.2))) # grpdelay.Rd
# remez
remez(15, c(0, 0.3, 0.4, 1), c(1, 1, 0, 0))
# resample
resample(sin(2*pi*c(0:10)/5), c(0:10)[2], seq(0, 10.95, by=0.05)[2])
# sftrans
# sgolay
t <- t(c(0:2^12-1))/(2^12)
dt <- (t(c(0:2^12-1))/(2^12))[2]-(t(c(0:2^12-1))/(2^12))[1]
d <- 1+exp(-3*(t-0.5))
dd <- -3*exp(-3*(t-0.5))
d2d <- 9*exp(-3*(t-0.5))
d3d <- -27*exp(-3*(t-0.5))
x <- d*sin((2*pi*50)*t)
dx <- dd*sin((2*pi*50)*t) + (2*pi*50)*d*cos((2*pi*50)*t)
d2x <- (d2d-(2*pi*50)^2*d)*sin((2*pi*50)*t) + 2*(2*pi*50)*dd*cos((2*pi*50)*t)
d3x <- (d3d-3*(2*pi*50)^2*dd)*sin((2*pi*50)*t) + (3*(2*pi*50)*d2d-(2*pi*50)^3*d)*cos((2*pi*50)*t)
sgolayfilt(x, sgolay(8, 41, 0, dt)) # test ??
sgolayfilt(x, sgolay(8, 41, 1, dt)) # test ??
sgolayfilt(x, sgolay(8, 41, 2, dt)) # test ??
sgolayfilt(x, sgolay(8, 41, 3, dt)) # test ??
# sgolayfilt
sgolayfilt(c(rep(0, 15), rep(10, 10), rep(0, 15)))
sgolayfilt(cos(2*pi*seq(0, 1, by=0.01)*3), 3, 5)  # demo
# specgram
unclass(specgram(chirp(seq(0, 2, by = 1/1000), 0, 2, 500)))  # test
unclass(specgram(chirp(seq(-2, 15, by = 0.001), 400, 10, 100, 'quadratic')))
unclass(specgram(chirp(seq(0, 5, by = 1/8000), 200, 2, 500, "logarithmic"), Fs = 8000))
unclass(specgram(chirp(seq(0, 2, by=0.001), 0, 2, 500), 2^ceiling(log2(abs(ceiling(100*1000/1000)))), 1000, ceiling(100*1000/1000), ceiling(100*1000/1000)-ceiling(20*1000/1000)))

# triang
triang(1)   # test
triang(2)   # test
triang(3)   # test
triang(4)   # test
triang(51)
# unwrap
unwrap(c(seq(0, 2*pi, length=500), seq(0, 2*pi, length=500)))
# zplane
