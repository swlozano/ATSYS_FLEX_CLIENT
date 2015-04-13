package COMMAND.RecursoHumano
{
	import BUSINESS.RecursoHumanoDelegate;
	
	import EVENT.RecursoHumanoEvent;
	
	import MODEL.RecursoHumanoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class EliminarCuentaBancariaCommand implements ICommand, IResponder
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

        public var imagenes:Array = new Array(null,null,null,null,null,null,null,null,Non,check,null,null,null,null,warn,null,null,null,null,null,warn);

		public function execute(event:CairngormEvent):void
		{
			new RecursoHumanoDelegate(this).eliminarCuentaBancaria();
		}
		
		public function result(data:Object):void
		{
			Alert.show(data.result.mensajeRespuesta,"",0,null,null,imagenes[data.result.idRespuesta],0);
			switch(data.result.idRespuesta)
			{
				case 9:
				
				    RecursoHumanoMl.getInstance().idRechumano = RecursoHumanoMl.getInstance().RecursoHumanoPpl.dgrecursohumano.selectedItem.id;
					
					var e:RecursoHumanoEvent= new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_CUENTA_BANCARIA,null,null);
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