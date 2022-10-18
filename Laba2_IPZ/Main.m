clear all

%4.2
A = 1.75;%амплітуда
phi = 0;%фаза модуляції
f=125;%частота несучої
kots=32;%кількість відділків
Tmod=0.8; %час моделювання
t=0:(1/f)/kots:Tmod; %час
rf = RfWave(A,t,f,phi);

%4.3
A2 = 1; %амплітуда яка вказана в завданні 4.3
choice = 2; %вибір вигляду хвилі
fmod = 25.0;%частота модуляції
mods = MdWave(A2,t,fmod,phi,choice);

%4.4
w1=1.9086*fmod;%нормовані коефіціенти
w2=1.6768*fmod;
c1=0.7441;%частоти fmod
c2=0.9720;
[plnm,res] = Polinom(w1,w2,c1,c2);

%4.5
figure(1);
freqs(res,plnm);%будуємо графік

%4.6
f_sample=f*kots;%частота дескритизації
[dis1,dis2] = Disc(f_sample,plnm,res);

%4.7
figure(2);
freqz(dis1,dis2);%будуємо графік

%4.8
figure(3);
y=filter(dis1,dis2,mods);
plot(t,mods);
hold on;%для правильного відображення графіку
plot(t,y);
xlim([0 0.2])
ylim([-1.5 1.5])
legend('input','filtered')