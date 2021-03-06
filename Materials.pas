unit Materials;

interface

{// ����� ����� ��� �������� � ������
const markaa: array[1..24] of String =
  ('12��2 ���� 4543-71',
   '12��3� ���� 4543-71',
   '12�2�4� ���� 4543-71',
   '15����� ���� 4543-71',
   '18��� ���� 4543-71',
   '18�2�4�� ���� 4543-71',
   '20� ���� 4543-71',
   '20�� ���� 4543-71',
   '20��2� ���� 4543-71',
   '20��3� ���� 4543-71',
   '20�2�4� ���� 4543-71',
   '20��� ���� 4543-71',
   '25����� ���� 4543-71',
   '30��� ���� 4543-71',
   '25��� ���� 4543-71',
   '30��� ���� 4543-71',
   '35�� ���� 4543-71',
   '40 ���� 1050-74',
   '40� ���� 4543-71',
   '40�� ���� 4543-71',
   '40��� ���� 4543-71',
   '40��2�� ���� 4543-71',
   '45 ���� 1050-74',
   '50�� ���� 1050-74');}

// �������������� ���� �������� � ������, �����
const Termobra: array[0..8] of String =
  ('AUTO',
   '���������',
   '������������',
   '�������� �������',
   '������� ���',
   '����������',
   '���������������',
   '������������',
   '�����');

// ������������� ������� ����������� ���� �������� � ������
const Raa: array[0..2] of String =
  ('1.6','3.2','6.3');

// ��� ������ �����
const Tipza: array[0..2] of String =
  ('���������',
   '������',
   '�����');

// ������ ��������� ��������� �������� � ������
const Zagotowkaa: array[1..4] of String =
  ('��� �������',
   '��� ���������',
   '��� �������',
   '��� �������');

// ������ ����� ����
const Formaa: array[0..2] of String =
  ('������������ (I)',
   '������������ (II)',
   '������������ (III)');

{// ������ ��������� ��������� �������� � ������
const Sigma_ta: array[1..20] of Integer =
  (330,340,360,400,450,460,600,630,650,700,
   750,760,800,850,900,920,1000,1100,1200,1300);

// ������ ������������ �� ������ ��� �������� � ������
const Sigma_Flim0a: array[1..13] of Integer =
  (240,330,420,460,480,500,580,680,750,780,820,950,1000);

// ���������� ���������� ��� �������� � ������
const Sigma_Fst0a: array[1..8] of Integer =
  (1200,1500,1800,2000,2200,2250,2500,2800);

// ����������� ������������ �� ������ ��� �������� � ������
const S_Fa: array[1..2] of Extended =
  (1.55,1.70);}

const
  // ���������� �������� �������� �� ������� ����, ���
  P1Max: extended = 300;
  P1Min: extended = 0.2;
  // ���������� �������� ������������� �����
  UMax: extended = 8;
  UMin: extended = 1;
  // ���������� �������� ������� �������� �������� �����, ��/���
  N1Max: extended = 5000;
  N1Min: extended = 1;
  // ��������� ������ ��������
  LhMax: Integer = 100000;
  LhMin: Integer = 10;
  // ��������� ���������� ���� �������� �� ��������
  H_HRcs1max: Integer = 68;
  H_HRcs1min: Integer = 35;
  // ��������� ���������� ���� ������ �� ��������
  H_HRcs2max: Integer = 68;
  H_HRcs2min: Integer = 35;
  // ��������� ����������� ���� �������� �� ��������
  H_HRcp1max: Integer = 68;
  H_HRcp1min: Integer = 35;
  // ��������� ����������� ���� ������ �� ��������
  H_HRcp2max: Integer = 68;
  H_HRcp2min: Integer = 35;
  // ��������� ���������� ���� �������� �� �������
  H_HBs1max: Integer = 350;
  H_HBs1min: Integer = 0;
  // ��������� ���������� ���� ������ �� �������
  H_HBs2max: Integer = 350;
  H_HBs2min: Integer = 0;
  // ��������� ����������� ���� �������� �� �������
  H_HBp1max: Integer = 350;
  H_HBp1min: Integer = 0;
  // ��������� ����������� ���� ������ �� �������
  H_HBp2max: Integer = 350;
  H_HBp2min: Integer = 0;
  // ����� ����� ������������ �����
  Nom_sxmin: Integer = 1;
  Nom_sxmax: Integer = 4;

