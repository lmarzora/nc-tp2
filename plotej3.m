1;
%graphics_toolkit('gnuplot');
[v,d,w,ur,firstv,k] = ej3();

x = [0:50] * 5;
markerSize = 10;


subplot(5,2,1);
plot(x,u(1:51),'.','linewidth',2,'markersize',markerSize);
title('estímulo','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('u(t)','fontsize',12);

subplot(5,2,2);
plot(x,u(1:51),'.','linewidth',2,'markersize',markerSize);
title('estímulo','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('u(t)','fontsize',12);

subplot(5,2,3);
plot(x,r(1:51),'.','linewidth',2,'markersize',markerSize);
title('recompensa','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('r(t)','fontsize',12);

subplot(5,2,4);
plot(x,r(1:51),'.','linewidth',2,'markersize',markerSize);
title('recompensa','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('r(t)','fontsize',12);

subplot(5,2,5);
plot(x,firstv(1:51),'.','linewidth',2,'markersize',markerSize);
title('predicción de recompenzas futuras','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('v(t)','fontsize',12);

subplot(5,2,6);
plot(x,v(1:51),'.','linewidth',2,'markersize',markerSize);
title('predicción de recompenzas futuras','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('v(t)','fontsize',12);

subplot(5,2,7);
plot(x(2:end),diff(firstv(1:51)),'.','linewidth',2,'markersize',markerSize);
title('diferencia de predicción de recompensas futuras','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('diff(v)','fontsize',12);

subplot(5,2,8);
plot(x(2:end),diff(v(1:51)),'.','linewidth',2,'markersize',markerSize);
title('diferencia de predicción de recompensas futuras','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('diff(v)','fontsize',12);

subplot(5,2,9);
plot(x(2:end),d(1:50,1),'.','linewidth',2,'markersize',markerSize);
title('error de predicción','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('delta','fontsize',12);

subplot(5,2,10);
plot(x(2:end),d(1:50,end),'.','linewidth',2,'markersize',markerSize);
title('error de predicción','fontsize',14);
xlabel('tiempo (ms)','fontsize',12);
ylabel('delta','fontsize',12);


