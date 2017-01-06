unit UDescricaoAttribute;

interface

type
  DescricaoAttribute = class(TCustomAttribute)
    private
      FDescricao : string;
    public
      constructor Create(_descricao : string);
      property Descricao: string read FDescricao write FDescricao;
  end;

implementation

{ TDescricaoAttribute }

constructor DescricaoAttribute.Create(_descricao: string);
begin
  FDescricao := _descricao;
end;

end.
