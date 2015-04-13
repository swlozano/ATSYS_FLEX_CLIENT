package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

	public class ContratoVO implements ValueObject
	{
		
		public var id:int;
		public var idOficio:int;
		public var idTipoContrato:int;
		public var nacionLabores:String;
		public var idRecursoHumano:int;
		public var nacionContrato:String;
		public var fechaInicio:Date;
		public var fechafin:Date;
		public var tiempo:Number;
        public var valorFormaPagoArray:Array;
		
		public function ContratoVO
		(
			id:int,
			idOficio:int,
			idTipoContrato:int,
			nacionLabores:String,
			idRecursoHumano:int,
			nacionContrato:String,
			fechaInicio:Date,
			fechafin:Date,
			tiempo:Number,
        	valorFormaPagoArray:Array
		)
		{
			this.id=id;
			this.idOficio=idOficio;
			this.idTipoContrato=idTipoContrato;
			this.nacionLabores=nacionLabores;
			this.idRecursoHumano=idRecursoHumano;
			this.nacionContrato = nacionContrato;
			this.fechaInicio = fechaInicio;
			this.fechafin = fechafin;
			this.tiempo = tiempo;
			this.valorFormaPagoArray = valorFormaPagoArray;
		}

	}
}