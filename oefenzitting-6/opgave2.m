% https://www.mathworks.com/matlabcentral/answers/36430-plotting-the-frequency-spectrum

% selecteer de data
area = dailyArea(:, 4);

% Fourier-transformatie
X = fft(area);

% Time specifications
Fs = length(X);                % samples per second
dt = 1/Fs;                     % seconds per sample
StopTime = 1;                  % seconds
t = (0:dt:StopTime-dt)';
N = size(t,1);

%%Frequency specifications:
dF = Fs/N;                      % hertz
f = -Fs/2:dF:Fs/2-dF;           % hertz

% Amplitude
A = X;

%%Plot the spectrum:
figure;
plot(f, A);
xlabel('Frequency (in hertz)');
title('Magnitude Response');

[MaxA, MaxI] = maxk(A, 2);

disp(MaxA);
disp(MaxI);

% tien kleinste waarden
[MinA, MinI] = maxk(abs(A(2:floor(N/2))), 10);

nulfreq = A(1);

filteredA = zeros(1,N);
filteredA(1) = nulfreq;
filteredA(MinI+1) = A(MinI+1);
filteredA(N-MinI+1) = conj(A(MinI+1));

figure;
hold all;
plot(area);
plot(ifft(filteredA));
xlabel('Frequency (in hertz)');
title('Magnitude Response');
