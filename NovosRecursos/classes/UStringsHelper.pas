unit UStringsHelper;

interface

uses
  System.Classes, Vcl.Controls, System.SysUtils;

type

  TStringsHelper = class helper for TStrings

    public

      procedure AddInteger(value : Integer);
  end;

implementation

{ TStringsHelper }

procedure TStringsHelper.AddInteger(value: Integer);
begin
  Self.Add(IntToStr(value));
end;

end.
