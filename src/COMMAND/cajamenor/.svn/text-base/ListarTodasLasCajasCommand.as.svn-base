package COMMAND.cajamenor
{
	import BUSINESS.CajaMenorDelegate;
	
	import EVENT.CajaMenorEvent;
	import EVENT.CentroCostoEvent;
	
	import MODEL.CajaMenorMl;
	import MODEL.PantallasMl;
	
	import VIEW.cajaMenor.busquedaMovimientos;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarTodasLasCajasCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new CajaMenorDelegate(this).listarTodaslasCajas((event as CajaMenorEvent).cajaMenorVo);
		}
		
		public function result(data:Object):void
		{
			var array:ArrayCollection = new ArrayCollection();
			var array2:ArrayCollection = new ArrayCollection();
			var array3:ArrayCollection = new ArrayCollection();
			array = data.result;
			
		
			 for each(var x:* in array){
			 
			     if(x.esCuenta==0){
			     
			          array2.addItem(x);
			     
			        } else{
			               
			                array3.addItem(x);
			              
			              } 
                  			     
			 
			 }    if(array2.length!=0){
			      CajaMenorMl.getInstance().listTodasLasCajas = array2;
			      }
			      if(array3.length!=0){
			      CajaMenorMl.getInstance().listTodasLasCuentas=array3;
			      }
		
			
			
			switch(PantallasMl.ESTADO_PANTALLA)
			{
				
				case PantallasMl.getInstance().PANTALLA_BUSCAR_MOVIMIENTOS:
				 
				   var event:CentroCostoEvent = new CentroCostoEvent(CentroCostoEvent.LISTAR_CENTRO_COSTO,null);
                   CairngormEventDispatcher.getInstance().dispatchEvent(event);
				
				break;
				
				
				case PantallasMl.getInstance().PANTALLA_BUSCAR_MOVIMIENTOS_2:
				 
				    var busqmovimentos:busquedaMovimientos=busquedaMovimientos(PopUpManager.createPopUp(PantallasMl.atsys,busquedaMovimientos,true));
            	    PopUpManager.centerPopUp(busqmovimentos);
            	    PantallasMl.ESTADO_PANTALLA = -1;
				
				break;
				
			}
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}