package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

	public class TerminarContratoVO implements ValueObject
	{
		public var id:int;
		public var idContrato:int;
		public var solicitante:int;
		public var motivo:String;
		public var cartaRenuncia:int;
		public var cartaAceptacion:int;
		public var cartaTerminacion:int;
		public var fechaPropuestaRetiro:Date;
		public var fechaRetiro:Date;
		public var respuesta:int;
				
		public function TerminarContratoVO
		(
		  id:int,
		  idcontrato:int,
		  solicitante:int,
		  motivo:String,
		  cartaRenuncia:int,
		  cartaAceptacion:int,
		  cartaTerminacion:int,
		  fechaPropuestaRetiro:Date,
		  fechaRetiro:Date,
		  respuesta:int
		 
		)
			{
			  
			  this.id=id;
			  this.idContrato=idcontrato;
			  this.solicitante=solicitante;
			  this.motivo=motivo;
			  this.cartaRenuncia=cartaRenuncia;
			  this.cartaAceptacion=cartaAceptacion;
			  this.cartaTerminacion=cartaTerminacion;
			  this.fechaPropuestaRetiro=fechaPropuestaRetiro;
			  this.fechaRetiro=fechaRetiro;
			  this.respuesta=respuesta;
				
			}

	}
}