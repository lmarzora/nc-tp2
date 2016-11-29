function reward = r(t)
	t = (t-1) * 5;
	reward = (t >=200 & t <= 210) * 0.2;
end