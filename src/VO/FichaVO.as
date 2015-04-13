package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

	public class FichaVO implements ValueObject
	{   
		
		public var id:int;
		public var idcontrato:int;
		public var idtipoficha:int;
		public var concepto:String;
		public var observacion:String;
		public var valorPrestamo:Number;
		public var fechaPago:Date;
		public var texto:String;
		public var fechaInicio:Date;
		public var fechaFin:Date;
		public var tipoPrestamo:int;
		public var llamadoAtencion:int;
		public var buenComportamiento:int;
		
		
		
		public function FichaVO
		(
		   id:int,
		   idcontrato:int,
		   idtipoficha:int,
		   concepto:String,
		   observacion:String,
		   valorPrestamo:Number,
		   fechaPago:Date,
		   texto:String,
		   fechaInicio:Date,
		   fechaFin:Date,
		   tipoPrestamo:int,
		   llamadoAtencion:int,
		   buenComportamiento:int
		)
			{
				
				this.id=id;
				this.idcontrato=idcontrato;
				this.idtipoficha=idtipoficha;
				this.concepto=concepto;
				this.observacion=observacion;
				this.valorPrestamo=valorPrestamo;
				this.fechaPago=fechaPago;
				this.texto=texto;
				this.fechaInicio=fechaInicio;
				this.fechaFin=fechaFin;
				this.tipoPrestamo=tipoPrestamo;
				this.llamadoAtencion=llamadoAtencion;
				this.buenComportamiento=buenComportamiento;
				
			}

	}
}




