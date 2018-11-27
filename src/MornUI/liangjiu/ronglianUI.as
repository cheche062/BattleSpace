/**Created by the LayaAirIDE,do not modify.*/
package MornUI.liangjiu {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.liangjiu.jingshiItemUI;

	public class ronglianUI extends View {
		public var dom_list:List;
		public var dom_fire:Label;
		public var dom_fireMask:Image;
		public var dom_addImg:Sprite;
		public var dom_ten:CheckBox;
		public var dom_hundred:CheckBox;
		public var dom_critical:CheckBox;
		public var btn_confirm:Button;
		public var dom_points:Label;
		public var doubleTips:Box;
		public var mutilTimes:Box;
		public var ronglianResult:Box;
		public var processBox:Box;

		override protected function createChildren():void {
			View.regComponent("MornUI.liangjiu.jingshiItemUI",jingshiItemUI);
			super.createChildren();
			loadUI("liangjiu/ronglian");

		}

	}
}