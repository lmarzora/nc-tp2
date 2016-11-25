1;

% inicializar parametros y pasar a las mismas unidades (A V Ohm Farad s)
Iapp = 1 * 1e-9  ; 
Cm = 500 * 1e-12 ; 
gl = 25 * 1e-9; 
Vl = -70 * 1e-3; 
Vtita = -54 * 1e-3; 
Vcero = -60 * 1e-3; 
tv = Cm/ gl ; 
Vinf = Vl  + (Iapp/gl) ;
V(1) = Vl ;
dt = 0.2 * 1e-3; 
count = 0 ;
i = 1 ;


% iterar hasta conseguir 10 disparos
while count < 10
	i = i + 1;
	V(i) = Vinf + (V(i-1) -Vinf) * exp(-(dt/tv));
	if V(i) > Vtita
		V(i+1) = Vcero;
		i = i + 1;
		count = count + 1;
	end

	 
end


% Corto corriente
Vinf = Vl;

epsilon = 1e-5;


% Iterar hasta volver al reposo
while V(i) > Vl + epsilon
	i = i + 1;
	V(i) = Vinf + (V(i-1) -Vinf) * exp(-(dt/tv));

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
