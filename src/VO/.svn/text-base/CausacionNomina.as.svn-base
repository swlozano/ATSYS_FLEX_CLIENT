package VO
{
	import com.adobe.cairngorm.vo.IValueObject;

	//[Bindable]
	[RemoteClass(alias="Entidades.CausacionNomina")]
	public class CausacionNomina implements IValueObject
	{
		
	public var id:int;
    public var idContrato:int;
    public var idFechaCorte:int;
    public var idTributaria:int;
    public var salario:Number;
    public var ibc:Number;
    public var diasTrabajados:int;
    public var subtotal:Number;
    public var auxilioTransporte:Number;
    public var descuentoSalud:Number;
    public var descuentoPension:Number;
    public var totalOtrasDeducciones:Number;
    public var totalOtrosMas:Number;
    public var totalAPagar:Number;
    public var totalCausEmpresa:Number;
    public var vacaciones:Number;
    //NO HACEN PARTE DE LA TABLA, SOLO ES INFORMACION
    public var  idRecursoHumano:int;
    public var  nombreRh:String;
    public var  identificacion:String;
    public var  tipoContrato:String;
    public var  idTipoContrato:String;
    public var  tiempo:String;
    public var  tributaria:Tributaria;
    public var  idsDeducciones:Array;
    public var  provisiones:Array;
    public var  otrosMases:Array;
    public var  causacionEmpresa:CausacionEmpresa;
		
		
		public function CausacionNomina()
		{
			
		}
		
		public function CausacionNominaConstructor(
			id:int,    idContrato:int,		    idFechaCorte:int,
		    idTributaria:int,		    salario:Number,		    ibc:Number,
		    diasTrabajados:int,		    subtotal:Number,		    auxilioTransporte:Number,
		    descuentoSalud:Number,		    descuentoPension:Number,		    totalOtrasDeducciones:Number,
		    totalOtrosMas:Number,		    totalAPagar:Number,		    totalCausEmpresa:Number,
		    vacaciones:Number,		    idRecursoHumano:int,		    nombreRh:String,
		    identificacion:String,		    tipoContrato:String,		    idTipoContrato:String,
		    tiempo:String,		    tributaria:Tributaria,		    idsDeducciones:Array,
		    provisiones:Array,		    otrosMases:Array,		    causacionEmpresa:CausacionEmpresa):CausacionNomina
		{
			this.id = id;			this.idContrato = idContrato;			this.idFechaCorte = idFechaCorte;
			this.idTributaria = idTributaria;			this.salario = salario;			this.ibc = ibc;
			this.diasTrabajados = diasTrabajados;			this.subtotal = subtotal;	this.auxilioTransporte = auxilioTransporte;
			this.descuentoSalud=descuentoSalud;this.descuentoPension=descuentoPension;this.totalOtrasDeducciones = totalOtrasDeducciones;
			this.totalOtrosMas = totalOtrosMas;this.totalAPagar = totalAPagar;this.totalCausEmpresa=totalCausEmpresa;
			this.vacaciones = vacaciones; this.idRecursoHumano;this.nombreRh = nombreRh;
			this.identificacion = identificacion; this.tipoContrato=tipoContrato;this.idTipoContrato = idTipoContrato;
			this.tiempo = tiempo; this.tributaria = tributaria;this.idsDeducciones = idsDeducciones;
			this.provisiones = provisiones; this.otrosMases=otrosMases;this.causacionEmpresa = causacionEmpresa;
			return this;
			
		}
	}
}