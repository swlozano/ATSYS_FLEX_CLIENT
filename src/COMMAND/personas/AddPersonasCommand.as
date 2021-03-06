package COMMAND.personas
{
	import BUSINESS.PersonasDelegate;
	
	import EVENT.PersonaEvent;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class AddPersonasCommand implements IResponder, ICommand
	{
        [Bindable]
        [Embed(source="/REC/IMAGENES/check.png")]
        public var check:Class;
		[Bindable]
        [Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Bindable]
        [Embed(source="/REC/IMAGENES/delete.png")]
        public var Non:Class;
        [Bindable]
        [Embed(source="/REC/IMAGENES/warn.png")]
        public var warn:Class;
        
        public function execute(event:CairngormEvent):void
		{
             new PersonasDelegate(this).adicionarPersonas((event as PersonaEvent).personaVo);
		}
		
		public function result(data:Object):void
		{
			if(data.result.idRespuesta==1){
			    Alert.show(data.result.mensajeRespuesta,"",0,null,null,Non,0);
			 }else if(data.result.idRespuesta==20){
			          Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			         }else if(data.result.idRespuesta==18){
			         	     Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			                }else if(data.result.idRespuesta==19){
			         	             Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			                       }else if(data.result.idRespuesta==5){
			         	                    Alert.show(data.result.mensajeRespuesta,"",0,null,null,check,0);
			         	                    var e:PersonaEvent=new PersonaEvent(PersonaEvent.LISTAR_PERSONAS,null);
			 								CairngormEventDispatcher.getInstance().dispatchEvent(e);
			                               }
		}
		
		public function fault(info:Object):void
		{
			 Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR");
		}
		
		
		
	}
}















