package COMMAND.usuarios
{
	import BUSINESS.UsuarioSysDelegate;
	
	import EVENT.UsuariosSysEvent;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ModificarUsuariosSysCommand implements ICommand, IResponder
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
			new UsuarioSysDelegate(this).modificarUsuario((event as UsuariosSysEvent).usuariosSysVo);

		}
		
		public function result(data:Object):void
		{
		
		 if(data.result.idRespuesta==6){
			    Alert.show(data.result.mensajeRespuesta,"",0,null,null,Non,0);
			 }else if(data.result.idRespuesta==2){
			          Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			         }else if(data.result.idRespuesta==3){
			         	     Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			                }else if(data.result.idRespuesta==4){
			         	             Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			                       }else if(data.result.idRespuesta==7){
			         	                    Alert.show(data.result.mensajeRespuesta,"",0,null,null,check,0);
			         	                    var e:UsuariosSysEvent=new UsuariosSysEvent(UsuariosSysEvent.LISTAR_US,null);
			                                CairngormEventDispatcher.getInstance().dispatchEvent(e);
			                               }else if(data.result.idRespuesta==11){
			         	                         Alert.show(data.result.mensajeRespuesta,"",0,null,null,warn,0);
			                                     }
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}














