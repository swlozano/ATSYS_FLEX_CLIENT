package MODEL
{
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	public class MovimientoMl implements ModelLocator
	{
		
         private static var instance:MovimientoMl=null;
         
         [Bindable] public var idCajaMenorToBuscarMov:int;
         [Bindable] public var fechaInMov:Date=null;
         [Bindable] public var fechaFinMov:Date=null;
         
         [Bindable] public var cbxmodCajaMenorselectedIndex:int=0;
         [Bindable] public var cbxmodPersonaselectedIndex:int=0;
         [Bindable] public var cbxmodCentroCostoselectedIndex:int=0;
         [Bindable] public var txtmodCajaMenorMovimento:String="";
         [Bindable] public var txtmodPersonaMovimento:String="";
         [Bindable] public var txtmodcentrocostoMovimento:String="";
         
         [Bindable] public var PersonaIndexIngreso:int=0;
         
         [Bindable] public var NombreResponsablePersona:String="";
         
         [Bindable] public var listConsultaMovimientoCajaMenor:ArrayCollection = null;
         
            
          [Bindable] public var arrayChart:Array;
               
         
         [Bindable] public var listConsultaMovimientoCentroCosto:ArrayCollection = null;
         
         
         
         [Bindable] public var listConsultaMovimientoPersonas:ArrayCollection = null;
         
         [Bindable] public var listMovimientoCajaMenor:Object = null;
         [Bindable] public var MovimientoPpl:Object = null;
         [Bindable] public var idMovimientoToEliminar:int;

         [Bindable] public var selectableMovimento:Boolean = true;
         
         [Bindable] public var nombreCajaMenorSelecEnMovimientosPpl:String;
         
         
         public static function getInstance():MovimientoMl
		 {
			if(instance == null)
			{ 
				instance = new MovimientoMl();
			}
			return instance;
		 }
         
	}
}