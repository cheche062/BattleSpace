/**Created by the LayaAirIDE,do not modify.*/
package MornUI.tips {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import laya.html.dom.HTMLDivElement;

	public class SkillTipUI extends View {
		public var bg:Image;
		public var skillBG:Image;
		public var icon:Image;
		public var attLabel:Text;
		public var damLabel:Text;
		public var line:Image;
		public var damIcon:Image;
		public var attIcon:Image;
		public var infoTF:Label;
		public var nameTf:HTMLDivElement;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("tips/SkillTip");

		}

	}
}