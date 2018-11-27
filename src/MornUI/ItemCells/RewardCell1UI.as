/**Created by the LayaAirIDE,do not modify.*/
package MornUI.ItemCells {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RewardCell1UI extends View {
		public var itemIcon:Image;
		public var numText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("ItemCells/RewardCell1");

		}

	}
}