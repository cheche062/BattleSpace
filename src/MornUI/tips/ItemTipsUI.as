/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ItemTipsUI extends View {
		public var bg:Image;
		public var nameTF:Text;
		public var desTF:Text;
		public var icon:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("tips/ItemTips");

		}

	}
}