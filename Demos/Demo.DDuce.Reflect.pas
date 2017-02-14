{
  Copyright (C) 2013-2017 Tim Sinaeve tim.sinaeve@gmail.com

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
}

unit Demo.DDuce.Reflect;

{$I ..\Source\DDuce.inc}

{ Form demonstrating the Reflect type. }

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.StdCtrls, Vcl.Forms, Vcl.ExtCtrls;

type
  TfrmReflect = class(TForm)
    mmoMain      : TMemo;
    pnlReflected : TPanel;

  public
    procedure AfterConstruction; override;

  end;

implementation

{$R *.dfm}

uses
  Vcl.Dialogs,
  DDuce.Reflect;

{$REGION 'construction and destruction'}
procedure TfrmReflect.AfterConstruction;
begin
  inherited AfterConstruction;
  mmoMain.Text := Reflect.Properties(Self).ToString;
  //Reflect.Properties(Self).Fields['Caption'].Value := 'Test';
end;
{$ENDREGION}

end.
