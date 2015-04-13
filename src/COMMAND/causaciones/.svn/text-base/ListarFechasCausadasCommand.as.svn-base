package COMMAND.causaciones
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.CausacionesMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.ParametrosFiltrarCausaciones;
	
	import VO.FechasCorteCausacionesVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class ListarFechasCausadasCommand implements ICommand, IResponder
	{
		
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;
		
		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).listarfechasCausadas();
		}
		
		public function result(data:Object):void
		{
			CausacionesMl.getInstance().listfechasCorteCausacion = data.result;
			
			if(CausacionesMl.getInstance().listfechasCorteCausacion!=null){
				
				if(CausacionesMl.getInstance().listfechasCorteCausacion.length>0){
					
					var arrAux:ArrayCollection;
					var fechaCCausacionVo:FechasCorteCausacionesVO;
					arrAux = new ArrayCollection();
					
					for each(var x:* in CausacionesMl.getInstance().listfechasCorteCausacion){
						
						fechaCCausacionVo = new FechasCorteCausacionesVO(x.id,x.fechaCorte,x.yearCausado,x.mesCausado,x.tipoCausacion,false);
						
						arrAux.addItem(fechaCCausacionVo);
						
					}
					
					CausacionesMl.getInstance().listfechasCorteCausacion = arrAux;
					  
					
					var parametrosFiltrarCausaciones:ParametrosFiltrarCausaciones = ParametrosFiltrarCausaciones(PopUpManager.createPopUp(PantallasMl.atsys,ParametrosFiltrarCausaciones,true));
					PopUpManager.centerPopUp(parametrosFiltrarCausaciones);
					
				}
				
			}
			
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}