const markaa:array[1..50] of string = (
'12��2 ���� 4543-71',
'12��3� ���� 4543-71',
'12�2�4� ���� 4543-71',
'15����� ���� 4543-71',
'18��� ���� 4543-71',
'18��� ���� 4543-71' ,
'18�2�4�� ���� 4543-71',
'18�2�4�� ���� 4543-71',
'20� ���� 4543-71',
'20�� ���� 4543-71',
'20��2� ���� 4543-71'   ,
'20��3� ���� 4543-71'   ,
'20��3� ���� 4543-71'   ,
'20�2�4� ���� 4543-71'  ,
'20�2�4� ���� 4543-71'  ,
'20��� ���� 4543-71'    ,
'25����� ���� 4543-71' ,
'30��� ���� 4543-71'    ,
'30��� ���� 4543-71'   ,
'25��� ���� 4543-71'    ,
'25��� ���� 4543-71'    ,
'30��� ���� 4543-71'    ,
'35�� ���� 4543-71'     ,
'35�� ���� 4543-71'     ,
'40 ���� 1050-74'       ,
'40 ���� 1050-74'       ,
'40� ���� 4543-71'      ,
'40� ���� 4543-71'      ,
'40� ���� 4543-71'      ,
'40� ���� 4543-71'      ,
'40� ���� 4543-71'      ,
'40� ���� 4543-71'      ,
'40�� ���� 4543-71'     ,
'40�� ���� 4543-71'     ,
'40�� ���� 4543-71'     ,
'40�� ���� 4543-71'    ,
'40�� ���� 4543-71'     ,
'40�� ���� 4543-71'    ,
'40��� ���� 4543-71'    ,
'40��� ���� 4543-71'   ,
'40��� ���� 4543-71'   ,
'40��� ���� 4543-71'   ,
'40��2�� ���� 4543-71' ,
'40��2�� ���� 4543-71'  ,
'40��2�� ���� 4543-71'  ,
'40��2�� ���� 4543-71' ,
'40��2�� ���� 4543-71'  ,
'45 ���� 1050-74'      ,
'45 ���� 1050-74'       ,
'50�� ���� 1050-74');

// ������ ��������� ��������� �������� � ������
const Sigma_ta :array[1..52] of Integer =
(600,800,850,750,800,800,750,800,630,630,800,760,700,750,750,
900,1100,1100,1200,800,1000,1200,1100,1000,400,340,650,330,1100,1100,
1100,1100,650,460,1100,1100,1000,1000,650,460,1100,1100,700,650,1300,
1000,920,450,360,1100,{min �������}330,{max �������}1300);
{����� ������ ������, �� ��������� 2 �������� ������ �� ����������� � ������������ ������� � ����� �������}

// ������ ������������ �� ������ ��� �������� � ������
const Sigma_Flim0a :array[1..52] of Integer =
(950,950,820,950,820,680,820,780,820,950,950,950,780,820,780,
820,820,820,680,1000,750,750,580,480,420,330,500,330,580,460,
580,480,420,330,580,500,680,580,420,330,580,460,420,330,580,
680,580,240,330,500,{min �������}240,{max �������}1000);
{����� ������ ������, �� ��������� 2 �������� ������ �� ����������� � ������������ ������� � ����� �������}

// ���������� ���������� ��� �������� � ������
const Sigma_Fst0a :array[1..52] of Integer =
(2800,2800,2800,2800,2000,2000,2800,2800,2000,2800,2800,2800,2800,2800,2800,
2000,2000,2000,2000,2500,2200,2200,1800,2250,1500,1200,1800,1200,2250,2250,
1800,2250,1500,1200,2250,2250,1800,2250,1500,1200,2250,2250,1500,1200,2500,
2200,2500,1500,1200,2250,{min �������}1200,{max �������}2800);
{����� ������ ������, �� ��������� 2 �������� ������ �� ����������� � ������������ ������� � ����� �������}

// ����������� ������������ �� ������ ��� �������� � ������
const S_Fa :array[1..52] of Extended =
(1.55,1.55,1.55,1.55,1.55,1.70,1.55,1.70,1.55,1.55,1.55,1.55,1.70,1.55,1.70,
1.55,1.55,1.55,1.70,1.55,1.55,1.55,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,
1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,1.70,
1.70,1.70,1.70,1.70,1.70,{min �������}1.55,{max �������}1.70);
{����� ������ ������, �� ��������� 2 �������� ������ �� ����������� � ������������ ������� � ����� �������}

{const Th :array[1..50] of Integer =
(5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,6,6,
6,4,4,1,2,1,2,3,3,4,4,1,2,3,3,4,4,1,2,3,3,
1,2,3,4,4,1,2,3);

const cc :array[1..50] of Integer =
(1,1,1,1,1,3,1,3,1,1,1,1,3,1,3,1,1,1,3,1,1,1,2,
2,2,2,2,2,2,3,2,2,2,2,2,3,2,2,2,2,2,3,2,2,2,2,2,2,2,3);

const H_HB :array[1..50] of Integer =
(60,60,60,60,60,59,60,59,60,60,60,60,60,60,60,60,60,60,
59,60,60,60,53,53,240,190,285,190,50,50,53,53,240,190,50,
50,53,53,240,190,50,50,240,190,50,53,53,240,190,50);

const Si :array[1..50] of Integer =
(38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,38,30,53,240,190,
285,190,285,285,30,53,240,190,50,50,30,30,240,190,50,50,240,190,50,30,53,240,190,50);

const Y_g :array[1..50] of Extended =
(0.75,0.75,0.75,0.75,0.75,0.80,0.75,0.80,0.75,0.75,0.75,0.75,0.80,0.75,0.80,0.75,0.75,
0.75,0.80,0.70,0.75,0.75,1.00,1.00,1.10,1.10,1.10,1.10,0.90,1.00,1.00,1.00,1.10,1.10,
0.90,1.00,1.00,1.00,1.10,1.10,0.90,1.00,1.10,1.10,1.00,1.00,1.00,1.10,1.10,1.00);

const Y_d :array[1..50] of Extended =
(1.00,1.00,1.10,1.00,1.10,1.20,1.10,1.20,1.10,1.00,1.00,1.00,1.20,1.10,1.20,1.10,1.10,
1.10,1.20,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,
1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00,1.00);}

implementation

end.


