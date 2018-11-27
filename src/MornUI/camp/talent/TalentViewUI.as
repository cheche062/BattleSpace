/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp.talent {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TalentViewUI extends View {
		public var showBox:Box;
		public var actionBtn:Button;
		public var xhTxt:Text;
		public var typeIcon:Image;
		public var levelTxt:Text;
		public var pointTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("camp/talent/TalentView");

		}

	}
}