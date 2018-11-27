/**Created by the LayaAirIDE,do not modify.*/
package MornUI.liangjiu {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.liangjiu.LianshiUI;
	import MornUI.liangjiu.ronglianUI;
	import MornUI.tech.TechMainViewUI;

	public class LiangjiuViewUI extends View {
		public var dom_viewStack:ViewStack;
		public var dom_tab:Tab;
		public var btn_close:Button;
		public var btn_help:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.liangjiu.LianshiUI",LianshiUI);
			View.regComponent("MornUI.liangjiu.ronglianUI",ronglianUI);
			View.regComponent("MornUI.tech.TechMainViewUI",TechMainViewUI);
			super.createChildren();
			loadUI("liangjiu/LiangjiuView");

		}

	}
}