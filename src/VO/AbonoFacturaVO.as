package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
    
    [Bindable]
	public class AbonoFacturaVO implements ValueObject
	{
		
		public var id:int;
		public var idFactura:int;
		public var fechaAbono:Date;
		public var valor:Number;
		
		public function AbonoFacturaVO(id:int,idFactura:int,fechaAbono:Date,valor:Number)
		{
			
			this.id=id;
			this.idFactura=idFactura;
			this.fechaAbono=fechaAbono;
			this.valor=valor;
			
		}

	}
}