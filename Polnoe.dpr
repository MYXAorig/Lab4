program Polnoe;

{$APPTYPE CONSOLE}
uses
  SysUtils;

Const
  N=5;
Type
  mass=array [1..N] of integer;
Var
c, b, i: integer;
ms:mass;

 Function PerevodVDvoichuu (k:integer):integer;
 var z : integer;
 begin
  k:=0;
  z:=1;
  while b>0 do
    begin
     k:=k+ z * (b mod 2);           //Перевод числа в двоичную СС
     z:=z*10;
     b:=b div 2;
     Result:=k;
    end;

  end;

begin
write ('Enter a sequence: ');                     //zapolnenie massiva
  for i:=1 to N do readln (ms[i]);

for i:=1 to N do
  Begin
  c:= PerevodVDvoichuu(ms[i]);             //vipolnenie funczii
  writeln(ms[i], ' VS ', c) ;             //Вывод исходногоо числа и переведенного
  end;
readln;
end.
