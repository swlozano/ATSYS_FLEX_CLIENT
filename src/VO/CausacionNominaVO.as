package VO
{
	import com.adobe.cairngorm.vo.IValueObject;

	//[Bindable]
	[RemoteClass(alias="VO.CausacionNominaVO")]
	public class CausacionNominaVO implements IValueObject
	{
		
		public var id:int;
	    public var idTributaria:int;
	    public var idFechasCorteCausacion:int;
	    public var idFechasPago:int;
	    public var subtotal:Number;
	    public var diasTrabajados:int;
	    public var totalAPagar:Number;
	    public var ibc:Number;
	    public var nombreEmpleado:String;
	    public var tiempo:Number;
	    public var vacaciones:Number;
	    public var cedula:int;
	    public var totalCausEmpresa:Number;
	    public var idsBonificaciones:Array;
	    public var deducciones:Array;
	    public var provisiones:Array;
	    public var causacionEmpresa:Array;
		
		public function CausacionNominaVO()
		{
			
		}
		
		public function CausNominaVOConstructor(id:int,
	    idTributaria:int,
	    idFechasCorteCausacion:int,
	    idFechasPago:int,
	    subtotal:Number,
	    diasTrabajados:int,
	    totalAPagar:Number,
	    ibc:Number,
	    nombreEmpleado:String,
	    tiempo:Number,
	    vacaciones:Number,
	    cedula:int,
	    totalCausEmpresa:Number,
	    idsBonificaciones:Array,
	    deducciones:Array,
	    provisiones:Array,
	    causacionEmpresa:Array):CausacionNominaVO
		{
			this.causacionEmpresa = causacionEmpresa;
			this.cedula = cedula;
			this.deducciones = deducciones;
			this.diasTrabajados = diasTrabajados;
			this.ibc = ibc;
			this.id = id;
			this.idFechasCorteCausacion = idFechasCorteCausacion;
			this.idFechasPago = idFechasPago;
			this.idsBonificaciones = idsBonificaciones;
			this.idTributaria = idTributaria;
			this.nombreEmpleado = nombreEmpleado;
			this.provisiones = provisiones;
			this.subtotal = subtotal;
			this.tiempo = tiempo;
			this.totalAPagar = totalAPagar;
			this.totalCausEmpresa = totalCausEmpresa;
			this.vacaciones = vacaciones,
			this.causacionEmpresa = causacionEmpresa;
			return this;
		}

	}

}