{
  Copyright (C) 2013-2022 Tim Sinaeve tim.sinaeve@gmail.com

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

{$I Test.DDuce.inc}

unit Test.Registration;

interface

procedure RegisterTests;

implementation

uses
  DUnitX.TestFramework,

  Test.DDuce.DynamicRecord, Test.DDuce.DynamicRecord.Generic,
  Test.DDuce.Reflect, Test.DDuce.Logger;

  //Test.DDuce.Mosquitto;

procedure RegisterTests;
begin
  TDUnitX.RegisterTestFixture(TestDynamicRecord, 'DynamicRecord');
  TDUnitX.RegisterTestFixture(TestGenericDynamicRecord, 'DynamicRecord<T>');
  TDUnitX.RegisterTestFixture(TestReflect, 'Reflect');
  TDUnitX.RegisterTestFixture(TestLogger, 'Logger');
  //TDUnitX.RegisterTestFixture(TestMosquitto, 'Mosquitto');
end;

end.
