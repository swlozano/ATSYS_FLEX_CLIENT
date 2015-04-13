package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.RecursoHumanoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarPaisesRecHumanoCommand implements ICommand, IResponder
	{
		
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).listarPaises();
		}
		
		public function result(data:Object):void
		{
			if(RecursoHumanoMl.getInstance().BanderaPaises){
				
				RecursoHumanoMl.getInstance().listPaisesExp = data.result;
				
			}else {
				    
				    RecursoHumanoMl.getInstance().listPaisesNat = data.result;
			        
			        } 
			        
			        if(ContratoMl.getInstance().banNacionCOntrato==1){
			        	
			        	ContratoMl.getInstance().listNacionContrato = data.result;
			        	
			         }else{
			         	
			              ContratoMl.getInstance().listNacionlabores = data.result;  
			              
			              } 
			
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}