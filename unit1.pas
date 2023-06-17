unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit11Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit13Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Kb, Kt, Fr, Fa, X, Y, V, C, P, L: real;
  Dm, Db, r, B, Dm1, Db1, r1, B1, scale: integer;
const
  Kp=1.33;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  close();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  P:=(X*V*Fr+Y*Fa)*Kb*kt;
  L:=power((C/P),Kp);
  ShowMessage('Номинальная долговечность данного подшипника: '+ FormatFloat('0.####',L) +' миллионов оборотов');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage('Подшипник радиальный роликовый однорядный лёгкой серии № 2208');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Image1.Picture.Clear;
  Dm1:=Dm*scale;
  Db1:=Db*scale;
  r1:=r*scale;
  B1:=B*scale;
  WITH Image1.Picture.Bitmap do
  begin
    width:=Image1.Width;
    Height:=Image1.Height;
    Image1.Picture.Bitmap.Canvas.Pen.Color:= clWhite;
  end;
  WITh Image1.Picture.Bitmap.Canvas do
  begin
    {signature}
    MoveTo(268,706);
    LineTo(268,676);
    LineTo(283,676);
    MoveTo(288,706);
    LineTo(288,676);
    LineTo(303,676);
    LineTo(303,691);
    LineTo(288,691);
    MoveTo(308,676);
    LineTo(308,706);
    LineTo(323,676);
    LineTo(323,706);
    MoveTo(328,706);
    LineTo(328,676);
    LineTo(343,676);
    MoveTo(348,706);
    LineTo(348,676);
    LineTo(363,676);
    LineTo(363,706);
    LineTo(348,706);
    MoveTo(368,706);
    LineTo(368,676);
    LineTo(383,676);
    LineTo(383,691);
    LineTo(368,691);
    MoveTo(388,676);
    LineTo(388,706);
    LineTo(403,706);
    LineTo(403,691);
    LineTo(388,691);
    MoveTo(423,706);
    LineTo(408,706);
    LineTo(408,676);
    LineTo(423,676);
    MoveTo(408,691);
    LineTo(423,691);
    MoveTo(428,691);
    LineTo(443,691);
    LineTo(443,706);
    LineTo(428,706);
    LineTo(428,676);
    LineTo(438,676);
    LineTo(438,691);
    LineTo(428,691);

    {drawing}
    Image1.Picture.Bitmap.Canvas.Pen.Width:=2;
    Image1.Picture.Bitmap.Canvas.Brush.Style:=bsBDiagonal;
    Polygon([Point(229-B1+Round(r1/sqrt(2)),358+Db1),Point(229+B1-Round(r1/sqrt(2)),358+Db1),Point(229+B1,358+Db1-Round(r1/sqrt(2))),Point(229+B1,358+Db1-10*scale+Round(r1/sqrt(2))),Point(229+B1-Round(r1/sqrt(2)),358+Db1-10*scale),Point(229-B1+Round(r1/sqrt(2)),358+Db1-10*scale),Point(229-B1,358+Db1-10*scale+Round(r1/sqrt(2))),Point(229-B1,358+Db1-Round(r1/sqrt(2)))]);
    Polygon([Point(229+B1,358-Db1+26*scale),Point(229+B1,358-Db1+40*scale-Round(r1/sqrt(2))),Point(229+B1-Round(r1/sqrt(2)),358-Db1+40*scale),Point(229-B1+Round(r1/sqrt(2)),358-Db1+40*scale),Point(229-B1,358-Db1+40*scale-Round(r1/sqrt(2))),Point(229-B1,358-Db1+26*scale),Point(229-B1+8*scale,358-Db1+26*scale),Point(229-B1+8*scale,358-Db1+30*scale),Point(229+B1-8*scale,358-Db1+30*scale),Point(229+B1-8*scale,358-Db1+26*scale)]);
    Image1.Picture.Bitmap.Canvas.Brush.Style:=bsClear;
    Rectangle(229-B1+8*scale,358+Db1-10*scale,229+B1-8*scale,358+Db1-30*scale);
    Rectangle(229-B1+8*scale,358-Db1+10*scale,229+B1-8*scale,358-Db1+30*scale);
    Image1.Picture.Bitmap.Canvas.Brush.Style:=bsFDiagonal;
    Polygon([Point(229+B1,358+Db1-26*scale),Point(229+B1,358+Db1-40*scale+Round(r1/sqrt(2))),Point(229+B1-Round(r1/sqrt(2)),358+Db1-40*scale),Point(229-B1+Round(r1/sqrt(2)),358+Db1-40*scale),Point(229-B1,358+Db1-40*scale+Round(r1/sqrt(2))),Point(229-B1,358+Db1-26*scale),Point(229-B1+8*scale,358+Db1-26*scale),Point(229-B1+8*scale,358+Db1-30*scale),Point(229+B1-8*scale,358+Db1-30*scale),Point(229+B1-8*scale,358+Db1-26*scale)]);
    Polygon([Point(229-B1+Round(r1/sqrt(2)),358-Db1),Point(229+B1-Round(r1/sqrt(2)),358-Db1),Point(229+B1,358-Db1+Round(r1/sqrt(2))),Point(229+B1,358-Db1+10*scale-Round(r1/sqrt(2))),Point(229+B1-Round(r1/sqrt(2)),358-Db1+10*scale),Point(229-B1+Round(r1/sqrt(2)),358-Db1+10*scale),Point(229-B1,358-Db1+10*scale-Round(r1/sqrt(2))),Point(229-B1,358-Db1+Round(r1/sqrt(2)))]);
    MoveTo(229-B1+Round(r1/sqrt(2)),358-Db1+40*scale);
    LineTo(229-B1+round(r1/sqrt(2)),358+Db1-40*scale);
    MoveTo(229+B1-Round(r1/sqrt(2)),358-Db1+40*scale);
    LineTo(229+B1-round(r1/sqrt(2)),358+Db1-40*scale);

    Image1.Picture.Bitmap.Canvas.Pen.Width:=1;
    Image1.Picture.Bitmap.Canvas.Brush.Style:=bsSolid;

    MoveTo(229+B1,358+Db1-10*scale+Round(r1/sqrt(2)));
    LineTo(229+B1,358-Db1+10*scale-Round(r1/sqrt(2)));
    MoveTo(229-B1,358+Db1-10*scale+Round(r1/sqrt(2)));
    LineTo(229-B1,358-Db1+10*scale-Round(r1/sqrt(2)));

    {D size line}
    MoveTo(229-B1+Round(r1/sqrt(2)),358+Db1);
    LineTo(229-B1*2,358+Db1);
    LineTo(229-B1*2,358-Db1);
    LineTo(229-B1+Round(r1/sqrt(2)),358-Db1);
    Polygon([Point(229-B1*2,358+Db1),Point(229-Round(B1*1.9),358+Round(0.95*Db1)),Point(229-Round(B1*2.1),358+Round(0.95*Db1))]);
    Polygon([Point(229-B1*2,358-Db1),Point(229-Round(B1*1.9),358-Round(0.95*Db1)),Point(229-Round(B1*2.1),358-Round(0.95*Db1))]);

    {d size line}
    MoveTo(229+B1-Round(r1/sqrt(2)),358-Db1+40*scale);
    LineTo(229+2*B1,358-Db1+40*scale);
    LineTo(229+2*B1,358+Db1-40*scale);
    LineTo(229+B1-Round(r1/sqrt(2)),358+Db1-40*scale);
    Polygon([Point(229+2*B1,358-Db1+40*scale),Point(229+Round(2.1*B1),358-Round(0.95*Db1)+40*scale),Point(229+Round(1.9*B1),358-Round(0.95*Db1)+40*scale)]);
    Polygon([Point(229+2*B1,358+Db1-40*scale),Point(229+Round(2.1*B1),358+Round(0.95*Db1)-40*scale),Point(229+Round(1.9*B1),358+Round(0.95*Db1)-40*scale)]);

    {B size line}
    MoveTo(229-B1,358-Db1+Round(r1/sqrt(2)));
    LineTo(229-B1,358-Round(1.1*Db1));
    LineTo(229+B1,358-Round(1.1*Db1));
    LineTo(229+B1,358-Db1+Round(r1/sqrt(2)));
    Polygon([Point(229-B1,358-Round(1.1*Db1)),Point(229-Round(0.8*B1),358-Round(1.13*Db1)),Point(229-Round(0.8*B1),358-Round(1.07*Db1))]);
    Polygon([Point(229+B1,358-Round(1.1*Db1)),Point(229+Round(0.8*B1),358-Round(1.13*Db1)),Point(229+Round(0.8*B1),358-Round(1.07*Db1))]);

    {r size line}
    MoveTo(229+B1-Round(r1/sqrt(8)),358+Db1-Round(r1/sqrt(8)));
    LineTo(229+Round(1.4*B1),358+Round(1.1*Db1));
    LineTo(229+Round(2*B1),358+Round(1.1*Db1));
    Polygon([Point(229+B1-Round(r1/sqrt(8)),358+Db1-Round(r1/sqrt(8))),Point(229+B1,358+Db1+r1),Point(229+B1+r1,358+Db1)]);

    {Literas}
    Image1.Picture.Bitmap.Canvas.Brush.Style:=bsClear;
{D} Polygon([Point(229-Round(B1*2.1),358+Round(0.03*Db1)),Point(229-Round(B1*2.6),358+Round(0.03*Db1)),Point(229-Round(B1*2.55),358),Point(229-Round(B1*2.4),358-Round(0.03*Db1)),Point(229-Round(B1*2.3),358-Round(0.03*Db1)),Point(229-Round(B1*2.15),358)]);
{B} MoveTo(229-Round(0.2*B1),358-Round(1.12*Db1));
    LineTo(229-Round(0.2*B1),358-Round(1.24*Db1));
    LineTo(229,358-Round(1.24*Db1));
    LineTo(229,358-Round(1.18*Db1));
    LineTo(229-Round(0.2*B1),358-Round(1.18*Db1));
    LineTo(229+Round(0.15*B1),358-Round(1.18*Db1));
    LineTo(229+Round(0.15*B1),358-Round(1.12*Db1));
    LineTo(229-Round(0.2*B1),358-Round(1.12*Db1));
{d} MoveTo(229+Round(B1*1.4),358-Round(0.025*Db1));
    LineTo(229+Round(B1*1.9),358-Round(0.025*Db1));
    LineTo(229+Round(B1*1.9),358+Round(0.025*Db1));
    LineTo(229+Round(B1*1.65),358+Round(0.025*Db1));
    LineTo(229+Round(B1*1.65),358-Round(0.025*Db1));
{r} MoveTo(229+Round(B1*1.65),358+Round(1.07*Db1));
    LineTo(229+Round(B1*1.65),358+Db1);
    MoveTo(229+Round(B1*1.65),358+Round(1.021*Db1));
    LineTo(229+Round(B1*1.75),358+Round(1.016*Db1));
    LineTo(229+Round(B1*1.85),358+Round(1.021*Db1));

    {Axial lines}
    Image1.Picture.Bitmap.Canvas.Pen.Style:=psDashDot;
    MoveTo(229-Round(1.3*B1),358);
    LineTo(229+Round(1.3*B1),358);
    MoveTo(229-Round(0.8*B1),358+Db1-20*scale);
    LineTo(229+Round(0.8*B1),358+Db1-20*scale);
    MoveTo(229-Round(0.8*B1),358-Db1+20*scale);
    LineTo(229+Round(0.8*B1),358-Db1+20*scale);
  end;
end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
  Db:=StrToInt(Edit10.Text);
end;

procedure TForm1.Edit11Change(Sender: TObject);
begin
  B:=StrToInt(Edit11.Text);
end;

procedure TForm1.Edit12Change(Sender: TObject);
begin
  r:=StrToInt(Edit12.Text);
end;

procedure TForm1.Edit13Change(Sender: TObject);
begin
  scale:=StrToInt(Edit13.Text);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Kb:=StrToFloat(Edit1.Text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  Kt:=StrToFloat(Edit2.Text);
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  Fr:=StrToFloat(Edit3.Text);
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  Fa:=StrToFloat(Edit4.Text);
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  C:=StrToFloat(Edit5.Text);
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
  Y:=StrToFloat(Edit6.Text);
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
  X:=StrToFloat(Edit7.Text);
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  V:=StrToFloat(Edit8.Text);
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
  Dm:=StrToInt(Edit9.Text);
end;

begin
  Kb:=1.3;
  Kt:=1;
  Fr:=10960;
  Fa:=0;
  X:=1;
  Y:=0;
  V:=1;
  C:=41800;
  Dm:=40;
  Db:=80;
  r:=2;
  B:=18;
end.

