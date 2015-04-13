package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.CuentasCobroMl;
	import MODEL.PantallasMl;
	
	import VIEW.CuentasCobro.FiltroContrato;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarContratoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
	
		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarContrato();
		}
	
		public function result(data:Object):void
		{
 			ContratoMl.getInstance().listContrato = data.result;
 			
 			switch(PantallasMl.ESTADO_PANTALLA){
 				
 				case PantallasMl.getInstance().PANTALLA_FILTRO_CONTRATO_CUENTA_COBRO:
 				
 				    if(ContratoMl.getInstance().listContrato!=null || ContratoMl.getInstance().listContrato.length>0){
 				    	
 				    	PantallasMl.ESTADO_PANTALLA=-1;
 				    	var filtrocontrato:FiltroContrato = FiltroContrato(PopUpManager.createPopUp(PantallasMl.atsys,FiltroContrato,true));
 				    	PopUpManager.centerPopUp(filtrocontrato);
 				    	
 				    }else
					    {
							PantallasMl.ESTADO_PANTALLA = -1;
							 CuentasCobroMl.getInstance().CuentasCobroPpl.ppfiltro.selectedIndex=5;
							
	            	 	     Alert.show("No hay CONTRATOS por los cuales filtrar. Agregue uno para utilizar este modo de Filtro","Mensaje de alerta",0,null,null,alerta,0);
						
					    }
 				
 				break;
 				
 			}
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}