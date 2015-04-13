package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

  
    [Bindable]
	public class ConsultarMovimientosVO implements ValueObject
	{
		
		public var idsConsulta:Array;
		public var fechaInicio:Date;
		public var fechaFin:Date;
		
		public function ConsultarMovimientosVO(idsConsulta:Array,fechaInicio:Date,fechaFin:Date)
		{
			
			this.idsConsulta=idsConsulta;
			this.fechaInicio=fechaInicio;
			this.fechaFin=fechaFin;
			
		}

	}
}