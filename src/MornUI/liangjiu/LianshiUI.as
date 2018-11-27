/**Created by the LayaAirIDE,do not modify.*/
package MornUI.liangjiu {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.liangjiu.jingshiItemUI;

	public class LianshiUI extends View {
		public var dom_list:List;
		public var dom_fire:Label;
		public var dom_ten:CheckBox;
		public var dom_hundred:CheckBox;
		public var btn_confirm:Button;
		public var dom_food:Label;
		public var fireNotice:Box;
		public var mutilTips:Box;

		override protected function createChildren():void {
			View.regComponent("MornUI.liangjiu.jingshiItemUI",jingshiItemUI);
			super.createChildren();
			loadUI("liangjiu/Lianshi");

		}

	}
}