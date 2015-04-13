package COMMAND.Liquidacion
{
	import BUSINESS.LiquidacionDelegate;
	
	import EVENT.LiquidacionEvent;
	
	import MODEL.LiquidacionMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class ListarFormulaCommand implements ICommand, IResponder
	{
		[Embed(source="/REC/IMAGENES/falla.png")]
        public var falla:Class;
        [Embed(source="/REC/IMAGENES/warn2.png")]
		public var alerta:Class;	
		
		[Embed(source="/REC/IMAGENES/alertopt.png")]
		public var alertidea:Class;

		public function execute(event:CairngormEvent):void
		{
			new LiquidacionDelegate(this).listarFormulaxTipo();
		}
		
		public function result(data:Object):void
		{  
			var e:LiquidacionEvent;
			
			switch(LiquidacionMl.getInstance().idtipoListarFormula){
				
				case 1:
				  
				   LiquidacionMl.getInstance().listFormulasPrimasServicios = data.result;
				   LiquidacionMl.getInstance().idtipoListarFormula=2;
				   e = new LiquidacionEvent(LiquidacionEvent.LISTAR_FORMULAS_X_TIPO,null);
				   CairngormEventDispatcher.getInstance().dispatchEvent(e);
			
				break;
				
				case 2:
				
				   LiquidacionMl.getInstance().listFormulasVacaciones = data.result;
				   LiquidacionMl.getInstance().idtipoListarFormula=3;
				   e = new LiquidacionEvent(LiquidacionEvent.LISTAR_FORMULAS_X_TIPO,null);
				   CairngormEventDispatcher.getInstance().dispatchEvent(e);
				
				break;
				
				case 3:
				
				   LiquidacionMl.getInstance().listFormulasCesantias = data.result;
				   LiquidacionMl.getInstance().idtipoListarFormula=4;
				   e = new LiquidacionEvent(LiquidacionEvent.LISTAR_FORMULAS_X_TIPO,null);
				   CairngormEventDispatcher.getInstance().dispatchEvent(e);
				
				break;
				
				case 4:
				
				   LiquidacionMl.getInstance().listFormulasInteresesCesantias = data.result;
				   LiquidacionMl.getInstance().idtipoListarFormula=5;
				   e = new LiquidacionEvent(LiquidacionEvent.LISTAR_FORMULAS_X_TIPO,null);
				   CairngormEventDispatcher.getInstance().dispatchEvent(e);
				
				break;
				
				case 5:
				
				   LiquidacionMl.getInstance().listFormulasOtros = data.result;
				   LiquidacionMl.getInstance().idtipoListarFormula=6;
				   
				   e = new LiquidacionEvent(LiquidacionEvent.OBTENER_DIAS_TRABAJADOS,null);
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

















