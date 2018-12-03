/**Created by the LayaAirIDE,do not modify.*/
package MornUI.format {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FormatViewUI extends View {
		public var btnClose:Button;
		public var imgFormat:Image;
		public var lbFormat:Label;
		public var pos:Label;
		public var posLv:Label;
		public var btnUp:Button;
		public var des1:Label;
		public var des2:Label;
		public var des3:Label;
		public var sk1:Image;
		public var sk2:Image;
		public var sk3:Image;
		public var zdes1:Label;
		public var zdes2:Label;
		public var zdes3:Label;
		public var lbUpCost:Text;
		public var imgUpCost:Image;
		public var listAttr:List;
		public var btnInfo:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("format/FormatView");

		}

	}
}