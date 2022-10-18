function[rf] = RfWave(A,t,f,phi)

rf=A*sin(t*2*pi*f-phi);