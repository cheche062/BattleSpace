/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.camp.SkillIconUI;
	import laya.html.dom.HTMLDivElement;
	import laya.display.Text;

	public class SkillInfoViewUI extends View {
		public var btn_close:Button;
		public var tab_btn:Tab;
		public var dom_skill_icon:SkillIconUI;
		public var dom_skill_title:HTMLDivElement;
		public var dom_content:HTMLDivElement;
		public var btn_up:Button;
		public var dom_attack_damage:Sprite;
		public var dom_attack:Image;
		public var dom_damage:Image;
		public var double:Box;
		public var btn1:Button;
		public var r1:Image;
		public var num1:Label;
		public var btn2:Button;
		public var r2:Image;
		public var num2:Label;
		public var single:Box;
		public var btn_add:Button;
		public var dom_cl:Image;
		public var dom_num:Label;
		public var fArea:Sprite;

		override protected function createChildren():void {
			View.regComponent("MornUI.camp.SkillIconUI",SkillIconUI);
			View.regComponent("HTMLDivElement",HTMLDivElement);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("camp/SkillInfoView");

		}

	}
}