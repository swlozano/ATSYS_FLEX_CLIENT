package COMMAND.Contratos
{
	import BUSINESS.ContratoDelegate;
	
	import MODEL.ContratoMl;
	import MODEL.PantallasMl;
	
	import VIEW.contratacion.ValoresFPagoGenerados;
	
	import VO.FechaPagoVO;
	
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	import mx.rpc.IResponder;

	public class GenerarValoresFormaPagoCommand implements ICommand, IResponder
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

		public function execute(event:CairngormEvent):void
		{
			new ContratoDelegate(this).generarValoresFpagoDeContrato();
		}
		  
		public function result(data:Object):void
		{
		    ContratoMl.getInstance().valoresFormaFechaspago = data.result.valorFormaFechasPagoVOs;
		    ContratoMl.getInstance().ArrayvaloresFormaFechaspago = data.result.valorFormaFechasPagoVOs;
		    
		      if(data.result.idRespuesta==5){  
		         
		          ContratoMl.getInstance().Arrayfechas=new ArrayCollection();
		         
		          for each(var x:* in ContratoMl.getInstance().ArrayvaloresFormaFechaspago){
		          	    
		          	   // ContratoMl.getInstance().Arrayfechas.addItem(x.fechaPagoVOs);
		          	   var arrFt:Array = new Array();
		          	   for each(var y:* in x.fechaPagoVOs){
		          	   
		          	     var fe:FechaPagoVO = new FechaPagoVO().FechaPagoVOConstructor(
		          	     y.fechaPago,y.fechaIni,y.fechaFin);
		          	   	 
		          	   	 arrFt.push(fe);
		          	     
		          	   }
		          	
		          	ContratoMl.getInstance().Arrayfechas.addItem(arrFt);
		          
		          }
		         
		         var arrpo:ArrayCollection = ContratoMl.getInstance().Arrayfechas;
		         
		          var valoresFpagoGen:ValoresFPagoGenerados = ValoresFPagoGenerados(PopUpManager.createPopUp(PantallasMl.atsys,ValoresFPagoGenerados,true));
		          PopUpManager.centerPopUp(valoresFpagoGen);
		    
		      }else if(data.result.idRespuesta==1){
		      	
		                 Alert.show(data.result.mensajeRespuesta,"",0,null,null,Non,0);
		                  
		              }
		      
		        
		}
		
		public function fault(info:Object):void
		{
			Alert.show("NO SE ESTABLECIÓ CONEXIÓN CON EL SERVIDOR","",0,null,null,falla,0);
		}
		
	}
}