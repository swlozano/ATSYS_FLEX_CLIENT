package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;

	public class LiquidacionMl implements ModelLocator
	{
		
		private static var instance:LiquidacionMl = null;
		
		/////////////////////////////PARAMETROS A IMPRIMIR////////////
		
		[Bindable] public var Clon_crearLiquidacion:Object;
		
		[Bindable] public var Bandera_Respuesta:Boolean;
		
		[Bindable] public var MensajeConfirmacionLiq:String;
		
		[Bindable] public var NomTrabajadorPrint:String;
		[Bindable] public var IdentificacionPrint:String;      
		[Bindable] public var CuentaBancariaPrint:String;
		[Bindable] public var SueldoBasicoPrint:String;
		[Bindable] public var AuxilioTransportePrint:String;
		[Bindable] public var FechaInicioPrint:String;
		[Bindable] public var FechaTerminacionPrint:String;
		[Bindable] public var DiasTrabajadosPrint:String;
		[Bindable] public var FechaLiquidacionPrint:String;
		[Bindable] public var FechaPagoPrint:String;
		[Bindable] public var PrimaPrint:String;
		[Bindable] public var VacacionesPrint:String;
		[Bindable] public var CesantiasPrint:String;
		[Bindable] public var InteresesCesantiasPrint:String;
		[Bindable] public var TotalLiquidacionPrint:String;
		
		
		
		//////////////////////////////////////////////////////////////
		
		
		[Bindable] public var BanderaGenerarOListar:Boolean;
		
		
		[Bindable] public var idtipoListarFormula:int;
		
		[Bindable] public var sueldoBasico:String;
		[Bindable] public var auxtransporte:String;
		[Bindable] public var diasTrabajados:int;
		[Bindable] public var FechaTerminacion:Date;
		[Bindable] public var TotalLiq:Number; 
		
		[Bindable] public var DiasTrabajados:int;
		
		[Bindable] public var listLiquidaciones:Object;
		
		[Bindable] public var liquidacionGenerada:Object;
		
		[Bindable] public var listFormulasPrimasServicios:Object;
		
		[Bindable] public var listFormulasVacaciones:Object;
		
		[Bindable] public var listFormulasCesantias:Object;
		
		[Bindable] public var listFormulasInteresesCesantias:Object;
		
		[Bindable] public var listFormulasOtros:Object;
		
		[Bindable] public var idliquidacionToeliminar:int;
		
		[Bindable] public var indiceCbxPrimaservicios:int;
		[Bindable] public var indiceCbxvacasiones:int;
		[Bindable] public var indiceCbxcesantias:int;
		[Bindable] public var indiceCbxInteresesCesantias:int;
		
		public static function getInstance():LiquidacionMl
		{
			if(instance == null)
			{ 
				instance = new LiquidacionMl();
			}
			return instance;
		}

	}
}