/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GoodsCellUI extends View {
		public var PlanImage:Image;
		public var CostImage:Image;
		public var FoodsNameText:Text;
		public var CostLabText:Text;
		public var CostText:Text;
		public var TimeLabText:Text;
		public var TimeText:Text;
		public var RewardLabText:Text;
		public var CoolTimeText:Text;
		public var BuyBtn:Button;
		public var SelectedText:Text;
		public var RewardList:List;
		public var FreeNumText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/GoodsCell");

		}

	}
}