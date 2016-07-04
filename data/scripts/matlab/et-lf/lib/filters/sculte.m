function [a,b,c,d] = sculte(peak,qp,notch,qn,dcGain)

%resonant 2-pole low pass filter in state space representaion
%
%[a,b,c,d] = sculte(peak,qp,notch,qn,dcGain);
%
%peak			frequency cut (Hz)
%qp			Q factor of resonance
%notch			notch frequency (above peak)
%qn			Q factor of notch
%dcGain			dc gain
%
%Stuart Killbourn (October 95)

z	= pi*notch*(-1/qn + i*sqrt(4 - 1/(qn^2)));
z	= [conj(z) z]';
p	= pi*peak*(-1/qp + i*sqrt(4 - 1/(qp^2)));
p	= [conj(p) p]';
k	= dcGain*(peak/notch)^2;

[a,b,c,d] = zp2ss(z,p,k);
