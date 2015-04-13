package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
    
    [Bindable]
	public class RetencionesVO implements ValueObject
	{
		public var id:int;
		public var nombre:String;
		public var porcentaje:Number;
		public var asignado:Boolean;
		
		
		public function RetencionesVO(
		   id:int,
		   nombre:String,
		   porcentaje:Number,
		   asignado:Boolean
		   )
		{
			
		   this.id=id;
		   this.nombre=nombre;
		   this.porcentaje=porcentaje;
		   this.asignado=asignado;
			
		}

	}
}