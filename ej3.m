function [v,d,w,ur] = ej3()

	v = zeros(1,51);
	ur = zeros(1,50);
	w = zeros(1,50);
	d = zeros(50,200);

	epsilon = 0.2;
	lambda = 0.5;
for k = 1 : 200
	for t = 2:50
		ur(t) = lambda * ur(t-1) + (1-lambda) * u(t);
		v(t) = w(1:t) * u(t:-1:1)';
		d(t,k)=  r(t) +  v(t+1) - v(t);
		w(1:t) =  w(1:t) + epsilon * d(t,k) * ur(t:-1:1); 	
	end
end

surf(5*(1:50),1:200,d');

end


	
function stimulus = u(t)
	t = t*5;
	stimulus = (t==100);
end

function reward = r(t)
	t = t * 5;
	reward = (t >=200 & t <= 210) * 0.2;
end
	
