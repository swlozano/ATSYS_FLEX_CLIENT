package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
    
    [RemoteClass(alias="Entidades.CausacionPs")]
	public class CausacionPs implements ValueObject
	{
		
		public var id:int;
	    public var idContrato:int;
	    public var idFechaCorte:int;
	    public var basico:Number;
	    public var diasTrabajados:int;
	    public var totalDevengados:Number;
	    public var totalOtrosMas:Number;
	    public var total:Number;
	    public var totalRetenciones:Number;
	    public var totalDeducciones:Number;
	    public var totalAPagar:Number;
	    public var idsDeducciones:Array;
	    public var provisionPses:Array;
	    public var otrosMasPses:Array;
	    public var valorFijoPsVOs:Array;
	    public var identificacion:String;
	    public var rut:String;
	    public var contratista:String;
	    public var totalRetencionesBasicos:Number;
	    public var totalRetencionesOtros:Number;
		
		public function CausacionPs()
		{
		
		}
		
		public function constructor(
		id:int,
	    idContrato:int,
	    idFechaCorte:int,
	    basico:Number,
	    diasTrabajados:int,
	    totalDevengados:Number,
	    totalOtrosMas:Number,
	    total:Number,
	    totalRetenciones:Number,
	    totalDeducciones:Number,
	    totalAPagar:Number,
	    idsDeducciones:Array,
	    provisionPses:Array,
	    otrosMasPses:Array,
	    valorFijoPsVOs:Array,
	    identificacion:String,
	    rut:String,
	    contratista:String,
	    totalRetencionesBasicos:Number,
	    totalRetencionesOtros:Number
		):CausacionPs
		{
			this.id=id;
		    this.idContrato= idContrato;
		    this.idFechaCorte= idFechaCorte; 
		    this.basico= basico;
		    this.diasTrabajados= diasTrabajados ;
		    this.totalDevengados= totalDevengados;
		    this.totalOtrosMas= totalOtrosMas;
		    this.total= total;
		    this.totalRetenciones= totalRetenciones;
		    this.totalDeducciones=  totalDeducciones;
		    this.totalAPagar= totalAPagar;
		    this.idsDeducciones= idsDeducciones;
		    this.provisionPses= provisionPses;
		    this.otrosMasPses= otrosMasPses;
		    this.valorFijoPsVOs= valorFijoPsVOs;
		    this.identificacion= identificacion;
		    this.rut= rut;
		    this.contratista= contratista;
		    this.totalRetencionesBasicos= totalRetencionesBasicos;
		    this.totalRetencionesOtros=totalRetencionesOtros;
		    return this;
		}
		
	}
}