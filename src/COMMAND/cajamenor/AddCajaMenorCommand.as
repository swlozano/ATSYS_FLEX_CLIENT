package COMMAND.cajamenor
{
	import BUSINESS.CajaMenorDelegate;
	
	import EVENT.CajaMenorEvent;
	
	import VO.CajaMenorVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.rpc.IResponder;

	public class AddCajaMenorCommand implements IResponder, ICommand
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
		
		
		public var imagenes:Array = new Array(null,Non,null,null,null,check,null,null,null,null,null,null,null,null,warn);
		
		
        public function execute(event:CairngormEvent):void
		{
			new CajaMenorDelegate(this).adicionarCajaMenor((event as CajaMenorEvent).cajaMenorVo);
		}

		public function result(data:Object):void
		{
			
			Alert.show(data.result.mensajeRespuesta,"",0,null,null,imagenes[data.result.idRespuesta],0);
			if(data.result.idRespuesta==5){
			   var cjmenor:CajaMenorVO;
			   var ban:Number;
			   if(Application.application.currentView==3)
			    {
			    	ban=0;
			    }else{
			    	ban=1;
			    }
			   
		 	   cjmenor = new CajaMenorVO(0,0,"",0,0,0,null,0,0,ban,false);
			   var e:CajaMenorEvent = new CajaMenorEvent(CajaMenorEvent.LISTAR_CAJA_MENOR,cjmenor);
			   CairngormEventDispatcher.getInstance().dispatchEvent(e);
			}
			
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
		
	}
}