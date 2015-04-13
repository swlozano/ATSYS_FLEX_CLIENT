package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

	public class OficioVO implements ValueObject
	{
		public var id:int;
		public var nombre:String;
		public var objeto:String;
		
		public function OficioVO(id:int,nombre:String,objeto:String)
		{
			
			this.id=id;
			this.nombre=nombre;
			this.objeto=objeto;
			
		}

	}
}