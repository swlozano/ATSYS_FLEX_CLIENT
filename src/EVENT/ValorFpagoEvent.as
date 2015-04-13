package EVENT
{
	import VO.FechasPagoVO;
	import VO.ValorFormaPagoFxVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class ValorFpagoEvent extends CairngormEvent
	{
		
		public static var LISTAR_FECHAS_PAGO           :	String = "listarfechasPago";
		public static var GENERAR_VALORES_FORMA_PAGO   :	String = "generarValoresFPago";
		public static var GUARDAR_NUEVAS_FECHAS_PAGO   :	String = "guardarNuevasFechasPago";
		
		
		
		public static var LISTAR_VFP_TO_VISUALIZAR     :	String = "listarvfptoVisualizar";
		public static var LISTAR_FECHAS_PAGO_BY_VFP    :	String = "listarfechasPagoByVfp";
		
		public var fechapago:FechasPagoVO;
		public var valorFormPagofxvo:ValorFormaPagoFxVO;
		
		public function ValorFpagoEvent(type:String,fechasVo:FechasPagoVO,valfpagoFxVo:ValorFormaPagoFxVO)
		{
			super(type);
			this.fechapago=fechasVo;
			this.valorFormPagofxvo = valfpagoFxVo;
		}
		
	}
}