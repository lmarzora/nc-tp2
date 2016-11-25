1;

Iapp = 1 * 1e-9  ; %nA
Cm = 500 * 1e-12 ; %pF
gl = 25 * 1e-9; %nS
Vl = -70 * 1e-3; %mV
Vtita = -54 * 1e-3; %mV
Vcero = -60 * 1e-3; %mV

tv = Cm/ gl ; %ns
Vinf = Vl  + (Iapp/gl) ;


V(1) = Vl ;
dt = 0.2 * 1e-3; %ms
count = 0 ;
i = 1 ;

while count < 10
	i = i + 1;
	V(i) = Vinf + (V(i-1) -Vinf) * exp(-(dt/tv));
	printf("time %d V %f count %d\n",i,V(i),count);
	fflush(stdout);
	if V(i) > Vtita
		V(i+1) = Vcero;
		i = i + 1;
		count = count + 1;
	end

	 
end

Vinf = Vl;

epsilon = 1e-5;

while V(i) > Vl + epsilon
	i = i + 1;
	V(i) = Vinf + (V(i-1) -Vinf) * exp(-(dt/tv));
	printf("time %d V %f\n",i,V(i));
	fflush(stdout);

end


ejeX =1000*(1:i)*dt; 


plot(ejeX ,1000*V);
title('Tren de picos','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('Voltaje (mV)','fontsize',12);
hold on;
plot(ejeX,ones(1,i)*Vtita*1000,'--');
plot(ejeX,ones(1,i)*Vcero*1000,'--');
hold off
