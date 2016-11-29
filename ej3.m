function [v,d,w,ur,firstv] = ej3()

	tries = 500;

	v = zeros(1,52);
	ur = zeros(1,51);
	w = zeros(1,51);
	d = zeros(51,tries);

	epsilon = 0.2;
	lambda = 0.5;
for k = 1 : tries
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


	
function stimulus = u(t)
	t = (t-1)*5;
	stimulus = (t==100);
end

function reward = r(t)
	t = (t-1) * 5;
	reward = (t >=200 & t <= 210) * 0.2;
end
	
