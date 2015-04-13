package COMMAND.cajamenor
{
	import BUSINESS.CajaMenorDelegate;
	
	import EVENT.MovimientoEvent;
	
	import MODEL.CajaMenorMl;
	import MODEL.MovimientoMl;
	import MODEL.PantallasMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarCajasUsuarioEspecificoCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
	    [Bindable]
		[Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
	    [Embed(source="/REC/IMAGENES/alertopt.png")]
		public var alertidea:Class;

		public function execute(event:CairngormEvent):void
		{
			new CajaMenorDelegate(this).listarCajaUsuarioEspecifico();
		}
		
		public function result(data:Object):void
		{
			CajaMenorMl.getInstance().listCajasUsuarioEspecifico = data.result;
			CajaMenorMl.getInstance().listCajamenor = data.result;
			
			switch(PantallasMl.ESTADO_PANTALLA){
				
				case PantallasMl.getInstance().PANTALLA_MOVIMIENTO_PPL:
				   
				   if(CajaMenorMl.getInstance().listCajamenor.length >= 1)
				   {
				   		MovimientoMl.getInstance().idCajaMenorToBuscarMov =(CajaMenorMl.getInstance().listCajamenor as ArrayCollection).getItemAt(0).id;
				    	var e:MovimientoEvent= new MovimientoEvent(MovimientoEvent.LISTAR_MOVIMIENTO_CAJA_MENOR,null);
			     		CairngormEventDispatcher.getInstance().dispatchEvent(e);
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