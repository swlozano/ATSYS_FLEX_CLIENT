package CSS.SKIN
{
	/* -----------------------------------------------------------------------------
	IMPORT CLASSES
	----------------------------------------------------------------------------- */
	import flash.display.GradientType;
	import flash.display.Graphics;
	
	import mx.skins.ProgrammaticSkin;

	/* -----------------------------------------------------------------------------
	CREATE CLASS
	----------------------------------------------------------------------------- */
	public class BoxSkinUp extends ProgrammaticSkin
	{		
		// PanelSkin constructor
		public function BoxSkinUp() {
			super();
 		}

		/* -----------------------------------------------------------------------------
		Override the updateDisplayList() method to size and position the children in this component
		----------------------------------------------------------------------------- */
		override protected function updateDisplayList(unscaledWidth:Number,unscaledHeight:Number):void {
			 
			var g:Graphics = graphics; 
			
			//width of blue title bar
						
			/*-------------------------
			clear the graphics object before you draw the new ones
			-------------------------*/
			g.clear();
						 
			/*-------------------------
			create the Panel's title bar
			-------------------------*/
			// set the fill color for the object to be drawn
			g.beginFill(0x006699);	
			
			//g.beginGradientFill(GradientType.LINEAR,new Array(0xffff99,0x006699),null,null);
			// draw the rectangle
			g.drawRoundRectComplex(5,5,unscaledWidth - 10,35,0,10,10,0);			
			
			// end the fill color
			g.endFill();
		}
	}
}
