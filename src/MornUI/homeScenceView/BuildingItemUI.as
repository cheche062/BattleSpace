/**Created by the LayaAirIDE,do not modify.*/
package MornUI.homeScenceView {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class BuildingItemUI extends View {
		public var bg:Image;
		public var icon:Image;
		public var buildSp:Box;
		public var steelIcon:Image;
		public var stoneIcon:Image;
		public var timeIcon:Image;
		public var steelTF:Label;
		public var stoneTF:Label;
		public var timeTF:Label;
		public var expTF:Label;
		public var numTF:Label;
		public var lockTF:Text;
		public var fullTF:Text;
		public var nameTF:Text;
		public var infoBtn:Button;
		public var desTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("homeScenceView/BuildingItem");

		}

	}
}