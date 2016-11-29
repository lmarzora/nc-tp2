1;
tm = 30 * 1e-3; %ms
Vl = -65 * 1e-3; %mV
Vcero = Vl ;
Vtita = -50 * 1e-3; %mv
R = 90 * 1e6; %MOhm


I = [0:0.01:2] .* 1e-9; %nA

for i = 1 : length(I);
	if Vtita - Vl < R*I(i)	
	r(i) = (tm*log((Vl -Vcero + I(i)*R)/(Vl -Vtita + I(i)*R)))^(-1);
	else
	r(i) = 0;
	end
end



plot(I*1e9,r);
title('Tasa de disparo en función de la corriente', 'fontsize', 14)
xlabel('Intensidad de corriente (mA)', 'fontsize',12);
ylabel('Tasa de disparo (Hz)', 'fontsize',12);


