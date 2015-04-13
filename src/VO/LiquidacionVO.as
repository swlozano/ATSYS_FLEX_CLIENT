package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

	public class LiquidacionVO implements ValueObject
	{
		public var id:int;
   	    public var idContrato:int;
    	public var idCuentaBancaria:int;
    	public var idFormulaPs:int;
    	public var idFormulaVacaciones:int;
    	public var idFormulaCesantias:int;
    	public var idFormuInteresCesan:int;
    	public var diasTrabajados:int;
	    public var primaServicios:Number;
	    public var vacaciones:Number;
	    public var cesantias:Number;
	    public var interesesCesantias:Number;
	    public var totalLiquidacion:Number;
	    public var fechaLiquidacion:Date;
	    public var fechaPago:Date;
	    public var sueldoBasico:Number;
	    public var cuentaBancaria:String;
	    public var formulaPs:String;
	    public var formulaVacaciones:String;
	    public var formulaCesantias:String;
	    public var formuInteresCesan:String;
		
		public function LiquidacionVO(
		
		         id:int,
   	             idContrato:int,
    		     idCuentaBancaria:int,
    	         idFormulaPs:int,
    	         idFormulaVacaciones:int,
		    	 idFormulaCesantias:int,
		    	 idFormuInteresCesan:int,
		    	 diasTrabajados:int,
			     primaServicios:Number,
			     vacaciones:Number,
			     cesantias:Number,
			     interesesCesantias:Number,
			     totalLiquidacion:Number,
			     fechaLiquidacion:Date,
			     fechaPago:Date,
			     sueldoBasico:Number,
			     cuentaBancaria:String,
			     formulaPs:String,
			     formulaVacaciones:String,
			     formulaCesantias:String,
			     formuInteresCesan:String
		
		)
			{
				this.id = id;
				this.idContrato = idContrato;
				this.idCuentaBancaria = idCuentaBancaria;
				this.idFormulaPs=idFormulaPs;
				this.idFormulaVacaciones = idFormulaVacaciones;
				this.idFormulaCesantias = idFormulaCesantias;
				this.idFormuInteresCesan = idFormuInteresCesan;
				this.diasTrabajados = diasTrabajados;
				this.primaServicios = primaServicios;
				this.vacaciones = vacaciones;
				this.cesantias = cesantias;
				this.interesesCesantias = interesesCesantias;
				this.totalLiquidacion = totalLiquidacion;
				this.fechaLiquidacion = fechaLiquidacion;
				this.fechaPago = fechaPago;
				this.sueldoBasico = sueldoBasico;
				this.cuentaBancaria = cuentaBancaria;
				this.formulaPs = formulaPs;
				this.formulaVacaciones = formulaVacaciones;
				this.formulaCesantias = formulaCesantias;
				this.formuInteresCesan=formuInteresCesan;
			}

	}
}

















