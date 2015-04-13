package VO
{
	import com.adobe.cairngorm.vo.IValueObject;

	//[Bindable]
	[RemoteClass(alias="Entidades.OtroMasNomina")]
	public class OtroMasNomina implements IValueObject
	{
		public var id:int;
 		public var nombre:String;
     	public var observacion:String;
     	public var valor:Number;
     	public var afectaIbc:int;
     	public var idCausacionNomina:int;
     	public var strAfectaIbc:String;
     	public var seleccionado:Boolean;
		
		public function OtroMasNomina()
		{
			
		}
		
		public function OtrosMasConstructor(id:int,
 		nombre:String,
     	observacion:String,
     	valor:Number,
     	afectaIbc:int,
     	idCausacionNomina:int,
     	strAfectaIbc:String,
     	seleccionado:Boolean):OtroMasNomina
		{
			this.id = id;
			this.nombre =nombre;
			this.observacion = observacion;
			this.valor = valor;
			this.afectaIbc = afectaIbc;
			this.idCausacionNomina = idCausacionNomina;
			this.strAfectaIbc = strAfectaIbc;			
			this.seleccionado = seleccionado;			
			return this;
		}
	}
}