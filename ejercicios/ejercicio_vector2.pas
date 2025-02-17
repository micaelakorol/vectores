/* 
Crear un programa que lea y almacene la información de a lo sumo 400 alumnos. 
La lectura finaliza cuando se ingresa el DNI-1 (que NO debe procesarse).
*/

program ejercicio1;

 type 

 alumno = record 
 nro:integer;
 dni:integer;
 apellido:integer;
 nombre:string;
 anio:integer;

 dimF = 400;

 vector = array[1..dimF] of alumno;

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
  i:integer;
  begin
   dimL:=0;
   leerAlumnos(a);
   while(dimL < dimF) and (a.dni <> -1) do
   begin
    dimL := dimL + 1; // aumento la dimL 
    v[dimL] := a; // en la pos. de la dimL agrego al alumno
    leerAlumnos(a);
   end;
  end

  function calcularPorcentaje(v:vector,dimL:integer):real
  var 
   i,dniPar:integer;
   porcentaje:real;
  begin 
   dniPar := 0;
   for i := 1 to dimL do 
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
dimL:integer;
v:vector;
begin 
agregarAlumnos(v,dimL);
calcularPorcentaje(v,dimL); // inciso a
end
