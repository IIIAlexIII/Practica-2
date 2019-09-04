close all

prompt    = 'Introduzca el valor en grados de la rotacion "X" (phi):    '; 
phi_Deg   = input(prompt);                                             

prompt    = 'Introduzca el valor en grados de la rotacion "Y" (theta):  '; 
theta_Deg = input(prompt);

prompt    = 'Introduzca el valor en grados de la rotacion "Z" (psi):    '; 
psi_Deg   = input(prompt);

phi_Rad   =    gradoaradianes(phi_Deg);     %La variable "phi_Rad" realiza la operacion con la funcion creada llamada "gradoaradianes"
theta_Rad =    gradoaradianes(theta_Deg);   %La variable "theta_Rad" realiza la operacion con la funcion creada llamada "gradoaradianes"   
psi_Rad   =    gradoaradianes(psi_Deg);     %La variable "psi_Rad" realiza la operacion con la funcion creada llamada "gradoaradianes"    

%Rotación en el eje X
for t=0:0.01: phi_Rad
    
    clf
    
line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',1); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',1); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',1); %Establece el eje Z Azul 

grid on
view(120,30)    %Visualizacion instantanea del plano en vista 3D

P0i = [ 7, 3, 0]; %[Punto_inicial]
P1i = [ 0, 3, 0]; %[Punto_inicial]
P2i = [ 0, 0, 0]; %[Punto_inicial]
P3i = [ 7, 0, 0]; %[Punto_inicial]
P4i = [ 7, 3, 2]; %[Punto_inicial]
P5i = [ 0, 3, 2]; %[Punto_inicial]
P6i = [ 0, 0, 2]; %[Punto_inicial]
P7i = [ 7, 0, 2]; %[Punto_inicial]

