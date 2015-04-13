package COMMAND.Factura
{
	import BUSINESS.FacturaDelegate;
	
	import EVENT.FacturaEvent;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ModificarFacturaCommand implements IResponder, ICommand
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
        
        public var imagenes:Array = new Array(null,null,null,null,null,null,Non,check,null,null,null,null,null,null,null,null,null,null,null,null,null,warn);
		
		public function execute(event:CairngormEvent):void
		{
			new FacturaDelegate(this).modificarfactura((event as FacturaEvent).factura);
		}
		
		public function result(data:Object):void
		{
			Alert.show(data.result.mensajeRespuesta,"",0,null,null,imagenes[data.result.idRespuesta],0);
			switch(data.result.idRespuesta)
			{
				case 7:
					var e:FacturaEvent= new FacturaEvent(FacturaEvent.LISTAR_FACTURA,null);
			     	CairngormEventDispatcher.getInstance().dispatchEvent(e);
				break;
			}
		}
		
		public function fault(info:Object):void
		{
		}
		
	}
}