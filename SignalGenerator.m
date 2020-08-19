function [data]= SignalGenerator(Fs,StopTime,F,A,NoiseLevel)

    dt = 1/Fs;          % Time resoultion
    t = (0:dt:StopTime)'; % seconds 
    data = zeros(1,StopTime*Fs+1)';
    
    for k =1:length(F)
        data = data + A(k)*sin(2*pi*F(k)*t);
    end
    data = data+(NoiseLevel*rand(1,length(data)))';