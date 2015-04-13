package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;

	public class CuentasPorPagarMl implements ModelLocator
	{
		private static var instance:CuentasPorPagarMl = null;
		
		[Bindable] public var listCuentasPorPagar:Object;
		[Bindable] public var idCuentaPpagarToEliminar:int;
		[Bindable] public var listEstadoCpp:Object;
		[Bindable] public var listGeneradorCpp:Object;
		[Bindable] public var Clon_AgregarCuentasXpagar:Object;
		[Bindable] public var Clon_ModificarCuentasXpagar:Object;
		
		[Bindable] public var CuentasPorPagarPpl:Object;
		
	    [Bindable] public var idCuentaPpagarToModificarEstado:int;
	    [Bindable] public var idEstadoCuentaPpagarToModificarEstado:int;

		[Bindable] public var idRecHumanoToListar:int;
		[Bindable] public var idPersonaToListar:int;
		[Bindable] public var idEstadoToListar:int;
		[Bindable] public var idTipoCuentaToListar:int;
		
		[Bindable] public var indiceRecHumano:int = -1;
		[Bindable] public var indicePersona:int = -1;
		[Bindable] public var indiceCuentaBanco:int;
		[Bindable] public var indiceBanco:int;
		[Bindable] public var indiceTipoCuenta:int;
		[Bindable] public var indiceEstado:int;
		[Bindable] public var numeroCuenta:String="";
		
		
		[Bindable] public var bandera:Boolean;
		
		
		[Bindable] public var banderaRecHumano:Boolean;
		[Bindable] public var banderaPersona:Boolean;
		
		[Bindable] public var banderaModRecHumano:Boolean;
		[Bindable] public var banderaModPersona:Boolean;
		
		
		public static function getInstance():CuentasPorPagarMl
		{
			if(instance == null)
			{ 
				instance = new CuentasPorPagarMl();
			}
			return instance;
		}

	}
}