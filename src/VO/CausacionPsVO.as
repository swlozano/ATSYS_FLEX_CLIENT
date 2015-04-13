package VO
{
	import com.adobe.cairngorm.vo.IValueObject;
    
    [RemoteClass(alias="VO.CausacionPsVO")]
	public class CausacionPsVO implements IValueObject
	{
		public var id:int;
	    public var idFechasPago:int;
	    public var rut:String;
	    public var contratista:String;
	    public var basico:Number;
	    public var diasTrabajados:int;
	    public var devengados:Number;
	    public var totalBonificaciones:Number;
	    public var totalAPagar:Number;
	    public var Registro_val_retencion:Array;
	    public var bonificacion:Array;
	    public var provision:Array;
	    public var deduccion:Array;
		
		public function CausacionPsVO()
		{
		}
		
		public function CausPsVOConstructor(
		   id:int,
	       idFechasPago:int,
	       rut:String,
	       contratista:String,
	       basico:Number,
	       diasTrabajados:int,
	       devengados:Number,
	       totalBonificaciones:Number,
	       totalAPagar:Number,
	       Registro_val_retencion:Array,
	       bonificacion:Array,
	       provision:Array,
	       deduccion:Array
	    ):CausacionPsVO
		{
			
			this.id = id;
			this.idFechasPago = idFechasPago;
			this.rut = rut;
			this.contratista = contratista;
			this.basico = basico;
			this.diasTrabajados = diasTrabajados;
			this.devengados = devengados;
			this.totalBonificaciones = totalBonificaciones;
			this.totalAPagar = totalAPagar;
			this.Registro_val_retencion = Registro_val_retencion;
			this.bonificacion = bonificacion;
			this.provision = provision;
			this.deduccion = deduccion;
			
			return this;
			
		}

	}
}



