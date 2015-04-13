package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

    [Bindable]
	public class ItemFacturaVO implements ValueObject
	{
		
		public var descripcion:String;
		public var cantidad:int;
		public var valor:String;
		public var idsRetenciones:Array;
		
		
		public function ItemFacturaVO(
		
			descripcion:String,
			cantidad:int,
			valor:String,
			idsRetenciones:Array
			
			)
		{
			
			this.descripcion=descripcion;
			this.cantidad=cantidad;
			this.valor=valor;
			this.idsRetenciones=idsRetenciones;
			
			
		}

	}
}