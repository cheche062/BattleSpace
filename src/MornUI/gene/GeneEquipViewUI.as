/**Created by the LayaAirIDE,do not modify.*/
package MornUI.gene {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GeneEquipViewUI extends View {
		public var infoBox:Box;
		public var pic:Image;
		public var nameTF:Text;
		public var boxAttr:Box;
		public var kpiIcon:Image;
		public var kpiTF:Text;
		public var list:List;
		public var titleTF:Text;
		public var equipBtn_0:Button;
		public var equipBtn_1:Button;
		public var equipBtn_2:Button;
		public var bagBox:Box;
		public var itemList:List;
		public var typeTab:Tab;
		public var switchBtn:Button;
		public var icon_0:Image;
		public var icon_1:Image;
		public var icon_2:Image;
		public var closeBtn:Button;
		public var btn_0:Button;
		public var btn_1:Button;
		public var btn_2:Button;
		public var btn_3:Button;
		public var btn_4:Button;
		public var curTF:Text;
		public var xImg:Image;
		public var yImg:Image;
		public var zImg:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("gene/GeneEquipView");

		}

	}
}