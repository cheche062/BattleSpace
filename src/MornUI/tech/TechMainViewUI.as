/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tech {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class TechMainViewUI extends View {
		public var selectedIcon:Image;
		public var layerBg:Image;
		public var resetBtn:Button;
		public var addBtn:Button;
		public var techContainerArea:List;
		public var rightBtn:Button;
		public var leftBtn:Button;
		public var techNameTF:Text;
		public var nlTF:Text;
		public var upgradeBtn:Button;
		public var upgradNameTF:Text;
		public var resetTF:Text;
		public var tpTF:Text;
		public var ppTF:Text;
		public var totalPointsTF:Text;
		public var presentPointsTF:Text;
		public var layerTF:Text;
		public var requirelayerTF:Text;
		public var nowEffectTF:Text;
		public var warningTF:Text;
		public var nowTF:Text;
		public var nowLvTF:Text;
		public var nextEffectTF:Text;
		public var nextLvTF:Text;
		public var costTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("tech/TechMainView");

		}

	}
}