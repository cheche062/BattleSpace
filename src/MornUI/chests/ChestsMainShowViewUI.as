/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chests {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.chests.ChestPropertyComUI;
	import MornUI.componets.SkillComUI;

	public class ChestsMainShowViewUI extends View {
		public var ShadowBox:Box;
		public var LigntImage:Image;
		public var ContinueText:Text;
		public var PlayerImage:Image;
		public var HeroInfoBox:Box;
		public var NameText:Text;
		public var infoBg:Image;
		public var PopulationText:Text;
		public var LegendaryImage:Image;
		public var HeroProperty:ChestPropertyComUI;
		public var skillCom:SkillComUI;
		public var LegendaryText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.chests.ChestPropertyComUI",ChestPropertyComUI);
			View.regComponent("MornUI.componets.SkillComUI",SkillComUI);
			super.createChildren();
			loadUI("chests/ChestsMainShowView");

		}

	}
}