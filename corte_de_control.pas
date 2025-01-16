/*Realizar un programa que lea información de autos que están a la venta en una concesionaria. De cada auto se lee:
 marca, modelo y precio. La lectura finaliza cuando se ingresa la marca “ZZZ” que no debe procesarse. La
 información se ingresa ordenada por marca. Se pide calcular e informar:
 a. Elprecio promedio por marca.*/

 program corte_de_control

 type

 auto = record
 marca:string
 modelo:integer
 precio:real

 procedure leerAuto(a:auto)
 begin
   read(a.marca);
   read(a.modelo);
   read(a.precio);  
 end

 procedure procesarAutos();
 var 
  a:auto;
  cant:integer;
  precioP:real;
  actual:string;
 begin
  leerAuto(a);
  while(a.marca <> 'ZZZ') do 
  begin
   actual := a.marca;
   cant := 0; // Contador de autos por marca.
   precioP := 0; // Accumulador de precios por marca.
   while(a.marca <> 'ZZZ') and (a.marca = actual)do 
   begin
    cant := cant + 1; 
    precioP := precioP + a.precio; 
    leerAuto(a);
   end
   // Cuando sale del 2° while, quiere decir que cambio de marca:
   promedio := precioP / cant;
   write('El precio promedio de la marca', actual, 'es', promedio:0:2);
  end
  end;
 end

 var
 a:auto;
 begin 
 procesarAutos(a);
 end.
