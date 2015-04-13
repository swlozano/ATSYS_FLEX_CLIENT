package EVENT
{
	import VO.CausacionVO;
	import VO.ContratoVO;
	import VO.TerminarContratoVO;
	
	import com.adobe.cairngorm.control.CairngormEvent;

	public class ContratoEvent extends CairngormEvent
	{
		public static var ADICIONAR_CONTRATO		:	String = "adicionarContrato";
		public static var ADENDO_CONTRATO           :   String = "modificarContrato";
	    public static var LISTAR_CONTRATO		    :	String = "listarContrato";
	    public static var LISTAR_TIPO_CONTRATO		:	String = "listartipoContrato";
	    public static var LISTAR_TIPO_PAGO		    :	String = "listartipopago";
	    public static var LISTAR_RETENCIONES_PAGO   :	String = "listarRetencionesopago";
	    
	    public static var GENERAR_CAUSACIONES_NOMINA:	String = "generarCausacionesnomina";
	    public static var GENERAR_CAUSACIONES_PS   :	String = "generarcausacionesps";
	    
	    
	    public static var LISTAR_VALORESFPAGO_X_CONTRATO   :	String = "listarvaloresfpagoporcontrato";
	    public static var CREAR_ADENDO                     :	String = "crearAdendo";
	    public static var LISTAR_ADENDO                     :	String = "listarAdendos";
	    
	    public static var TERMINAR_CONTRATO		       :	String = "terminarContrato";
	    public static var MODIFICAR_TERMINAR_CONTRATO		:	String = "modificarterminarContrato";
	    public static var LISTAR_TERMINACIONES_CONTRATO_POR_RESPUESTA		:	String = "listarterminacionesContratoXrespuesta";
	    public static var LISTAR_HITORIAL_TERMINACONES		:	String = "LISTAR_HITORIAL_TERMINACONES";
	    public static var CONSULTAR_EXISTENCIA_CAUSACIONES   :	String = "consultarexistenciacausaciones";
	    public static var LISTAR_CAUSACIONOMINA_POR_FECHACORTE   :	String = "listarCausacionesNominaXfechasCorte";
	    public static var LISTAR_CAUSACIONPS_POR_FECHACORTE   :	String = "listarCausacionesPSXfechasCorte";
	    
	    public static var LISTAR_FECHAS_CAUSADAS   :	String = "listarFechasCausadas";
	    
	    
	    
	    
	    public var causacionvo:CausacionVO;
	    public var contratoVO:ContratoVO;
	    public var terminarcontratoVO:TerminarContratoVO;
		
		public function ContratoEvent(type:String,contratovo:ContratoVO,terminarContratoVO:TerminarContratoVO,causacion:CausacionVO)
		{
			super(type);
			this.contratoVO = contratovo;
			this.terminarcontratoVO = terminarContratoVO;
		    this.causacionvo = causacion;
		}
		
	}
}