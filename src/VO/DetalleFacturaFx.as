package VO
{
	import com.adobe.cairngorm.vo.IValueObject;

	//[Bindable]
	[RemoteClass(alias="VO.DetalleFacturaFx")]
	public class DetalleFacturaFx implements IValueObject
	{
		public var id:int;
    	public var cantidad:int;
    	public var descripcionBienServicio:String;
    	public var precio:Number;
    	public var total:Number;
    	public var valorIdVOs:Array;
    	
		public function DetalleFacturaFx()
		{
			
		}
		
		public function DetalleFacturaFxConstructor(
		id:int,
		cantidad:int,
		descripcionBienServicio:String,
    	precio:Number,
    	total:Number,
    	valorIdVOs:Array):DetalleFacturaFx
		{
			this.cantidad = cantidad;
			this.descripcionBienServicio = descripcionBienServicio;
			this.id = id;
			this.precio = precio;
			this.total = total;
			this.valorIdVOs = valorIdVOs;						
			return this;
		}
	}
}