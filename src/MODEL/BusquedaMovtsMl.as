package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class BusquedaMovtsMl implements ModelLocator
	{
		private static var instance:BusquedaMovtsMl = null;
		
		[Bindable] public var nomCol1DgParaBusqueda:String = "Caja menor";
		[Bindable] public var datapResultadoBusqueda:Object = null;
		[Bindable] public var datapParametroBusqueda:Object = null;
		[Bindable] public var tabNavigatorIndex:int =0;
		
		[Bindable] public var datefieldCajabusqueda:String="nombre";
		
		[Bindable] public var setvisible:Boolean;
		[Bindable] public var setEnabledCheckboxTodos:Boolean=false;
		
		[Bindable] public var labelfieldCbxresultado:String;
		
		[Bindable] public var nombre:String="SELECCIONAR TODAS LAS CAJAS MENORES";
		
		[Bindable] public var arrayCajas:ArrayCollection;
		[Bindable] public var dPcajs:ArrayCollection;
		[Bindable] public var busquedaMovimientosPpl:Object=null;
		
		[Bindable] public var OBJETOLISTAR:Object = null;
		
		public static function getInstance():BusquedaMovtsMl
		{
			if(instance == null)
			{ 
				instance = new BusquedaMovtsMl;
			}
			return instance;
		}
		
		
		public function listarDatosBusqueda(index:int):void{
		
		
		 switch(index){
		 
		  
		   case 0:{
		      
		     BusquedaMovtsMl.getInstance().setEnabledCheckboxTodos=false; 
		     OBJETOLISTAR = CajaMenorMl.getInstance().listTodasLasCajas;
		     //return OBJETOLISTAR;
		   
		   break;
		   }
		   
		   case 1:{
		   
		     BusquedaMovtsMl.getInstance().setEnabledCheckboxTodos=false;
		     OBJETOLISTAR = CajaMenorMl.getInstance().listTodasLasCuentas;
		     //return OBJETOLISTAR;
		   
		   break;
		   }
		   
		   case 2:{
		     
		     BusquedaMovtsMl.getInstance().setEnabledCheckboxTodos=false;
		     OBJETOLISTAR = CentroCostoMl.getInstance().listCentroCosto;
		     //return OBJETOLISTAR;
		   
		   break;
		   }
		   
		   case 3:{
		   
		    BusquedaMovtsMl.getInstance().setEnabledCheckboxTodos=false;
		     OBJETOLISTAR = PersonaMl.getInstance().listPersonas;
		     //return OBJETOLISTAR;
		     break;
		   }
		 
		 }
		  
		
		
		}

	}
}