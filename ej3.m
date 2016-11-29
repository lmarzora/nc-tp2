function [v,d,w,ur,firstv,k] = ej3()


	v = zeros(1,52);
	ur = zeros(1,51);
	w = zeros(1,51);
	d = zeros(51,1);
    firstv = zeros(1,52);
	epsilon = 0.2;
	lambda = 0.1;
	k=0;
while(k<=1 || norm(d(:,k)-d(:,k-1))>1e-5)
	k=k+1;
	for t = 2:51
		ur(t) = lambda * ur(t-1) + (1-lambda) * u(t);
		v(t) = w(1:t) * u(t:-1:1)';
		d(t,k)=  r(t) +  v(t+1) - v(t);
		w(1:t) =  w(1:t) + epsilon * d(t,k) * ur(t:-1:1); 	
	end
	if k==1
		firstv = v;
	end
end

%surf(5*(1:50),1:tries,d');

end
	
