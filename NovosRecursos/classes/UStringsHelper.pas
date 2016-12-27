unit UStringsHelper;

interface

uses
  System.Classes;

type

  TStringsHelper = class helper for TStrings

    public

      procedure AddInteger(value : Integer);
  end;

implementation

uses
  System.SysUtils;

{ TStringHelper }

procedure TStringsHelper.AddInteger(value: Integer);
begin
  Self.Add(IntToStr(value));
end;

end.
