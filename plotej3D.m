1;
source ej3.m

[v,d,w,ur,firstv] = ej3();
surf(5*(0:50),1:500,d');
title('Error de prediccion','fontsize',14);
xlabel('time (ms)','fontsize',12);
ylabel('intentos','fontsize',12);
zlabel('error','fontsize',12);


