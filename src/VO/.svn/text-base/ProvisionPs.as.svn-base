package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
    
    [RemoteClass(alias="Entidades.ProvisionPs")]
	public class ProvisionPs implements ValueObject
	{
		
		public var  id:int;
     	public var nombre:String;
     	public var valor:Number;
     	public var observacion:String;
     	public var idCausacionPs:int;
		
		public function ProvisionPs()
		{
			
		}
		
		public function constructor(id:int,
     	nombre:String,
     	observacion:String,
     	valor:Number,
     	idCausacionPs:int):ProvisionPs
		{
			this.id = id;
			this.nombre = nombre;
			this.valor = valor;
			this.observacion = observacion;
			this.idCausacionPs = idCausacionPs;	
			return this;
		}

	}
}