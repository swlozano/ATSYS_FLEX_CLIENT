package COMMAND.SolicitudesServicios
{
	import BUSINESS.SolicitudesServiciosDelegate;
	
	import EVENT.SolicitudesServiciosEvent;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class AddFichaPermisoCommand implements ICommand, IResponder
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
        
		public var imagenes:Array = new Array(null,Non,null,null,null,check,null,null,null,null,null,null,null,null,warn,null,null,null,null,null,warn);

		public function execute(event:CairngormEvent):void
		{
			new SolicitudesServiciosDelegate(this).adicionarFicha((event as SolicitudesServiciosEvent).fichasVo);
		}
		
		public function result(data:Object):void
		{
			Alert.show(data.result.mensajeRespuesta,"",0,null,null,imagenes[data.result.idRespuesta],0);
			switch(data.result.idRespuesta)
			{
				case 5:
					
				    var e:SolicitudesServiciosEvent= new SolicitudesServiciosEvent(SolicitudesServiciosEvent.LISTAR_FICHA_PERMISO,null);
			        CairngormEventDispatcher.getInstance().dispatchEvent(e);
				
				break;
			}
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}






