/*
Modificar la solución del punto anterior considerando que el programa lea y almacene la información de a
 lo sumo 400 alumnos. La lectura finaliza cuando se ingresa el DNI-1 (que no debe procesarse).

 de a lo sumo = No sabemos cuantas posiciones del vector se ocupan realmente
*/

 program vector_de_registros;

 type 
 dimF := 400;
 alumno = record 
 nro:integer;
 dni:integer;
 apellido:integer;
 nombre:string;
 anio:integer;

 vector = array[1..400] of alumno;

 procedure leerAlumnos(a:alumno)
 begin 
  read(a.nro);
  read(a.dni);
  read(a.apellido);
  read(a.nombre);
  read(a.anio);
 end;

// Añade los alumnos al vector de registros.
 procedure agregarAlumnos(var v:vector; var dimL:integer)
 var 
  a:alumno;
  begin
  dimL := 0;
  leerAlumnos(a);
  while(dimL < dimF) and (a.dni <> -1)do
  begin
   dimL := dimL + 1; 
   v[dimL] := a; // añado al alumno en la posición de la dimL.
   leerAlumnos(a);
  end;
  end

  function calcularPorcentaje(v:vector):real
  var 
   i,dniPar:integer;
   porcentaje:real;
  begin 
   dniPar := 0;
   for i := 1 to 400 do 
   begin
   if(descomponerDNI(v[i].dni)) then // si la funcion retorna true; hay un dni par.
   begin
    dniPar := dniPar + 1;
    end
   end
   porcentaje := dniPar / 400 * 100;
   calcularPorcentaje := porcentaje;
  end


  function descomponerDNI(dni:integer):boolean
  var 
   digito:integer;
   par:integer;
   impar:integer;
  begin
   par := 0;
   impar := 0;
   while dni <> 0 do 
   begin
    digito := dni mod 10;
    if (digito mod 2 = 0) then  
     par := par + 1;
     else 
      impar := impar + 1;
    dni := dni div 10;
   end
    if impar = 0 then descomponer := true;
    else 
     descomponer := false;
  end

var 
v:vector;
dimL:integer;
begin 
agregarAlumnos(v,dimL);
calcularPorcentaje(v); // inciso a
end
