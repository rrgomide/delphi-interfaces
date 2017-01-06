unit URttiHelper;

interface

uses
  System.Rtti;

type

  TRttiAttributeHelper = class helper for TRttiField
    function HasAttribute(attributeName : string) : Boolean;
  end;

implementation

{ TRttiAttributeHelper }

function TRttiAttributeHelper.HasAttribute(attributeName: string): Boolean;
var
  currentAttribute : TCustomAttribute;
begin
  Result := False;

  for currentAttribute in self.GetAttributes do
    if currentAttribute.ClassName = attributeName then
      Result := True;
end;

end.
