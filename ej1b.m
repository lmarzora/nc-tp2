1;
tm = 30 * 1e-3; %ms
Vl = -65 * 1e-3; %mV
Vcero = Vl ;
Vtita = -50 * 1e-3; %mv
R = 90 * 1e6; %MOhm



for i = 1 : length();
	r(i) = (tm/(1 + gsyn/gl)) * log((-Vcero - Vl + (gsyn/gl)*(Vsyn - Vcero))/(-Vtita - Vl + (gsyn/gl)*(Vsyn - Vtita)))^(-1);
end



plot(I*1e9,r);
title('Tasa de disparo en función de la conductancia synaptica', 'fontsize', 14)
xlabel('Conductancia ', 'fontsize',12);
ylabel('Tasa de disparo (Hz)', 'fontsize',12);

print('tasa1.jpg');
