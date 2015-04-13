package MODEL
{
	import VO.CajaMenorVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class CajaMenorMl implements ModelLocator
	{
		
		private static var instance:CajaMenorMl = null;
		
		[Bindable] public var listCajamenor:Object;
		[Bindable] public var listTodasLasCajas:Object;
		[Bindable] public var listTodasLasCuentas:Object;
		[Bindable] public var cajaMenorPpl:Object;
		[Bindable] public var cuentasBancoPpl:Object;
		[Bindable] public var idCajaMenorToEliminar:int;
		[Bindable] public var listCajasUsuarioEspecifico:Object;
		
		[Bindable] public var Clon_pantallaagregarCajaMenor:Object;
		[Bindable] public var Clon_pantallamodificarCajaMenor:Object;
		
		[Bindable] public var Clon_pantallaagregarCuenta:Object;
		[Bindable] public var Clon_pantallamodificarCuenta:Object;
		
		[Bindable] public var idsCajasSeleccionadas:Array;
		[Bindable] public var idsCuentasSeleccionadas:Array;
		
		[Bindable] public var opcSubMenuCajamenor:int = -1;
		
		[Bindable] public var selectableCmenor:Boolean = true;
		[Bindable] public var selectableCBanco:Boolean = true;
		
		//123
		[Bindable] public var cbxModResponsableSeletectIndex:int = 0;
		
		[Bindable] public var txtModResponsableText:String = "";
		
		public static function getInstance():CajaMenorMl
		{
			if(instance == null)
			{ 
				instance = new CajaMenorMl();
			}
			return instance;
		}
		
		public  function checarallCheckbox():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var caja:CajaMenorVO;
			for each(var x:* in BusquedaMovtsMl.getInstance().OBJETOLISTAR)
			{
					
						caja = new CajaMenorVO(x.id,0,x.nombre,0,0,0,null,0,0,0,false);
						ar.addItem(caja);
					
			}
			
			BusquedaMovtsMl.getInstance().OBJETOLISTAR = ar;
				
		}
		
		public  function checarallCheckboxCuentas():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var caja:CajaMenorVO;
			for each(var x:* in BusquedaMovtsMl.getInstance().OBJETOLISTAR)
			{
					
						caja = new CajaMenorVO(x.id,0,x.nombre,0,0,0,null,0,0,0,false);
						ar.addItem(caja);
					
			}
			
			BusquedaMovtsMl.getInstance().OBJETOLISTAR = ar;
				
		}
		

	}
}