line ([P0i(1) P1i(1)],[P0i(2) P1i(2)],[P0i(3) P1i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P1i(1) P2i(1)],[P1i(2) P2i(2)],[P1i(3) P2i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P2i(1) P3i(1)],[P2i(2) P3i(2)],[P2i(3) P3i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P3i(1) P0i(1)],[P3i(2) P0i(2)],[P3i(3) P0i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo

line ([P4i(1) P5i(1)],[P4i(2) P5i(2)],[P4i(3) P4i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P5i(1) P6i(1)],[P5i(2) P6i(2)],[P5i(3) P5i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P6i(1) P7i(1)],[P6i(2) P7i(2)],[P6i(3) P7i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P7i(1) P4i(1)],[P7i(2) P4i(2)],[P7i(3) P7i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo

line ([P0i(1) P4i(1)],[P0i(2) P4i(2)],[P0i(3) P4i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P1i(1) P5i(1)],[P1i(2) P5i(2)],[P1i(3) P5i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P2i(1) P6i(1)],[P2i(2) P6i(2)],[P2i(3) P6i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P3i(1) P7i(1)],[P3i(2) P7i(2)],[P3i(3) P7i(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo

Rx=[1 0 0 ; 0 cos(t) -sin(t) ; 0 sin(t) cos(t)]; %Matriz de rotación

P0rx = Rx*P0i'; %Operación para realizar la rotacion
P1rx = Rx*P1i'; %Operación para realizar la rotacion
P2rx = Rx*P2i'; %Operación para realizar la rotacion
P3rx = Rx*P3i'; %Operación para realizar la rotacion
P4rx = Rx*P4i'; %Operación para realizar la rotacion
P5rx = Rx*P5i'; %Operación para realizar la rotacion
P6rx = Rx*P6i'; %Operación para realizar la rotacion
P7rx = Rx*P7i'; %Operación para realizar la rotacion

line ([P0rx(1) P1rx(1)],[P0rx(2) P1rx(2)],[P0rx(3) P1rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1rx(1) P2rx(1)],[P1rx(2) P2rx(2)],[P1rx(3) P2rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2rx(1) P3rx(1)],[P2rx(2) P3rx(2)],[P2rx(3) P3rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P3rx(1) P0rx(1)],[P3rx(2) P0rx(2)],[P3rx(3) P0rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

line ([P4rx(1) P5rx(1)],[P4rx(2) P5rx(2)],[P4rx(3) P5rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P5rx(1) P6rx(1)],[P5rx(2) P6rx(2)],[P5rx(3) P6rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P6rx(1) P7rx(1)],[P6rx(2) P7rx(2)],[P6rx(3) P7rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P7rx(1) P4rx(1)],[P7rx(2) P4rx(2)],[P7rx(3) P4rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

line ([P0rx(1) P4rx(1)],[P0rx(2) P4rx(2)],[P0rx(3) P4rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1rx(1) P5rx(1)],[P1rx(2) P5rx(2)],[P1rx(3) P5rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2rx(1) P6rx(1)],[P2rx(2) P6rx(2)],[P2rx(3) P6rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P3rx(1) P7rx(1)],[P3rx(2) P7rx(2)],[P3rx(3) P7rx(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

%line ([xixf],[yi yf],[zi zf]);
%line ([Punto_inicial_en_X, Punto_Final_en_X],[Punto_inicial_en_Y, Punto_Final_en_Y],[Punto_inicial_en_Z, Punto_Final_en_Z]);

pause(0.01)
end

%Rotación en el eje Y
for t=0:0.01: theta_Rad
    
    clf
    
line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',1); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',1); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',1); %Establece el eje Z Azul 

grid on
view(120,30)    %Visualizacion instantanea del plano en vista 3D

P0 = P0rx; %[Punto_inicial]
P1 = P1rx; %[Punto_inicial]
P2 = P2rx; %[Punto_inicial]
P3 = P3rx; %[Punto_inicial]
P4 = P4rx; %[Punto_inicial]
P5 = P5rx; %[Punto_inicial]
P6 = P6rx; %[Punto_inicial]
P7 = P7rx; %[Punto_inicial]

Ry=[cos(t) 0 sin(t) ; 0 1 0 ; -sin(t) 0 cos(t)]; %Matriz de rotación

%NO SE PONE TRANSPUESTA YA QUE ANTERIORMENTE YA SE HIZO ESTE PROCEDIMIENTO

P0ry = Ry*P0; %Operación para realizar la rotacion
P1ry = Ry*P1; %Operación para realizar la rotacion  
P2ry = Ry*P2; %Operación para realizar la rotacion
P3ry = Ry*P3; %Operación para realizar la rotacion
P4ry = Ry*P4; %Operación para realizar la rotacion
P5ry = Ry*P5; %Operación para realizar la rotacion
P6ry = Ry*P6; %Operación para realizar la rotacion
P7ry = Ry*P7; %Operación para realizar la rotacion

line ([P0ry(1) P1ry(1)],[P0ry(2) P1ry(2)],[P0ry(3) P1ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1ry(1) P2ry(1)],[P1ry(2) P2ry(2)],[P1ry(3) P2ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2ry(1) P3ry(1)],[P2ry(2) P3ry(2)],[P2ry(3) P3ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P3ry(1) P0ry(1)],[P3ry(2) P0ry(2)],[P3ry(3) P0ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

line ([P4ry(1) P5ry(1)],[P4ry(2) P5ry(2)],[P4ry(3) P5ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P5ry(1) P6ry(1)],[P5ry(2) P6ry(2)],[P5ry(3) P6ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P6ry(1) P7ry(1)],[P6ry(2) P7ry(2)],[P6ry(3) P7ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P7ry(1) P4ry(1)],[P7ry(2) P4ry(2)],[P7ry(3) P4ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

line ([P0ry(1) P4ry(1)],[P0ry(2) P4ry(2)],[P0ry(3) P4ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1ry(1) P5ry(1)],[P1ry(2) P5ry(2)],[P1ry(3) P5ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2ry(1) P6ry(1)],[P2ry(2) P6ry(2)],[P2ry(3) P6ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P3ry(1) P7ry(1)],[P3ry(2) P7ry(2)],[P3ry(3) P7ry(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

%line ([xixf],[yi yf],[zi zf]);
%line ([Punto_inicial_en_X, Punto_Final_en_X],[Punto_inicial_en_Y, Punto_Final_en_Y],[Punto_inicial_en_Z, Punto_Final_en_Z]);

pause(0.01)
end

%Rotación en el eje Z
for t=0:0.01: psi_Rad 
    
    clf
    
line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',1); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',1); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',1); %Establece el eje Z Azul 

grid on
view(120,30)    %Visualizacion instantanea del plano en vista 3D

P0 = P0ry; %[Punto_inicial]
P1 = P1ry; %[Punto_inicial]
P2 = P2ry; %[Punto_inicial]
P3 = P3ry; %[Punto_inicial]
P4 = P4ry; %[Punto_inicial]
P5 = P5ry; %[Punto_inicial]
P6 = P6ry; %[Punto_inicial]
P7 = P7ry; %[Punto_inicial]

Rz=[cos(t) -sin(t) 0 ; sin(t) cos(t) 0 ; 0 0 1]; %Matriz de rotación

P0rz = Rz*P0;
P1rz = Rz*P1;
P2rz = Rz*P2;
P3rz = Rz*P3;
P4rz = Rz*P4;
P5rz = Rz*P5;
P6rz = Rz*P6;
P7rz = Rz*P7;

line ([P0rz(1) P1rz(1)],[P0rz(2) P1rz(2)],[P0rz(3) P1rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1rz(1) P2rz(1)],[P1rz(2) P2rz(2)],[P1rz(3) P2rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2rz(1) P3rz(1)],[P2rz(2) P3rz(2)],[P2rz(3) P3rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P3rz(1) P0rz(1)],[P3rz(2) P0rz(2)],[P3rz(3) P0rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

line ([P4rz(1) P5rz(1)],[P4rz(2) P5rz(2)],[P4rz(3) P5rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P5rz(1) P6rz(1)],[P5rz(2) P6rz(2)],[P5rz(3) P6rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P6rz(1) P7rz(1)],[P6rz(2) P7rz(2)],[P6rz(3) P7rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P7rz(1) P4rz(1)],[P7rz(2) P4rz(2)],[P7rz(3) P4rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

line ([P0rz(1) P4rz(1)],[P0rz(2) P4rz(2)],[P0rz(3) P4rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1rz(1) P5rz(1)],[P1rz(2) P5rz(2)],[P1rz(3) P5rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2rz(1) P6rz(1)],[P2rz(2) P6rz(2)],[P2rz(3) P6rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P3rz(1) P7rz(1)],[P3rz(2) P7rz(2)],[P3rz(3) P7rz(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

%line ([xixf],[yi yf],[zi zf]);
%line ([Punto_inicial_en_X, Punto_Final_en_X],[Punto_inicial_en_Y, Punto_Final_en_Y],[Punto_inicial_en_Z, Punto_Final_en_Z]);

pause(0.01)

end