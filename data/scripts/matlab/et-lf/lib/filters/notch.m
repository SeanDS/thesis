function [a,b,c,d] = notch(notch,qn,dcGain)
%resonant 2-pole low pass filter in state space representaion
%
%[a,b,c,d] = notch(peak,qp,notch,qn,dcGain);
%
%notch			notch frequency (above peak)
%qn			Q factor of notch
%dcGain			dc gain
%
%Stuart Killbourn (October 95)

zs	= pi*notch*(-1/qn + i*sqrt(4 - 1/(qn^2)));
z	= [conj(zs) zs]';
k	= dcGain;
ps  = notch;
p   = [-2*pi*ps -2 *pi*ps];
[a,b,c,d] = zp2ss(z,p,k);
