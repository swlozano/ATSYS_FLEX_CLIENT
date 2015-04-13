package MODEL
{
	import VIEW.CuentasCobro.CambiarEstado;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.managers.PopUpManager;

	public class CuentasCobroMl implements ModelLocator
	{
		private static var instance:CuentasCobroMl = null;
		
		[Bindable] public var listCuentasCobro:Object = null;
		[Bindable] public var CuentasCobroPpl:Object;
		
		[Bindable] public var idContratoToFiltrar:int;
		[Bindable] public var idRhToFiltrar:int;
		[Bindable] public var idtipoEstado:int;
		[Bindable] public var fechaIn:Date;
		[Bindable] public var fechaFin:Date;
		
		[Bindable] public var indicePopUp:int=1;
		
		public static function getInstance():CuentasCobroMl
		{
			if(instance == null)
			{ 
				instance = new CuentasCobroMl();
			}
			return instance;
		}
		
		public function showWindow():void{
			
			var cambiarEstado:CambiarEstado = CambiarEstado(PopUpManager.createPopUp(PantallasMl.atsys,CambiarEstado,true));
			PopUpManager.centerPopUp(cambiarEstado);
			
		}
	}
}