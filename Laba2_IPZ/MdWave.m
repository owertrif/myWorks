function[mods] = MdWave(Am,t,fmod,phi,choice)

if choice == 1
    mods = Am*sin(2*pi*fmod*t+phi);%Синосуідальна хвиля
else
    mods=Am*square(2*pi*fmod*t+phi,50); %Прямокутна хвиля
end
