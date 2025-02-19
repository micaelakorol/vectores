/*
Realizar un programa que lea información de plantas que están a la venta en un vivero. 
De cada planta se lee: nombre y precio. 
La lectura finaliza cuando se ingresa la marca “Hiedra” que NO debe procesarse. 
La información se ingresa *ordenada por nombre*. Se pide calcular e informar:
 a. La cantidad de unidades disponibles de cada planta e informar su precio.
 */

program corte_de_control

type

planta = record 
nombre:string;
precio:real; 

procedure procesarPlantas()
var 
plantaAct:string;
p:planta;
contador:integer;
begin 
read(p.nombre);
 while(p.nombre <> 'Hiedra')do 
 begin
  contador := 0;
  plantaAct := p.nombre;
  while(p.nombre <> 'Hiedra')and(p.nombre = plantaAct)do 
  begin 
  end;
   contador := contador + 1;
   read(p.precio);
   read(p.nombre);
  end;
  write('El total de plantas' p.nombre, 'es de', contador);
  write('Su precio es de: ', p.precio:0:2);
 end;
end;

var 
begin  
procesarPlantas();
end.