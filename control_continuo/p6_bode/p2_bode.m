close all; clear, clc

% G = (1.151*s + 0.1774)/(s^3 + 0.739*s^2 + 0.921*s)

w = 0.1:0.1:10;
s = w.*1i;
G = (1.151*s + 0.1774)./(s.^3 + 0.739*s.^2 + 0.921*s);
A = abs(G);
dB = 20*log10(A);
phi = angle(G)*180/pi;

subplot(2,1,1)
semilogx(w,dB), grid on, xlabel('omega'), ylabel('dB')
subplot(2,1,2)
semilogx(w,phi), grid on, xlabel('omega'), ylabel('Deg')