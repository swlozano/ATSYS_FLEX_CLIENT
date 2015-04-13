package VO
{
	import com.adobe.cairngorm.vo.ValueObject;

	public class CoincidenciaVO implements ValueObject
	{
		
		public var coincidenciaHtml:String;
		public var id:int;
		public var index:int;
		public var coincidenciaLabel:String;
		
		public function CoincidenciaVO(coincidenciaHtml:String,id:int,index:int,coincidenciaLabel:String)
		{
			this.coincidenciaHtml = coincidenciaHtml;
			this.id = id;
			this.index = index;
			this.coincidenciaLabel = coincidenciaLabel;
		}

	}
}