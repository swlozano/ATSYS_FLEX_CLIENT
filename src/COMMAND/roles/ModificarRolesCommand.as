package COMMAND.roles
{
	import BUSINESS.RolSysDelegate;
	
	import EVENT.RolesSysEvent;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ModificarRolesCommand implements ICommand, IResponder
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
			new RolSysDelegate(this).modificarRol((event as RolesSysEvent).rolSysVo);
		}
		
		public function result(data:Object):void
		{
			var e:RolesSysEvent;
			
			if(data.result.idRespuesta==6){
			   	 Alert.show(data.result.mensajeRespuesta,"",0,null,null,Non,0);
			   }else if(data.result.idRespuesta==7){
			   	        Alert.show(data.result.mensajeRespuesta,"",0,null,null,check,0);
			   	         e = new RolesSysEvent(RolesSysEvent.LISTAR_ROLES,null);
			            CairngormEventDispatcher.getInstance().dispatchEvent(e);
			           }else if(data.result.idRespuesta==16){
			           	         Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			                   }else if(data.result.idRespuesta==17){
			           	                Alert.show(data.result.mensajeRespuesta,"",0,null,null,check,0);
			           	                 e = new RolesSysEvent(RolesSysEvent.LISTAR_ROLES,null);
			                             CairngormEventDispatcher.getInstance().dispatchEvent(e);
			                           }else if(data.result.idRespuesta==13){
			                                    Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			                                    }
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}