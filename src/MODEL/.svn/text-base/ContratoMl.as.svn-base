package MODEL
{
	import VO.RetencionesVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class ContratoMl implements ModelLocator
	{
		private static var instance:ContratoMl = null;
		
		[Bindable] public var CausacionPpl:Object;
		
		[Bindable] public var contIBC:int=0;
		
		///////////////////////adendoosssss
		
		[Bindable] public var Clon_AdendoView:Object;
		
		[Bindable] public var ValorFormaPagoFxVO:Array = new Array();
		
		[Bindable] public var FechasDePagoPpl:Object;
		
		[Bindable] public var listAdendos:Object;
		
		[Bindable] public var idValorFpago:int;
		
		[Bindable] public var Contador:int;
		[Bindable] public var Contadorlength:int;
		
		
		[Bindable] public var Concepto:String;
		
		[Bindable] public var Observacion:String;
		
		[Bindable] public var periodoPago:int;
		
		[Bindable] public var tipodePago:String;
		
		[Bindable] public var fechaInicioPago:Date;
		
		[Bindable] public var esIbc:int;
		
		[Bindable] public var valorDelPago:Number;
		
		[Bindable] public var ClonArrayCollectionOflistValoresFPagoXContrato:ArrayCollection;
		
		//////////////////////
		
		[Bindable] public var banGenerarOListarVFP:Boolean;
		
		/////////////////generar valores Forma pago////////////////
		
		[Bindable] public var idContratoToGenerarVFPago:int; 
		
		[Bindable] public var valoresFormaFechaspago:Object;
		
		[Bindable] public var ArrayvaloresFormaFechaspago:ArrayCollection;
		
		[Bindable] public var Arrayfechas:ArrayCollection = new ArrayCollection();
		
		[Bindable] public var ClonGenerarValoresFpago:Object;
		
		[Bindable] public var ArrayValoresFormaFechaspago:Array;
		
		[Bindable] public var Clonfechaspago:Object;
		
		[Bindable] public var banGestionFechasPago:Boolean;
		
		
		///////////////////to visualizar vfp////////////////
		
		[Bindable] public var idContratoToVisualizarVfp:int; 
		[Bindable] public var idVfpToListarFechasPago:int; 
		[Bindable] public var listVFPtoVisualizar:ArrayCollection;
		[Bindable] public var listFechasPagoVFPtoVisualizar:ArrayCollection;
		
		//////////////////////////////////////////////////////////
		
		[Bindable] public var TerminarContratoPpal:Object;
		
		[Bindable] public var TerminarContratoIndice:int;
		
		[Bindable] public var nuevaFechaInicioAdendoContrato:Date;
        [Bindable] public var nuevaFechaFinAdendoContrato:Date;
		
		[Bindable] public var TerminarContratoWidth:int = 500;
		[Bindable] public var TerminarContratoheight:int = 462;
		
		[Bindable] public var listCausacionNomina:Object = null;
		
		
		[Bindable] public var listValoresFPagoXContrato:Object = null;
		
		[Bindable] public var listCausacionps:Object = null;
		
		[Bindable] public var bantipoListar:Boolean;
		
		[Bindable] public var tipoListarTerminacionesContrato:int;
		
		[Bindable] public var tituloPantallaTerminarContrato:String ;
		
		[Bindable] public var banEstadoContrato:int;
		
		[Bindable] public var listContrato:Object = null;
		
		[Bindable] public var pantallaAgregarContrato:Object = null;
		
		[Bindable] public var listTerminacionesContratoXrespuesta:Object = null;
		[Bindable] public var listHitoriTerminContrato:Object = null;
		
		[Bindable] public var FechaInicioContrato:Date;
		[Bindable] public var FechaFinContrato:Date;
		
		[Bindable] public var cbxSolicitanteSelectedIndex:int;
		
		[Bindable] public var listTipopago:Object = null;
		
		[Bindable] public var listRetencionespago:Object = null;
		
		[Bindable] public var listTipoContrato:Object = null;
		[Bindable] public var ContratoPpl:Object;
		
		[Bindable] public var selectableContrato:Boolean = true;
		
		[Bindable] public var listNacionContrato:Object = null;
		
		[Bindable] public var listNacionlabores:Object = null;
		
		[Bindable] public var banNacionCOntrato:int;
		
		
		public static function getInstance():ContratoMl
		{
			if(instance == null)
			{ 
				instance = new ContratoMl();
			}
			return instance;
		}
		
		public  function checarallCheckbox():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var reten:RetencionesVO;
			for each(var x:* in ContratoMl.getInstance().listRetencionespago)
			{
			   reten = new RetencionesVO(x.id,x.nombre,x.porcentaje,false);
			   ar.addItem(reten);
			}
			
			ContratoMl.getInstance().listRetencionespago = ar;
				
		}
		[Bindable] public var listDatosLiquidacion:Object = null;
	}
	
	
}