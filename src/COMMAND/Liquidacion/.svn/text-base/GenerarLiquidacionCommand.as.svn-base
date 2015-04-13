package COMMAND.Liquidacion
{
	import BUSINESS.LiquidacionDelegate;
	
	import EVENT.LiquidacionEvent;
	import EVENT.RecursoHumanoEvent;
	
	import MODEL.ContratoMl;
	import MODEL.LiquidacionMl;
	import MODEL.PantallasMl;
	import MODEL.RecursoHumanoMl;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.adobe.cairngorm.control.CairngormEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class GenerarLiquidacionCommand implements ICommand, IResponder
	{
		

		public function execute(event:CairngormEvent):void
		{
			new LiquidacionDelegate(this).generarliquidacion((event as LiquidacionEvent).liquidacionvo);
		}
		  
		public function result(data:Object):void
		{
			LiquidacionMl.getInstance().liquidacionGenerada = data.result;
			var formulas:Object = LiquidacionMl.getInstance().liquidacionGenerada;
			
			LiquidacionMl.getInstance().TotalLiq = LiquidacionMl.getInstance().liquidacionGenerada.totalLiquidacion;
			
			/*fijarcbxPrimaServicios(formulas);
			fijarcbxvacaciones(formulas);
			fijarcbxcesantias(formulas);
			fijarcbxInteresescesantias(formulas);*/
			
			/*var crearliq:CrearLiquidacion = CrearLiquidacion(PopUpManager.createPopUp(PantallasMl.atsys,CrearLiquidacion,true));
			PopUpManager.centerPopUp(crearliq);*/
			
			PantallasMl.ESTADO_PANTALLA = PantallasMl.getInstance().PANTALLA_CREAR_LIQUIDACION;
			
			RecursoHumanoMl.getInstance().idRechumano = ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.recursoHumano.id;
			
			var evs:RecursoHumanoEvent = new RecursoHumanoEvent(RecursoHumanoEvent.LISTAR_CUENTA_BANCARIA,null,null);
			CairngormEventDispatcher.getInstance().dispatchEvent(evs);
			  
			
		}
		
		public function fijarcbxPrimaServicios(objeto:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in LiquidacionMl.getInstance().listFormulasPrimasServicios){
		  
		     if(objeto.idFormulaPs!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  LiquidacionMl.getInstance().indiceCbxPrimaservicios=cont;
		
		}
		
		public function fijarcbxvacaciones(objeto:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in LiquidacionMl.getInstance().listFormulasVacaciones){
		  
		     if(objeto.idFormulaVacaciones!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  LiquidacionMl.getInstance().indiceCbxvacasiones=cont;
		
		}
		
		public function fijarcbxcesantias(objeto:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in LiquidacionMl.getInstance().listFormulasCesantias){
		  
		     if(objeto.idFormulaCesantias!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  LiquidacionMl.getInstance().indiceCbxcesantias=cont;
		
		}
		
		public function fijarcbxInteresescesantias(objeto:Object):void{
		
		  var cont:int = 0;
		  var ban:Boolean=false;
		
		  for each(var x:* in LiquidacionMl.getInstance().listFormulasInteresesCesantias){
		  
		     if(objeto.idFormuInteresCesan!=x.id && ban==false){
		     
		       cont++;
		     
		     }else{
		     
		       ban=true;
		      
		     }
		  
		  }
		  
		  LiquidacionMl.getInstance().indiceCbxInteresesCesantias=cont;
		
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,null,0);
		}
		
	}
}








