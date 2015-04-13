package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
	
	import mx.collections.ArrayCollection;

	public class ValorFormaPagoVO implements ValueObject
	{
		public var id:int;
		public var idtipoPago:int;
		public var objetoFormaPago:String;
		public var observacion:String;
		public var periodoPago:int;
		public var fechaInicioPago:Date;
		public var esFavorito:int;
		public var valorPago:Number;
		public var esIbc:int;
		public var idsReten:Array;
		public var arrayFechaspago:ArrayCollection;
		
		public function ValorFormaPagoVO(
		
		    id:int,
			idtipoPago:int,
			objetoFormaPago:String,
			observacion:String,
			periodoPago:int,
			fechaInicioPago:Date,
			esFavorito:int,
			valorPago:Number,
			esIbc:int,
			idsReten:Array,
			arrayFechaspago:ArrayCollection
		  
		)
		{
			this.id = id;
			this.idtipoPago = idtipoPago;
			this.objetoFormaPago = objetoFormaPago;
			this.observacion = observacion;
			this.periodoPago = periodoPago;
			this.fechaInicioPago = fechaInicioPago;
			this.esFavorito = esFavorito;
			this.valorPago = valorPago;
			this.esIbc = esIbc;
			this.idsReten = idsReten;
			this.arrayFechaspago = arrayFechaspago;
		}

	}
}