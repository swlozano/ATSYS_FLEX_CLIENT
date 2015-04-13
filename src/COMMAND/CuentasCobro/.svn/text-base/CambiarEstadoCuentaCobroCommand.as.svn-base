package COMMAND.CuentasCobro
{
	import BUSINESS.CuentasCobroDelegate;
	
	import EVENT.CuentasCobroEvent;
	
	import MODEL.CuentasCobroMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.controls.Menu;
	import mx.rpc.IResponder;

	public class CambiarEstadoCuentaCobroCommand implements ICommand, IResponder
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
			new CuentasCobroDelegate(this).cambiarEstado();
		}
		
		public function result(data:Object):void
		{
			switch(data.result.idRespuesta)
			{
				
				case 5:
				     Alert.show(data.result.mensajeRespuesta,"",0,null,null,imagenes[data.result.idRespuesta],0);
				         
				         var e:CuentasCobroEvent;
				         
				        // showWindow(Menu(ppFiltro.popUp).selectedItem.num)
				         
					     switch(CuentasCobroMl.getInstance().indicePopUp){
					     	
					     	//contratos
					     	case 1:
					     	
					     		  e = new CuentasCobroEvent(CuentasCobroEvent.FILTRAR_POR_CONTRATO);
					     	      CairngormEventDispatcher.getInstance().dispatchEvent(e);
					     	      
					     	break;
					     	
					     	
					     	//fechas
					     	case 2:
					     	
					     		  e = new CuentasCobroEvent(CuentasCobroEvent.FILTRAR_POR_FECHAS);
					     	      CairngormEventDispatcher.getInstance().dispatchEvent(e);
					     	      
					     	break;
					     	
					     	
					     	//RH
					     	case 3:
					     	
					     		  e = new CuentasCobroEvent(CuentasCobroEvent.FILTRAR_POR_REC_HUMANO);
					     	      CairngormEventDispatcher.getInstance().dispatchEvent(e);
					     	      
					     	break;
					     	
					     	//all
					     	case 4:
					     	
					     		  e = new CuentasCobroEvent(CuentasCobroEvent.LISTAR_TODO);
					     	      CairngormEventDispatcher.getInstance().dispatchEvent(e);
					     	      
					     	break;
					     	
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





















