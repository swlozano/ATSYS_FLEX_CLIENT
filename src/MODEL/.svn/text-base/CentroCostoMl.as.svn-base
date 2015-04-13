package MODEL
{
	import VO.CentroCostroVO;
	
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class CentroCostoMl implements ModelLocator
	{
		private static var instance:CentroCostoMl = null;

		[Bindable] public var listCentroCosto:Object = null;
		[Bindable] public var CentroCostoPpl:Object;
		[Bindable] public var idCentroCostoToEliminar:int;
		
		[Bindable] public var idsCCostosSeleccionados:Array;
		
		[Bindable] public var selectableCcosto:Boolean = true;
      
        
      
      public static function getInstance():CentroCostoMl
		{
			if(instance == null)
			{ 
				instance = new CentroCostoMl();
			}
			return instance;
		}
		
		public  function checarallCheckboxCcosto():void
		{
			var ar:ArrayCollection = new ArrayCollection();
			var Ccosto:CentroCostroVO;
			for each(var x:* in BusquedaMovtsMl.getInstance().OBJETOLISTAR)
			{
			     		Ccosto = new CentroCostroVO(x.id,x.nombre,x.ciudad,false);
						ar.addItem(Ccosto);
					
			}
			
			BusquedaMovtsMl.getInstance().OBJETOLISTAR = ar;
				
		}


	}
}