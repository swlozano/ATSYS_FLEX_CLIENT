package VO
{
	import com.adobe.cairngorm.vo.IValueObject;

	//[Bindable]
	[RemoteClass(alias="VO.ValorIdVO")]
	public class ValorIdVO implements IValueObject
	{
		public var id:int;
    	public var valor:Number;
		
		public function ValorIdVO()
		{
			
		}
		
		public function ValorIdVOConstructor(id:int,valor:Number):ValorIdVO
		{
			this.id = id;
			this.valor = valor;						
			return this;
		}

	}

}