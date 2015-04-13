package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	import MODEL.PermisosMl;
	
	import VIEW.contratacion.terminarContrato;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListHistoriContratoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		[Embed(source="/REC/IMAGENES/alertopt.png")]
			public var alertidea:Class;

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarHitorialTerminacionesContrato();
		}
		
		public function result(data:Object):void
		{
		  ContratoMl.getInstance().listHitoriTerminContrato = data.result;
			
		}//
		  
		private function closeHandlerPantallaterminado(event:CloseEvent):void{
             
               switch(event.detail){
               
                 case Alert.YES:
                   
                   ContratoMl.getInstance().tituloPantallaTerminarContrato = "MODIFICAR TERMINACIÓN DE CONTRATO";
                   var terminarcontrato:terminarContrato=terminarContrato(PopUpManager.createPopUp(PantallasMl.atsys,terminarContrato,true));
 	      	      PopUpManager.centerPopUp(terminarcontrato);
 	      	      ContratoMl.getInstance().selectableContrato=false;
                  PermisosMl.getInstance().deshabilitarMenus();
                  PantallasMl.ESTADO_PANTALLA=-1;
                   
                   
                 break;
               
               }
             
        }
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}