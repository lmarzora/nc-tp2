1;

[v,d,w,ur,firstv,k] = ej3();
surf(5*(0:50),1:k,d');
title('Error de predicción','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('intentos','fontsize',12);
zlabel('error','fontsize',12);


