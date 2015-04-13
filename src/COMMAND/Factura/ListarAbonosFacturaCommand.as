package COMMAND.Factura
{
	import BUSINESS.FacturaDelegate;
	
	import EVENT.FacturaEvent;
	
	import MODEL.FacturasMl;
	import MODEL.PantallasMl;
	
	import VIEW.facturas.abonarPpl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarAbonosFacturaCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;

		public function execute(event:CairngormEvent):void
		{
			new FacturaDelegate(this).listarAbonosfactura();
		}
		  
		public function result(data:Object):void
		{
			FacturasMl.getInstance().listabonofacturas = data.result;
			if(FacturasMl.getInstance().banderaPantallaabonosPpl){
			   
			   var abonarPpal:abonarPpl=abonarPpl(PopUpManager.createPopUp(PantallasMl.atsys,abonarPpl,true));
               PopUpManager.centerPopUp(abonarPpal);
               FacturasMl.getInstance().banderaPantallaabonosPpl=false;
               
            }else{
              
                   
              
		              FacturasMl.getInstance().tipoEstado = 2;
		              FacturasMl.getInstance().tipoFecha = 3; 
		              FacturasMl.getInstance().fechaInicio = null;
		              FacturasMl.getInstance().fechaFin = null;
		              FacturasMl.getInstance().Filtrarpersona = -1;
		              
		              var e:FacturaEvent = new FacturaEvent(FacturaEvent.LISTAR_FACTURA,null);
		              CairngormEventDispatcher.getInstance().dispatchEvent(e);    
		              
		                        
            
                 }
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}









