package BUSINESS
{
	import EVENT.LiquidacionEvent;
	
	import MODEL.ContratoMl;
	import MODEL.LiquidacionMl;
	
	import VO.LiquidacionVO;
	
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class LiquidacionDelegate
	{
		private var responder	:	IResponder;
		public  var service		:	Object;
		
		public function LiquidacionDelegate(responder:IResponder)
		{
			this.responder=responder;
		} 
		
		//LiquidacionEvent = new LiquidacionEvent(LiquidacionEvent.LISTAR_DATOS_LIQUIDACION,null);
		
		public function listarLiquidacion():void{
		   
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionLiquidacion");
		   var token:AsyncToken = service.listar(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id); 
		   token.addResponder(responder);
		 
		}
		  
		public function listarFormulaxTipo():void{
		
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionLiquidacion");
		   var token:AsyncToken = service.listarFormulasPorTipo(LiquidacionMl.getInstance().idtipoListarFormula);
		   token.addResponder(responder);
		 
		}
       
       
		   
		   public function obtenerDiasTrabajados():void{
		   
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionLiquidacion");
		   var token:AsyncToken = service.getDiasTrabajados(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id);
		   token.addResponder(responder);
		 
		}
        
           public function eliminarLiquidacion():void{
		   
		   		this.service=ServiceLocator.getInstance().getRemoteObject("gestionLiquidacion");
		   		var token:AsyncToken = service.eliminar(LiquidacionMl.getInstance().idliquidacionToeliminar);
		   		token.addResponder(responder);
		 
		   }
             
           
		   public function generarliquidacion(liquidar:LiquidacionVO):void{
		   	
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionLiquidacion");
		   var token:AsyncToken = service.generarLiquidacion(liquidar.idFormulaPs,
		   liquidar.idFormulaVacaciones,liquidar.idFormulaCesantias,liquidar.idFormuInteresCesan,
		   liquidar.diasTrabajados,liquidar.primaServicios,liquidar.vacaciones,liquidar.cesantias,
		   liquidar.interesesCesantias,liquidar.sueldoBasico
		   );
		   token.addResponder(responder);
		     
		   }  
		   public function crearliquidacion(liquidar:LiquidacionVO):void{
		   	
		   this.service=ServiceLocator.getInstance().getRemoteObject("gestionLiquidacion");
		   var token:AsyncToken = service.crear(liquidar.idContrato,liquidar.idCuentaBancaria,
		   liquidar.idFormulaPs,liquidar.idFormulaVacaciones,
		   liquidar.idFormulaCesantias,liquidar.idFormuInteresCesan,
		   liquidar.diasTrabajados,liquidar.primaServicios,
		   liquidar.vacaciones,
		   liquidar.cesantias,
		   liquidar.interesesCesantias,
		   liquidar.totalLiquidacion,
		   liquidar.fechaLiquidacion,
		   liquidar.fechaPago,
		   liquidar.sueldoBasico
		   );
		   token.addResponder(responder);
	       }
	       
	       public function listarDatosLiquidacion():void{
		   
		   		this.service=ServiceLocator.getInstance().getRemoteObject("gestionLiquidacion");
		   		var token:AsyncToken = service.listarDatosLiquidacion(ContratoMl.getInstance().ContratoPpl.dgcontrato.selectedItem.id);
		   		token.addResponder(responder);
		 
		   }
	       
	       
}

}

























