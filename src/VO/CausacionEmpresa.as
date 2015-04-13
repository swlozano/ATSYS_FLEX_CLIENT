package VO
{
	import com.adobe.cairngorm.vo.IValueObject;

	//[Bindable]
	[RemoteClass(alias="Entidades.CausacionEmpresa")]
	public class CausacionEmpresa implements IValueObject
	{
		
		 public var id:int;
		 public var diasCotizados:int;
		 public var salud:Number;
		 public var pension:Number;
		 public var ibcRiesgos:Number;
		 public var riesgos:Number;
		 public var cesantias:Number;
		 public var interesesCesantias:Number;
		 public var ccf:Number;
		 public var sena:Number;
		 public var icbf:Number;
		 public var prima:Number;
		 public var vacaciones:Number;
		 public var otro1:Number;
		 public var otro2:Number;
		 public var total:Number;
		 public var idCausacionNomina:int;
		 public var ibcEmpresa:Number;
		
		public function CausacionEmpresa()
		{
			
		}	
		
		public function Constructor(
		 id:int,
		 diasCotizados:int,
		 salud:Number,
		 pension:Number,
		 ibcRiesgos:Number,
		 riesgos:Number,
		 cesantias:Number,
		 interesesCesantias:Number,
		 ccf:Number,
		 sena:Number,
		 icbf:Number,
		 prima:Number,
		 vacaciones:Number,
		 otro1:Number,
		 otro2:Number,
		 total:Number,
		 idCausacionNomina:int,
		 ibcEmpresa:Number):CausacionEmpresa
		{
			this.id = id;
			this.diasCotizados = diasCotizados;
			this.salud = salud;
			this.pension = pension;
			this.ibcRiesgos = ibcRiesgos;
			this.riesgos = riesgos;
			this.cesantias = cesantias;
			this.interesesCesantias = interesesCesantias;
			this.ccf = ccf;
			this.sena = sena;
			this.icbf = icbf;
			this.prima = prima;
			this.vacaciones = vacaciones;
			this.otro1 = otro1;
			this.otro2 = otro2;
			this.total = total;
			this.idCausacionNomina = idCausacionNomina;
			this.ibcEmpresa = ibcEmpresa;
			return this;	
		}
		
	}
}