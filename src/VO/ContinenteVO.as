package VO
{
	import com.adobe.cairngorm.vo.ValueObject;
    
    [Bindable]
	public class ContinenteVO implements ValueObject
	{
		public var NombreAnglo:String;
		public var Nombrelatino:String;
		
		public function ContinenteVO(NombreAnglo:String,Nombrelatino:String)
		{
			
			this.NombreAnglo=NombreAnglo;
			this.Nombrelatino=Nombrelatino;
			
		}

	}
}