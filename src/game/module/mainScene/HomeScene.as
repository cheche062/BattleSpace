package game.module.mainScene
{
	import MornUI.mainView.unlockComUI;
	
	import game.common.AnimationUtil;
	import game.common.DataLoading;
	import game.common.LayerManager;
	import game.common.ModuleManager;
	import game.common.ResourceManager;
	import game.common.SoundMgr;
	import game.common.ToolFunc;
	import game.common.XFacade;
	import game.common.XTip;
	import game.common.XUtils;
	import game.common.baseScene.BaseScene;
	import game.common.baseScene.SceneType;
	import game.global.GameConfigManager;
	import game.global.GameLanguage;
	import game.global.GameSetting;
	import game.global.ModuleName;
	import game.global.consts.ServiceConst;
	import game.global.data.ConsumeHelp;
	import game.global.data.DBBuilding;
	import game.global.data.DBBuildingCD;
	import game.global.data.DBBuildingUpgrade;
	import game.global.data.DBFog;
	import game.global.data.DBItem;
	import game.global.data.DBMilitary;
	import game.global.data.DBMonsterStage;
	import game.global.data.DBUnit;
	import game.global.data.bag.ItemData;
	import game.global.event.Signal;
	import game.global.event.TrainBattleLogEvent;
	import game.global.util.ItemUtil;
	import game.global.util.TimeUtil;
	import game.global.util.TraceUtils;
	import game.global.vo.BuildingLevelVo;
	import game.global.vo.ItemVo;
	import game.global.vo.User;
	import game.global.vo.VoHasTool;
	import game.global.vo.funGuide;
	import game.module.activity.ActivityMainView;
	import game.module.alert.XAlert;
	import game.module.login.PreLoadingView;
	import game.module.mainui.BuildEvent;
	import game.module.mainui.FogInfoVo;
	import game.module.mainui.MainMenuView;
	import game.module.mainui.MainView;
	import game.module.mainui.SceneVo;
	import game.module.mainui.speedView.SpeedView;
	import game.module.military.MilitaryView;
	import game.module.monterRiot.MonsterRiotView;
	import game.net.socket.WebSocketNetService;
	
	import laya.display.Sprite;
	import laya.display.Text;
	import laya.events.Event;
	import laya.maths.Point;
	import laya.maths.Rectangle;
	import laya.net.Loader;
	import laya.net.URL;
	import laya.ui.Image;
	import laya.utils.Ease;
	import laya.utils.Handler;
	import laya.utils.Tween;
	
	public class HomeScene extends BaseScene
	{
		/**
		 * 网格展示
		 */
		public var gridSp:GridSprite;
		/**
		 *建筑层 
		 */
		public var buildingLayer:Sprite;
		/**
		 * 建筑临时文件
		 */
		private var _tmpBuilding:BaseArticle;
		/**
		 * 当前选中的建筑
		 */
		private var _selectedBuilding:BaseArticle;
		
		/**数据支撑*/
		private var _vo:SceneVo = null;

		/**
		 * 显示区域
		 */
		private var _scrollRect:Rectangle;
		//记录正在升级的建筑
		private var _upBuilds:Array = [];
		
		/**队列满之后的回调*/
		public static var speedHandler:Handler;
		
		/**切图宽度*/
		public static const SizeX:int = 7;
		public static const SizeY:int = 4;
		
		public static const CellW:int = 800;
		public static const CellH:int = 729;
		
		private var _imgs:Array = [];
		private var _imgContainer:Sprite;
		
		/**迷雾容器*/
		private var _fogContainer:Sprite;
		/**解锁容器*/
		private var _lockContainer:Sprite;

		private const AREA_TYPE_FUN = "fun";
		private const AREA_TYPE_RES = "res";
		
		public function HomeScene()
		{
			isResDispose = false;
			m_bCanDrag = true;
		}
		
		/**覆盖这个方法，达到重用的效果*/
		override public function show(...args):void{
			if(!m_sprMap){
				initScence();
				this.loadMap();
			}else{
				this.loadMapCell();
				onStageResize();
				_vo = User.getInstance().sceneInfo;
			}
			
			// 层级顺序    背景图，网格层，迷雾层，建筑层，迷雾锁
			_fogContainer = new Sprite();
			_fogContainer.zOrder = 2;
			m_sprMap.addChild(_fogContainer);
			
			_lockContainer = new Sprite();
			_lockContainer.zOrder = 4;
			m_sprMap.addChild(_lockContainer);
			
			DataLoading.instance.show();
			WebSocketNetService.instance.sendData(ServiceConst.B_INFO,null);
			WebSocketNetService.instance.sendData(ServiceConst.M_INFO,null);
			super.show();
			
			SoundMgr.instance.playMusicByURL(ResourceManager.instance.getSoundURL("mainbase"));
		}
		
		override protected function loadMap():void{
			m_sprMap.width = SizeX*CellW;
			m_sprMap.height = SizeY*CellH;
			
			loadMapCell();
			loadMapCallBack();
		}
		
		private function loadMapCell():void{
			var url:String;
			var id:Number;
			var img:Image;
			if(!_imgContainer){
				_imgContainer = new Sprite();
				_imgContainer.zOrder = 0;
				m_sprMap.addChild(_imgContainer);
				m_sprMap.cacheAsBitmap = true;
			}
			for(var i:int=0; i<SizeY; i++){
				for(var j:int=0; j<SizeX; j++){
					id = i*SizeX + j;
					if(id < 9){
						url = "0"+(id+1)
					}else{
						url = (id+1) + "";
					}
					url = URL.formatURL(ResourceManager.instance.setResURL("scene\/main\/mainscene_"+url+".jpg"));
					
					img = _imgs[id];
					if(!img){
						img = new Image();
						_imgs[id] = img;
//						img.scale(1.25,1.25);
						m_sprMap.addChildAt(img,0);
						img.pos(j*CellW, i*CellH);
					}
					img.skin = "";
					//img.skin = url;
					img.name = url;
				}
			}
			showObject();
		}
		
		protected function loadMapCallBack():void{
			super.onMapLoaded();
			this._scrollRect = new Rectangle(0,0, LayerManager.instence.stageWidth, LayerManager.instence.stageHeight);
			this.scrollRect = _scrollRect;
			
			XFacade.instance.closeModule(PreLoadingView);
			_vo = User.getInstance().sceneInfo;
			WebSocketNetService.instance.sendData(ServiceConst.M_REFRESH, null);
		}
		
		override protected function initMapPosition():void{
			super.initMapPosition();
			
			if(GameSetting.IsRelease){
				m_sprMap.x = 640;
				m_sprMap.y = 546;
			}else{
				m_sprMap.x = 620;
				m_sprMap.y = 600;
			}
		}
		
		private var legionwar_state;//交战城池列表
		private var boss_state;//交战城池列表
		
		private function openArmyGroupMapView():void{
			if (User.getInstance().hasFinishGuide)
			{
				XFacade.instance.openModule("ArmyGroupMapView",{legionwar_state: this.legionwar_state,boss_state:this.boss_state});
				//						XFacade.instance.openModule(ModuleName.NewArmyGroupView);
				XFacade.instance.closeModule(MainMenuView);
			}
		}
		
		private var STORY_STAGE:String = "config/story_stage.json";//重置条件
		
		/**倒计时的清理函数*/
		private var clearTimerHandler:Function;
		private function doClearTimerHandler():void {
			clearTimerHandler && clearTimerHandler();
			clearTimerHandler = null;
		}
		
		private function getBossNotice():void{
			var viewMain:MainView = ModuleManager.intance.getModule(MainView);
			viewMain.view.lb_boss_time.text = '';
			viewMain.view.lb_boss_time.visible = false;
			if(boss_state){
				viewMain._view.imgArmyGroup.skin = 'mainUi/icon_juntuan_boss.png';
				viewMain._view.armyGroupBtn.skin = 'mainUi/btn_right2_1.png';
				//请求国战BOSS倒计时数据
				WebSocketNetService.instance.sendData(ServiceConst.BOSS_OPEN_VIEW);
			}
			else if(legionwar_state.length){
				viewMain._view.imgArmyGroup.skin = 'mainUi/icon_juntuan.png';
				viewMain._view.armyGroupBtn.skin = 'mainUi/btn_right2_1.png';
			}
			else{
				viewMain._view.imgArmyGroup.skin = 'mainUi/icon_juntuan.png';
				viewMain._view.armyGroupBtn.skin = 'mainUi/btn_right2.png';
			}
		}
		
		/**处理网络请求结果*/
		//一次性请求标志
		private var _hasDone:Boolean = false;
		public static var ARTICLE_UPDATE:String = "ARTICLE_UPDATE";
		private function onResult(cmdStr:Number,... args):void{
			DataLoading.instance.close();
//			trace("HomeScene", cmdStr, args);
			switch(cmdStr){
				//国战BOSS倒计时
				case ServiceConst.BOSS_OPEN_VIEW:
					var result = args[1];
					var endTime = result["end_time"];
					doClearTimerHandler();
					var viewMain:MainView = ModuleManager.intance.getModule(MainView);
					clearTimerHandler = ToolFunc.limitHandler(Math.abs(endTime - TimeUtil.nowServerTime), function(time) {
//						var detailTime = TimeUtil.toDetailTime(time);
						if(time>60*5){
							viewMain.view.lb_boss_time.text = '';
							viewMain.view.lb_boss_time.visible = false;
						}else{
							viewMain.view.lb_boss_time.visible = true;
							viewMain.view.lb_boss_time.text = TimeUtil.formatStopwatch(time*1000);
						}
					}, function() {
						viewMain.view.lb_boss_time.text = '';
						viewMain.view.lb_boss_time.visible = false;
						clearTimerHandler = null;
						TraceUtils.log('倒计时结束：：：');
					}, false);
					break;
				//占矿状态判断
				case ServiceConst.MINE_INIT:
					if (args[1].mine_star_id != "")
					{
//						var build_STORE:BaseArticle = getBuildByBid(DBBuilding.B_MINE);
//						if(build_STORE){
//							build_STORE.showAction(true, "mainUi/9.png");
//						}
					}
					else{
						//var build_STORE:BaseArticle = getBuildByBid(DBBuilding.B_MINE);
						//						if(build_STORE){
						//							build_STORE.showAction(true, "mainUi/9.png");
						//						}
					}
					break;
				//基地附近的红点
				case ServiceConst.GET_ACT_LIST:
				{
					var activityData = args[0].activity; 
					for(var i = 0;i<activityData.length;i++){
						if(activityData[i].tid == 19){
							var build_STORE:BaseArticle = getBuildByBid(DBBuilding.B_STORE);
							if(build_STORE){
								build_STORE.showAction(true, "mainUi/9.png");
							}
						}
						else if(activityData[i].tid == 21){
							var build_BOX:BaseArticle = getBuildByBid(DBBuilding.B_BOX);
							if(build_BOX){
								build_BOX.showAction(true, "mainUi/9.png");
							}
						}
					}
					if(args[0].guideid){
						arrHasGotGuide=args[0].guideid;
					}
					break;
				}	
				case ServiceConst.B_INFO:
					HomeData.intance.resetMapData();
					//国战数据相关
					legionwar_state = args[1].legionwar_state;
					boss_state = args[1].boss_state;
					this.timer.once(5000, this, getBossNotice);
					//基地互动宝箱
					var rewardArr:Array = args[1].base_rob_info.day_box_reward;
					User.getInstance().day_box_reward = (rewardArr && rewardArr.length);
					
					_vo.updateValue(args[1]);
					HomeData.updateFunResFogxy(_vo.fun_fog_id, _vo.res_fog_id);
					
					this.initMap();
					
					this.initBuilding();
					this.updateBuildingTime();
					//注册图标=======================================
					HomeSceneUtil.registerHarvest(this._buildItemList);
					//更新菜单========================
					if(_selectedBuilding){
						XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_LVUP, this._selectedBuilding.data])
					}
					/**更新剩余刷新次数以及升降级信息*/
					MainView(XFacade.instance.getView(MainView)).update();
					/**处理军衔升降机*/
					if(DBMilitary.state != 0){
						onMilitaryChange(DBMilitary.state);
					}
					showObject();
					User.getInstance().event();
					XFacade.instance.openModule(ModuleName.MainView);
					//新增，性能优化--已放弃
					if(!_hasDone){
						//5秒后请求建筑附加数据
						this.timer.once(5000, this, getBuildNotice);
						//
						DBUnit.isAnyCanUp();
						DBUnit.isRadioCanUp();
						//6秒后请求训练状态
						build = getBuildByBid(DBBuilding.B_TRAIN);
						if(build)
						{
							this.timer.once(1000, TrainInfoCom, TrainInfoCom.initTranInfo,[build]);
						}
					} 
					//占矿状态，0空闲  1挖矿,放在建筑初始化后面
					if (args[1].mine_fight_status == 0)
					{
						var build_B_MINE:BaseArticle = getBuildByBid(DBBuilding.B_MINE);
						if(build_B_MINE){
							build_B_MINE.showAction(true, "mainUi/10.png");
						}
					}
					else{
						var build_B_MINE:BaseArticle = getBuildByBid(DBBuilding.B_MINE);
						if(build_B_MINE){
							build_B_MINE.showAction(true, "mainUi/11.png");
						}
					}
					
					//所有需要弱引导的建筑物加上小箭头,建筑物开放置灰
					for(var i:int=0; i<_buildItemList.length; i++){
						var buildData:BaseArticle = _buildItemList[i];
						//建筑物是否开放
						if(isOpenBuild(buildData.data.buildId)){
							buildData.gray = false;
						}
						else{
							buildData.gray = true;
						}
					}
					refGuildBuildType();
					break;
				case ServiceConst.M_INFO:
					MonsterLogic.buildingList = this._buildItemList;
					var list:Array = MonsterLogic.createMonster(args[1]);
					var m:BaseArticle;
					if(list.length){
						for(var i:int=0; i<list.length; i++){
							m = list[i]
							this._buildItemList.push(m);
							setBuildPos(m,m.showPoint);
							HomeData.intance.addMonsterBlock(m.showPoint.x,m.showPoint.y, parseInt(m.data.buildId));
						}
						SortingFun();
					}
					break;
				case ServiceConst.B_MOVE:
					//确认移动位置
					
					if (!_selectedBuilding)
					{
						return;
					}
					_selectedBuilding.realPoint = XUtils.clonePoint(_selectedBuilding.showPoint);
					HomeData.intance.modifyData(selectedBuilding,1);
					if(_exBuild){
						_exBuild.realPoint = XUtils.clonePoint(_exBuild.showPoint);
						HomeData.intance.modifyData(_exBuild,1);
						_exBuild = null;
					}
					break;
				case ServiceConst.B_BUILD:
					SoundMgr.instance.playSound(ResourceManager.getSoundUrl("ui_building_build",'uiSound'));
					//修改状态
					_tmpBuilding.data.id = args[1][0];
					gridSp.showGrid(false);
										
					//坐标点
					this._selectedBuilding.realPoint.x = Number(args[1][1]["xpos"]);
					this._selectedBuilding.realPoint.y = Number(args[1][1]["ypos"]);
					//压入数据
					HomeData.intance.modifyData(selectedBuilding,1);
					//
					//维护数据
					var tmp:Object = args[1]
					var tmpId:String = tmp[0];
					_vo.building[tmpId] = tmp[1];//建筑数据
					_vo.queue = tmp[2]//队列数据
//					TraceUtils.log("_vo.queue:"+JSON.stringify(_vo.queue));
					//刷时间条
					updateBuildingTime();
					
					var key:String = _tmpBuilding.data.buildId.replace("B","")
					if( key == DBBuilding.B_PROTECT){
						/**基地互动的信息*/
						MainView(XFacade.instance.getView(MainView)).update();
					}else if(HomeSceneUtil.PRODUCE_BUILDS.indexOf(key) != -1){//重新设定收获图标
						HomeSceneUtil.redo();
					}
					_tmpBuilding = null;
					//重新设定菜单
					XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_SPEED, this.selectedBuilding.data])
					User.getInstance().event();
					Signal.intance.event(HomeScene.ARTICLE_UPDATE);
					break;
				case ServiceConst.B_SWAP:
					HomeData.intance.modifyData(selectedBuilding,1);
					selectedBuilding.realPoint = XUtils.clonePoint(selectedBuilding.showPoint);
					_exBuild.realPoint = XUtils.clonePoint(_exBuild.showPoint);
					//HomeData.intance.modifyData(_exBuild,1);
					_exBuild = null;
					break;
				case ServiceConst.B_LV_UP:
					_selectedBuilding.data.level += 1;
					User.getInstance().sceneInfo.updateBuildLv(_selectedBuilding.data.id, _selectedBuilding.data.level);
					_selectedBuilding.update(_selectedBuilding.data);
					key = selectedBuilding.data.buildId.replace("B","")
					if( key == DBBuilding.B_PROTECT){
						/**基地互动的信息*/
						MainView(XFacade.instance.getView(MainView)).update();
					}
					//数据维护
					_vo.queue = args[1][2];
//					trace("_vo.queue:"+JSON.stringify(args[1][2]));
					Signal.intance.event(HomeScene.ARTICLE_UPDATE);
					this.updateBuildingTime();
					//重新设定菜单
					XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_SPEED, this.selectedBuilding.data])
					 
					
					break;
				case ServiceConst.B_ONCE:
				
					//TraceUtils.log("秒建筑："+JSON.stringify(args));
					var dueuqId:int = args[1][1];
					//TraceUtils.log("要秒掉队列id:"+dueuqId);
					onceBuilding(dueuqId);
					_vo.queue = args[1][0];
					Signal.intance.event(HomeScene.ARTICLE_UPDATE);
//					updateBuildingTime();
					//重新设定菜单
					if(this._selectedBuilding != _tmpBuilding){
						selectedBuilding.upgradeDone();
						XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_LVUP, this.selectedBuilding.data])
					}
				
					/**如果有回调-执行掉*/
					if(speedHandler){
						speedHandler.run && speedHandler.run();
						speedHandler.recover && speedHandler.recover(); 
						speedHandler = null;
					}
					break;
				case ServiceConst.B_RUIN:
					var dueuqId:int = args[1][1];
					//TraceUtils.log("_vo.queue:"+JSON.stringify(_vo.queue));
					onceBuilding(dueuqId);
					_vo.queue = args[1][0];
					Signal.intance.event(HomeScene.ARTICLE_UPDATE);
					
					if(_selectedBuilding.data.level == 1){//新建建筑，直接摧毁
						delBuildingById(_selectedBuilding.data.id);
						//销毁数据
						this._vo.ruin(_selectedBuilding.data.id);
						
						key = selectedBuilding.data.buildId.replace("B","")
						if( key == DBBuilding.B_PROTECT){
							/**基地互动的信息*/
							MainView(XFacade.instance.getView(MainView)).update();
						}
						
						selectedBuilding = null;
						XFacade.instance.closeModule(MainMenuView)
						User.getInstance().event();
					}else{
						_selectedBuilding.data.level -= 1;
						User.getInstance().sceneInfo.updateBuildLv(_selectedBuilding.data.id, _selectedBuilding.data.level);
						_selectedBuilding.update(_selectedBuilding.data);
						//重新设定菜单
						XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_LVUP, this.selectedBuilding.data])
					}
				
					break;
				
				case ServiceConst.B_EXPAND:
					var _result = args[1];
					_vo.updateValue(_result);
					HomeData.updateFunResFogxy(_vo.fun_fog_id, _vo.res_fog_id);
					
					initMap();
					
					break;
				
				case ServiceConst.B_HARVEST:
					if (!_selectedBuilding||!_selectedBuilding.harvestIcon)
					{
						return;
					}
					var p:Point = new Point(_selectedBuilding.harvestIcon.x,_selectedBuilding.harvestIcon.y)
					p = _selectedBuilding.localToGlobal(p)
					//收获动画
					ItemUtil.showHarvestAni(_selectedBuilding.harvestIcon.icon.skin,p);
					showHarvestNum(args[1][0]); 
					_selectedBuilding.data.resource = "2=0";
					_selectedBuilding.showHarvest(false)
					selectedBuilding = null;
					HomeSceneUtil.redo();
					break;
				case ServiceConst.B_TIMEOVER:
					_vo.queue = args[1].queue;
					Signal.intance.event(HomeScene.ARTICLE_UPDATE);
					break;
				case ServiceConst.PUSH_INVADE:
					//
					var bId:String = args[2];
					var build:BaseArticle = getBuildByBid(bId);
					if(build){
						if(bId == DBBuilding.B_MINE){
							build.showAction(true, "mainUi/"+args[3]+".png");
							build.isShowMine = args[3];
						}else if(bId == DBBuilding.B_PROTECT){
							build.showAction(true, "mainUi/"+args[3]+".png");
							build.isShowMine = args[3];
						}else if(bId == DBBuilding.B_TRANSPORT){
							build.showAction(true, "mainUi/"+args[3]+".png");
							build.isShowTransport = args[3];
							Signal.intance.event(TrainBattleLogEvent.TRAIN_BATTLELOG);
						}
					}
					break;
				case ServiceConst.getNotice:
					var info:Object = args[1];
					for(var i:* in info){
						build = getBuildByBid(i);
						if(build){
							if(i == DBBuilding.B_MINE){
								build.showAction(true, "mainUi/"+info[i]+".png");
								build.isShowMine = info[i];
							}else if(i == DBBuilding.B_PROTECT){
								build.showAction(true, "mainUi/"+info[i]+".png");
								build.isShowHD = info[i];
							}else if(i == DBBuilding.B_TRANSPORT){
								build.showAction(true, "mainUi/"+info[i]+".png");
								build.isShowTransport = info[i];
								Signal.intance.event(TrainBattleLogEvent.TRAIN_BATTLELOG);
							}
						}
					}
					break;
				case ServiceConst.delNotice:
					//
					break;
				case ServiceConst.Build_Item_CD:
					XTip.showTip("L_A_17006");
					var dueuqId:int = args[1][1];
//					TraceUtils.log("_vo.queue:"+JSON.stringify(_vo.queue));
					onceBuilding(dueuqId);
					_vo.queue = args[1][0];
					updateBuildingTime();
					Signal.intance.event(HomeScene.ARTICLE_UPDATE);
					if(!_vo.getQueueId(selectedBuilding.data.id)){
						selectedBuilding.upgradeDone();
					}
					if(ModuleManager.intance.hasModule(SpeedView)){
						var v:SpeedView = ModuleManager.intance.getModule(SpeedView) as SpeedView; 
						if(v.displayedInStage && _selectedBuilding){
							XFacade.instance.openModule("SpeedView", _selectedBuilding.data);
						}
					}
					break;
				case ServiceConst.BUILDING_HELP_UPDATE:
					User.getInstance().sceneInfo.updateBuildQueue(args[2].queue[0][0], args[2].queue[0]);
					updateBuildingTime();
					break;
				
				//进入公会
				case ServiceConst.JOIN_GUILD_OK:
					// 加入公会后表示   提示用户领取首次入会的奖励
					/**暂时不上该活动*/
//					if (User.getInstance().has_add_guild_reward == 0) {
//						User.getInstance().has_add_guild_reward = 1;
//						User.getInstance().event();
//					}
					 
					break;
				
			}
		}
		
		public function showHarvestNum(arr:Array):void
		{
			// TODO Auto Generated method stub
		
			if(arr)
			{
				var itemId:Number = arr[0];
				var itemNum:Number = arr[1];
				var dataItem:ItemVo = DBItem.getItemData(itemId);
				TraceUtils.log("收获:"+dataItem.name+"*"+itemNum);
				var view:* = ModuleManager.intance.getModule(MainView);
				var txt:Text = new Text();
				txt.text = GameLanguage.getLangByKey(dataItem.name)+"  x  "+itemNum;
				view.addChild(txt);
				txt.x = view.width/2-100;
				txt.y = view.height/2;
				txt.font="Futura";
				txt.color="#ffffff";
				txt.height=20;
				txt.fontSize=30;
				txt.strokeColor = "#000000";
				txt.stroke = 2;
				Tween.to(txt,{y:txt.y-200,alpha:0},1000,Ease.circIn,Handler.create(null, onflowOut,[txt]));
			}
		}
		
		private function onflowOut(tar:*):void
		{
			// TODO Auto Generated method stub
			tar.removeSelf();
		}
		
		//错误处理
		private function onErr(...args):void{
			DataLoading.instance.close();
			var cmd:Number = args[1];
			var errStr:String = args[2];
			XFacade.instance.closeModule(MainMenuView);
			switch(cmd){
				case ServiceConst.B_BUILD:
					gridSp.showGrid(false);
					_tmpBuilding.isSelect = false;
					delBuildingById(_tmpBuilding.data.id);
					this.selectedBuilding = null;
					_tmpBuilding = null; 
					XTip.showTip( GameLanguage.getLangByKey(errStr));
					break;
				case ServiceConst.B_MOVE:
					_selectedBuilding.showPoint = XUtils.clonePoint(_selectedBuilding.realPoint);
					break;
				case ServiceConst.B_LV_UP:
					XTip.showTip( GameLanguage.getLangByKey(errStr));
					break;
				case ServiceConst.B_ONCE:
					XTip.showTip( GameLanguage.getLangByKey(errStr));
					break;
				case ServiceConst.B_EXPAND:
					XTip.showTip( GameLanguage.getLangByKey(errStr));
					break;
				case ServiceConst.B_HARVEST:
					if (_selectedBuilding && _selectedBuilding.harvestIcon)
					{
						_selectedBuilding.data.resource = "2=0";
						_selectedBuilding.showHarvest(false)
						selectedBuilding = null;
					}
					break;
//				case 10100:
//					XAlert.showAlert(errStr)
//					break;
				default:
					//XTip.showTip( GameLanguage.getLangByKey(errStr));
					break;
			}
		}
		
		private function getBuildNotice():void{
			WebSocketNetService.instance.sendData(ServiceConst.getNotice);
		}
		
		protected function showGrid():void
		{
			gridSp.width = m_sprMap.width;
			gridSp.height = m_sprMap.height;
			gridSp.initParam();
			gridSp.showGrid(false);
		}
		
		private function initMap():void{
			showGrid();
			
			_fogContainer.destroyChildren();
			var funFogImages:Array = createFunctionFogArea();
			var resFogImages:Array = createResourceFogArea();
			var totalImages:Array = funFogImages.concat(resFogImages);
			if (totalImages.length) {
				_fogContainer.addChildren.apply(_fogContainer, totalImages);
			}
			
			_lockContainer.destroyChildren();
			var _lock_uis:Array = renderUnlockBtns();
			if (_lock_uis.length) {
				_lockContainer.addChildren.apply(_lockContainer, _lock_uis);
			}
		}
		
		/**功能区     创建迷雾*/
		private function createFunctionFogArea():Array {
			var fogInfos:Array = DBFog.getFunctionNeedLockFogInfos(_vo.fun_fog_id);
			var images:Array = fogInfos.map(function(item:FogInfoVo) {
				var posArr:Array = BuildPosData.getFunFogPos(item.id);
				var skin = "scene/fog/newfog/fun/" + item.id + ".png";
				return createFogImage(skin, posArr);
			})
			
			return images;
		}
		
		/**资源区   创建迷雾*/
		private function createResourceFogArea():void {
			var fogInfos:Array = DBFog.getResourceNeedLockFogInfos(_vo.res_fog_id);
			var images:Array = fogInfos.map(function(item:FogInfoVo) {
				var posArr:Array = BuildPosData.getResFogPos(item.id);
				var skin = "scene/fog/newfog/res/" + item.id + ".png";
				return createFogImage(skin, posArr);
			})
			
			return images;
		}
		
		/**创建单个迷雾遮罩图*/
		private function createFogImage(skin:String, posArr:Array):Image {
			var img = new Image(URL.formatURL(ResourceManager.instance.setResURL(skin)));
			img.pos(posArr[0], posArr[1]);
			return img;
		}
		
		/**渲染扩地锁按钮*/
		private function renderUnlockBtns():Array {
			// 功能区解锁
			var fun_ui:unlockComUI = createUnlockComUI(AREA_TYPE_FUN, DBFog.getFunctionFogInfo(_vo.fun_fog_id + 1));
			// 资源区解锁
			var res_ui:unlockComUI = createUnlockComUI(AREA_TYPE_RES, DBFog.getResourceFogInfo(_vo.res_fog_id + 1));
			
			return [fun_ui, res_ui].filter(function(item){ return !!item});
		}
		
		/**渲染某个解锁按钮*/
		private function createUnlockComUI(lockType:String, nextInfo:FogInfoVo):unlockComUI {
			if (!nextInfo) return null;
			
			var lockui:unlockComUI = new unlockComUI();
			lockui.anchorX = lockui.anchorY = 0.5;
			lockui.on(Event.CLICK, this, unLockFogHandler, [lockType, nextInfo]);
			var pos:Point = HomeData.intance.gridPosTransformToPixelPos(nextInfo.btn_pos.x, nextInfo.btn_pos.y);
			lockui.pos(pos.x , pos.y);
			//开地等级限制
			if(nextInfo.level > Number(User.getInstance().level)){
				lockui.bgLocked.visible = true;
				lockui.bgUnlock.visible = false;
				lockui.icon.visible = false;
				lockui.priceTF.text = lockui.unlockLabel.text = "";
				lockui.lockLabel.text = XUtils.getDesBy("L_A_53", nextInfo.level);
				lockui.lockLabel.y = (94 - lockui.lockLabel.height)/2//94 is ui height
				lockui.mouseEnabled = false;
			}else{
				lockui.bgLocked.visible = false;
				lockui.bgUnlock.visible = true;
				lockui.icon.visible = true;
				ItemUtil.formatIcon(lockui.icon, nextInfo.price.join("="));
				lockui.unlockLabel.text = GameLanguage.getLangByKey("L_A_52");
				lockui.priceTF.text = nextInfo.price[1];
				lockui.lockLabel.text = "";
				lockui.mouseEnabled = true;
			}
			
			return lockui;
		}
		
		/**解锁迷雾*/
		private function unLockFogHandler(type:String, fogInfo:FogInfoVo):void{
			var handler:Handler = Handler.create(WebSocketNetService.instance, 
				WebSocketNetService.instance.sendData,[ServiceConst.B_EXPAND, [fogInfo.id, type]]);
				
			var str:String = GameLanguage.getLangByKey("L_A_23");
			str = str.replace(/{(\d+)}/, fogInfo.price[1]);
			var data:ItemData = new ItemData();
			data.iid = parseInt(fogInfo.price[0]);
			data.inum = parseInt(fogInfo.price[1]);
			
			var consumeHander:Handler = Handler.create(ConsumeHelp, ConsumeHelp.Consume, [[data], handler]);
			
			if (data.iid == DBItem.WATER)
			{
				if (data.inum > User.getInstance().water)
				{
					XTip.showTip(GameLanguage.getLangByKey("L_A_59005"));
				}
				else
				{
					XAlert.showAlert(str, handler);
				}
				return;
			}
			
			XAlert.showAlert(str, consumeHander);
			
			return trace(type, fogInfo.id);
		}
		
		//初始化建筑
		private function initBuilding():void{
			//实例回收
			this._tempList = this._buildItemList;
			var bitem:BaseArticle
			for(var i:String in _buildItemList){
				bitem = _buildItemList[i]
				bitem.removeSelf()
				bitem.showHarvest(false);
				bitem.off(Event.CLICK, this, this.onItemClick);
				bitem.off(Event.MOUSE_DOWN, this, this.onItemMD);
			}
			this._buildItemList.length = 0;
			//初始化
			var info:Object;
			for(i in this._vo.building){
				info = _vo.building[i];
				bitem = this.createBuilding(info["id"],info["level"],i, info);
				this._buildItemList.push(bitem);
				setBuildPos(bitem, new Point(Number(info["xpos"]), Number(info["ypos"])));
				bitem.doScale(m_sprMap.scaleX);
			}
			SortingFun();
			
		}
		/**
		 *根据建筑队列里的队列id，秒掉建筑 队列里的一个建筑
		 * queueId实际是队列的索引
		 */
		private function onceBuilding(queueId:int):void
		{
			var oneQueue:Array = _vo.queue[queueId];
			var bitem:BaseArticle = getBuilding(oneQueue[0]);
			bitem.updateTime(1,true);
		}
		//初始化建筑队列
		private function updateBuildingTime():void{
//			for(var i:int=0; i<_upBuilds.length; i++){
//				_upBuilds[i].updateTime(1,true);
//			}
//			_upBuilds = [];
			for(var i:int=0; i<this._vo.queue.length; i++){
				var bitem:BaseArticle = getBuilding(this._vo.queue[i][0]);
				if(bitem){
					bitem.updateTime(this._vo.queue[i][1]);
//					this._upBuilds.push(bitem);
				}
			}
			TrainInfoCom.update();
		}

		
		//获取建筑
		private function getBuilding(bid:String):BaseArticle{
			if(!bid){
				return null;
			}
			var bitem:BaseArticle
			for(var i:String in _buildItemList){
				bitem = _buildItemList[i]
				if(bitem.data.id == bid){
					return bitem;
				}
			}
			return null
		}
		
		//根据信息生成建筑数据
		public function createBuilding(id:Number, lv:Number, bid:String = "-1", infoArr:Object=null):BaseArticle{
			var bitem:BaseArticle = getBuild(bid);//
//			trace("bitem:"+bitem);
			var bdData:ArticleData;
			if(!bitem){
				bitem = new BaseArticle();
				bdData = new ArticleData();
				var bdVo:BuildingLevelVo = DBBuildingUpgrade.getBuildingLv(id,lv);
				//TraceUtils.log("createBuildingxxxxxxxx",bdVo, id, lv)
				bdData.buildId = "B"+id;
				bdData.level = lv;
				bdData.id = bid;
				bdData.model_w = bdVo.model_w;
				bdData.model_h = bdVo.model_h;
			}else{
				bdData = bitem.data;
			}
			
			if (infoArr) {
				bdData.buff = infoArr["monster_effect"];
				bdData.effMonsters = infoArr["monster_list"];
				bdData.resource = infoArr["resource"];
			}
			bitem.update(bdData);
			return bitem;
		}
		
		protected var _buildItemList:Array = [];
		private var _tempList:Array;
		public function setBuildPos(bitem:BaseArticle,p:Point=null):void{
			if(!p){
				p = HomeData.intance.getNewBuildingPoint(bitem.data);
			}
			if(p)
			{
				bitem.showPoint =  p;
				bitem.realPoint = XUtils.clonePoint(p);
				if(bitem != _tmpBuilding){
					HomeData.intance.modifyData(bitem,1);
				}
				bitem.on(Event.CLICK, this, this.onItemClick);
				bitem.on(Event.MOUSE_DOWN, this, this.onItemMD);
			}else
			{
				TraceUtils.log("没有可以建造的位置");
			}
		}
		
		/**
		 * 聚焦-
		 * @param bitem 建筑实例,如果为空，则选择一个小怪。
		 * 新增第二个参数，老胡之前是根据表里的id锁定建筑，先增加根据后端id锁定建筑，因为有可能2个相同建筑在建造
		 * */
		public function focus(bitem:*=null,id:String=""):Sprite{
			if(!bitem){
				for(var i:int=0; i<this._buildItemList.length; i++){
					if(BaseArticle(this._buildItemList[i]).data.type == ArticleData.TYPE_MONSTER){
						bitem = this._buildItemList[i];
						break;
					}
				}
			}
			//如果传入一个建筑ID
			if(bitem is String){
//				TraceUtils.log("1111")
				var bid:String = (bitem+"");
				if(bid.indexOf("B") == -1){
					bid = "B"+bid;
				}
				bitem = null;
				for(i=0; i<this._buildItemList.length; i++){
					if(id!="")//
					{
						if(BaseArticle(this._buildItemList[i]).data.buildId == bid){
							
								for(var j:int=0;j<_vo.queue.length;j++)
								{
									var id1:String = _vo.queue[j][0];
									if(BaseArticle(this._buildItemList[i]).data.id == id)
									{
										bitem = this._buildItemList[i];
										break;
									}
								}
						}
					}else
					{
						if(BaseArticle(this._buildItemList[i]).data.buildId == bid){
							bitem = this._buildItemList[i];
							break;
						}
					}
					
				}
			}
			if(!bitem){
				return null;
			}
//			TraceUtils.log("bitem:"+bitem);
//			TraceUtils.log("bitem坐标:"+bitem.x+","+bitem.y);
			this.showDragRegion();
			var targetX:Number = (m_sprMap.width/2-bitem.x)*m_sprMap.scaleX+LayerManager.instence.stageWidth/2;
			var targetY:Number = (m_sprMap.height/2-bitem.y)*m_sprMap.scaleY+LayerManager.instence.stageHeight/2;
			if(targetX < dragRegion.x){
				targetX = dragRegion.x;
			}else if(targetX > dragRegion.x+dragRegion.width){
				targetX = dragRegion.x+dragRegion.width
			}
			if(targetY<dragRegion.y){
				targetY = dragRegion.y;
			}else if(targetY > dragRegion.y+dragRegion.height){
				targetY = dragRegion.y+dragRegion.height
			}
//			TraceUtils.log("聚焦的坐标:"+targetX+","+targetY);
			Tween.to(m_sprMap,{x:targetX,y:targetY,ease:Ease.linearOut},200, null, Handler.create(this,showObject));
			return bitem;
		}
		
		/**查找已经生成的建筑*/
		private function getBuild(bid:String):BaseArticle{
			if(this._tmpBuilding && bid != "-1"){//-1表示临时的建筑
//				TraceUtils.log("why???");
				var bitem:BaseArticle 
				for(var i:Number=0; i<this._tempList.length; i++){
					bitem = _tempList[i]
					if(bitem && bitem.data.id == bid){
						return bitem;
					}
				}
			}	
			return null;
		}
		
		/**查看建筑是否开放*/
		public function isOpenBuild(bid):Boolean{
			var id:String = bid.replace("B","");
			var db = ResourceManager.instance.getResByURL("config/building_upgrade.json");
			var lv = User.getInstance().level;
			var baseLv = User.getInstance().sceneInfo.getBuildingLv(DBBuilding.B_BASE);
			if(db)
			{
				var vo:*;
				var c:*; 
				for each (c in db) 
				{
					if(c.building_id == id&&c.level == 1){
						if(Number(c.HQ_level)<=baseLv && Number(c.character_level<=lv)){
							return true;
						}
						
						else{
							return false;
						}
					}
				}
			}
			return false;
		}
		
		/**需要弱引导的建筑列表*/
		public var arrHasGotGuide=[];
		/**查看建筑是否在弱引导提示中*/
		public function isOnGuildBuild(bid):Boolean{
			var id:String = bid.replace("B","");
			if(isOpenBuild(id)){
				for(var i =0;i<arrHasGotGuide.length;i++){
					if(id == arrHasGotGuide[i]){
						return false;
					}
				}
				return true;
			}
			else{
				return false;
			}
		}
		
		/**刷新弱引导的建筑状态*/
		public function refGuildBuildType():void{
			var arr_guideBuilds = getAllBuildNeedGuide();
			//所有需要弱引导的建筑物加上小箭头
			for(var i:int=0; i<arr_guideBuilds.length; i++){
				var buildData:BaseArticle = getBuildByBid(arr_guideBuilds[i]);
				if (!buildData) continue; 
				//建筑物是否开放
				if(isOpenBuild(buildData.data.buildId)){
					//建筑物是否需要弱引导
					if(isOnGuildBuild(buildData.data.buildId)){
						buildData.showAction(true, "mainUi/arrow.png");
					}
					else{
						buildData.removeGuideImg();
					}
				}
			}
		}
		
		/**所有引导的建筑列表*/
		public function getAllBuildNeedGuide():Array{
			var arr=[];
			var vo:*;
			var c:*;
			var fovo:Object=ResourceManager.instance.getResByURL("config/functionGuide/function_open.json");
			if (fovo)
			{
				for each (c in fovo)
				{
					if(c.type == 1 && c.extra_t == 1 && c.value2 == 1 && c.g_id){
						arr.push(c.value1);
					}
				}
			}
			return arr;
		}
		
		/**获取建筑物的功能引导ID*/
		public function getBuildGuideId(bid):String{
			var id:String = bid.replace("B","");
			var arr=[];
			var vo:*;
			var c:*;
			var fovo:Object=ResourceManager.instance.getResByURL("config/functionGuide/function_open.json");
			if (fovo)
			{
				for each (c in fovo)
				{
					if(c.type == 1 && c.extra_t == 1 && c.value2 == 1 && c.value1 ==id){
						return c.g_id;
					}
				}
			}
			return "";
		}
		
		
		/**获取需要弱引导提示的所有建筑列表*/
		public function allNeedGuideBuild(id):Array{
			var arr=[];
			var db = ResourceManager.instance.getResByURL("config/building_list.json");
			var vo:*;
			var c:*; 
			for each (c in db) 
			{
				if(isOpenBuild(c.building_id)){
					arr.push(c.building_id);
				}
			}
			return arr;
		}
		
		/**根据道具ID获取*/
		private function getBuildByBid(id:*):BaseArticle{
			if(this._buildItemList){//-1表示临时的建筑
				var bitem:BaseArticle 
				for(var i:Number=0; i<this._buildItemList.length; i++){
					bitem = _buildItemList[i];
					var bid:String = bitem.data.buildId.replace("B","");
					if(bitem && bid == id){
						return bitem;
					}
				}
			}
			return null;
		}
		
		/**
		 * 删除建筑
		 * @param id 建筑的私有ID
		 * */
		private function delBuildingById(id:String):void{
			var bitem:BaseArticle
			for(var i:Number=0; i<this._buildItemList.length; i++){
				bitem = this._buildItemList[i];
				if(bitem.data.id == id){
					if(bitem.data.type == ArticleData.TYPE_MONSTER){
						HomeData.intance.addMonsterBlock(bitem.showPoint.x,bitem.showPoint.y, parseInt(bitem.data.buildId),-1);
					}else{
						if(bitem.data.id != "-1"){
							HomeData.intance.modifyData(bitem,-1);
						}
					}
					this._buildItemList.splice(i,1);
					bitem.removeSelf();
					bitem.showHarvest(false);
					bitem.off(Event.CLICK, this, this.onItemClick);
					bitem.off(Event.MOUSE_DOWN, this, this.onItemMD);
					break;
				}
			}
			gridSp.showGrid(false);
		}
		
		//记录选中建筑是否交换到最顶层
		private var _exchanged:Boolean = false;
		private function onBuildingMove(e:Event = null):void
		{
			if(_selectedBuilding.data.type == ArticleData.TYPE_MONSTER){
				return;
			}
			//gridSp.visible = true;
			gridSp.showGrid(true);
			if(!_exchanged){
				_exchanged = true;
				SortingFun();
				_selectedBuilding.parent.addChild(_selectedBuilding);
				this.showEffArea();
				//删除原来的数据
				if(_selectedBuilding != _tmpBuilding){
					HomeData.intance.modifyData(selectedBuilding,-1);
				}
				XFacade.instance.getView(MainMenuView).visible = false;
				_selectedBuilding.moving = true;
			}
			
			var p:Point = new Point(e.stageX,e.stageY);
			p = m_sprMap.globalToLocal(p);
			
			var showPoint:Point = HomeData.intance.getTilePoint(HomeData.tileW, HomeData.tileH, p.x, p.y, HomeData.OffsetX, HomeData.OffsetY);
//			trace('get', showPoint.toString());
			showPoint.x += Math.floor(_selectedBuilding.data.model_w / 2);
			showPoint.y += Math.floor(_selectedBuilding.data.model_h / 2);
			
			selectedBuilding.showPoint = showPoint;
			
			if(!_tmpBuilding){
				var tmp:BaseArticle = HomeData.intance.getExchangeBuild(selectedBuilding,this._buildItemList);
				var originP:Point
				if(tmp){
					if(tmp != _exBuild){
						if(_exBuild && !HomeData.intance.checkCross(selectedBuilding, _exBuild)){
							originP = new Point(_exBuild.x,_exBuild.y);
							HomeData.intance.modifyData(_exBuild,-1);
							_exBuild.showPoint = XUtils.clonePoint(_exBuild.realPoint);
							//加入交换建筑的站位信息
							HomeData.intance.modifyData(_exBuild,1);
							AnimationUtil.showChangeAni(_exBuild,originP);
						}
						this._exBuild = tmp;
						//扔掉交换建筑的站位信息
						HomeData.intance.modifyData(_exBuild,-1);
						//修改位置
						originP = new Point(_exBuild.x,_exBuild.y);
						this._exBuild.showPoint = XUtils.clonePoint(this._selectedBuilding.realPoint);
						//交换建筑新的站位
						HomeData.intance.modifyData(_exBuild,1);
						AnimationUtil.showChangeAni(_exBuild,originP);
					}
				}else{
					if(_exBuild && !HomeData.intance.checkCross(selectedBuilding, _exBuild)){
						originP = new Point(_exBuild.x,_exBuild.y);
						//扔掉站位数据
						HomeData.intance.modifyData(_exBuild,-1);
						_exBuild.showPoint = XUtils.clonePoint(_exBuild.realPoint);
						//加入交换建筑的站位信息
						HomeData.intance.modifyData(_exBuild,1);
						AnimationUtil.showChangeAni(_exBuild,originP);
						_exBuild = null;
					}
				}
			}
			
			//判定是否可以移动到该位置===>
			var b = HomeData.intance.isOk(selectedBuilding.data, selectedBuilding.data.showPoint);
			selectedBuilding.showBgLayer(b);
			
			//预览状态，判定是否能建筑
			if(this._tmpBuilding){
				Signal.intance.event(BuildEvent.BUILD_RESULT, b);
			}
		}
		
		//说明操作被其他菜单拦截了，需要容错处理
		private function onStageUp(e:Event):void{
			onBuildingUp(e);
		}
		
		public function onBuildingUp(e:Event = null):void
		{
			Laya.stage.off(Event.MOUSE_UP,this,onStageUp);
			m_sprMap.off(Event.MOUSE_UP,this,onBuildingUp);
			Laya.timer.clear(this, this.onTime);
			Laya.stage.off(Event.MOUSE_MOVE,this,onBuildingMove);
			
			if(!this._tmpBuilding){
				gridSp.showGrid(false);
			}
			//如果没移动过，则不需要处理逻辑
			if(!_exchanged){
				m_sprMap.on(Event.MOUSE_DOWN, this, onStartDrag);
				m_sprMap.on(Event.CLICK, this, this.onStageClick);
				return;
			}
			
			XFacade.instance.getView(MainMenuView).visible = true;
			_exchanged = false;
			_selectedBuilding.moving = false;
			
			var isInMap = HomeData.intance.checkPoint(selectedBuilding.data.showPoint.x,selectedBuilding.data.showPoint.y);
			selectedBuilding.data.inMap = isInMap;
//			trace(showPoint)
			
			//无效的显示位置
			var canMove:Boolean
			if(!selectedBuilding.data.inMap){
				canMove = false;
				trace("不在地图内")
			}else{
				canMove = HomeData.intance.isOk(selectedBuilding.data,selectedBuilding.data.showPoint);
			}
			if(canMove && (!XUtils.isEmpty(_selectedBuilding.data.effMonsters) || !XUtils.isEmpty(_selectedBuilding.data.buff))){
				canMove = false;
				trace("怪占领")
			}
			
			// 全部有效
//			canMove = true;
			
			//如果交换建筑，需要立即执行交换位置操作
			//A建筑id  A的x坐标  A的y坐标  B建筑id  B的x坐标  B的y坐标
			if(_exBuild){
				if(canMove){
					if(!this._tmpBuilding){
						DataLoading.instance.show();
						WebSocketNetService.instance.sendData(ServiceConst.B_SWAP,
							[
								_selectedBuilding.data.id,_selectedBuilding.data.showPoint.x,_selectedBuilding.data.showPoint.y,
								_exBuild.data.id,_exBuild.data.showPoint.x,_exBuild.data.showPoint.y
							]
						);
					}
				}else{
					if(_selectedBuilding != _tmpBuilding){
						//HomeData.intance.modifyData(selectedBuilding,1);
						if(this._selectedBuilding){
							var originP:Point = new Point(_selectedBuilding.x,_selectedBuilding.y);
							this._selectedBuilding.showPoint = XUtils.clonePoint(this._selectedBuilding.realPoint);
							HomeData.intance.modifyData(_selectedBuilding,1);
							AnimationUtil.showChangeAni(_selectedBuilding,originP);
							this.selectedBuilding = null;
							
							if(this._exBuild){
								HomeData.intance.modifyData(_exBuild,-1);
								var originP:Point = new Point(_exBuild.x,_exBuild.y);
								this._exBuild.showPoint = XUtils.clonePoint(this._exBuild.realPoint);
								HomeData.intance.modifyData(_exBuild,1);
								AnimationUtil.showChangeAni(_exBuild,originP);
								this._exBuild = null;
							}
						}
					}
				}
			}else{
				if(!this._tmpBuilding){
					if(!XUtils.isEmpty(_selectedBuilding.data.effMonsters) || !XUtils.isEmpty(_selectedBuilding.data.buff)){
						var handler:Handler = Handler.create(MonsterRiotView,MonsterRiotView.fight,[_selectedBuilding.data.effMonsters[0]])
						
						// 临时去除
						XAlert.showAlert(GameLanguage.getLangByKey("L_A_47003"),handler)
					}
					if(canMove){
						moveBuilding(_selectedBuilding);
					}else{
						_selectedBuilding.showPoint = XUtils.clonePoint(_selectedBuilding.realPoint);
						//压入数据
						HomeData.intance.modifyData(selectedBuilding,1);
						_selectedBuilding.showBgLayer(true);
					}
				}
			}
			
			
			//重新加事件-----------------------
			m_sprMap.on(Event.MOUSE_DOWN, this, onStartDrag);
			m_sprMap.on(Event.CLICK, this, this.onStageClick);
			if(canMove){
				SortingFun();
			}
		}
		
		private var _exBuild:BaseArticle;
		
		private function SortingFun():void
		{
			this._buildItemList.sort(HomeData.intance.sortFun);
			for (var i:int = 0; i < _buildItemList.length; i++) 
			{
				this.buildingLayer.addChild(_buildItemList[i]);
			}
			
		}
		
		private function moveBuilding(b:BaseArticle):void{
			if(b){
				var data:ArticleData = b.data;
				var id:String = data.id;
				if(!XUtils.pointEquil(data.showPoint, data.realPoint)){
					DataLoading.instance.show();
					WebSocketNetService.instance.sendData(ServiceConst.B_MOVE,[id, data.showPoint.x, data.showPoint.y]);
				}else{
					if(_selectedBuilding != _tmpBuilding){
						HomeData.intance.modifyData(selectedBuilding,1);
					}
					this.selectedBuilding = null;
				}
			}
		}
		
		private function onBuildEvent(type:String, data:*):void{
			switch(type){
				case BuildEvent.BUILD_START:
					var cost:Number = 0
					if(_vo.isQueueFull()){//队列满了，秒掉一个时间短建筑
						var minTime:Number = _vo.queue[0][1];//获取队列里建筑的最短时间
						var minArtId:String="-1";
						var minQId:String = 0;
//						TraceUtils.log("minTime0:"+minTime);
//						TraceUtils.log("minTime1"+_vo.queue[1][1]);
						for(var i:Number=1; i<_vo.queue.length; i++)
						{
							if(_vo.queue[i][1]<minTime)
							{
								minTime = _vo.queue[i][1];
								minArtId = _vo.queue[i][0];
								minQId = i;
							}
						}
						TraceUtils.log("最短时间的队列id:"+minQId);
						cost = DBBuildingCD.cost(_vo.getQueueTime(minArtId));
						if(cost > 0){
							
							speedHandler  = Handler.create(this, this.onBuildEvent, [type,data])
							
							var handler:Handler = Handler.create(this, sendAction,[ServiceConst.B_ONCE,[minQId]])
							//XAlert.showAlert("队列已满，是否消费"+Math.ceil(cost)+"立即完成一个队列",handler);
							
							var str:String = GameLanguage.getLangByKey("L_A_59");
							var item:ItemData = new ItemData;
							item.iid = DBItem.WATER;
							item.inum = cost;
							ConsumeHelp.Consume([item],handler,str)
							
							XFacade.instance.closeModule(MainMenuView)
							return;
						}else{//队列未满,不秒
							DataLoading.instance.show();
							WebSocketNetService.instance.sendData(ServiceConst.B_ONCE,[minQId]);
						}
					}
					
					//如果有临时的建筑，则需要清除
					if(_tmpBuilding){
						delBuildingById(_tmpBuilding.data.id);
						_tmpBuilding = null;
					}
					var bitem:BaseArticle = this.createBuilding(data.building_id,1,"-1");
					var p:Point = HomeData.intance.getNewBuildingPoint(bitem.data);
					if(p){
						_tmpBuilding = bitem
						bitem.doScale(m_sprMap.scaleX);
						this.selectedBuilding = bitem;
						gridSp.showGrid(true);
						this.setBuildPos(bitem, p);
						this._buildItemList.push(bitem);
						bitem.showDownAni();
						focus(bitem);
						
						SortingFun();
						XFacade.instance.openModule("MainMenuView", [MainMenuView.MENU_CONFIRM, data]);
					}else{
						XTip.showTip(GameLanguage.getLangByKey("L_A_60"));
						XFacade.instance.closeModule(MainMenuView)
					}
					break;
				case BuildEvent.BUILD_CANCEL:
					SoundMgr.instance.playSound(ResourceManager.getSoundUrl("ui_cancel_click",'uiSound'));
					//逻辑上不需要break!!!
				case BuildEvent.BUILD_ENTER:
					if(_tmpBuilding){
						delBuildingById(_tmpBuilding.data.id)
						_tmpBuilding = null;
						selectedBuilding = null;
					}
					
					break;
				//确定建筑，向服务端发请求
				case BuildEvent.BUILD_DONE:
					var id:String = _tmpBuilding.data.buildId;
					id = id.replace("B","")
					var resList:Array = DBBuildingUpgrade.getUpStr(id,1);
					if(resList.length){
						handler = Handler.create(this, sendAction,[ServiceConst.B_BUILD,[parseInt(id),_tmpBuilding.showPoint.x,_tmpBuilding.showPoint.y,1]])
						//XAlert.showAlert(str,handler);
						ConsumeHelp.Consume(resList,handler);
					}else{
						DataLoading.instance.show();
						WebSocketNetService.instance.sendData(ServiceConst.B_BUILD,[parseInt(id),_tmpBuilding.showPoint.x,_tmpBuilding.showPoint.y]);
					}
					break;
				case BuildEvent.BUILD_SPEED:
					//
					var cost:Number = DBBuildingCD.cost(_vo.getQueueTime(_selectedBuilding.data.id));
					if(cost == 0){
						DataLoading.instance.show();
						WebSocketNetService.instance.sendData(ServiceConst.B_ONCE,[_vo.getQueueId(_selectedBuilding.data.id)]);
					}else {
						
						/**
						 * 如果可以帮助则先发送帮助请求 帮助功能暂时取消
						 */
						/*if (_vo.getCanHelp(_selectedBuilding.data.id))
						{
							WebSocketNetService.instance.sendData(ServiceConst.BUILDING_HELP_ASK_HELP, [_vo.getQueueId(_selectedBuilding.data.id)]);
							_vo.setHelp(_selectedBuilding.data.id);
						}
						else
						{
							XFacade.instance.openModule("SpeedView", _selectedBuilding.data);
						}*/
						XFacade.instance.openModule("SpeedView", _selectedBuilding.data);
						XFacade.instance.closeModule(MainMenuView)
						//改成加速卡
						/*var str:String = GameLanguage.getLangByKey("L_A_49");
						var handler:Handler = Handler.create(this, sendAction,[ServiceConst.B_ONCE,[_vo.getQueueId(_selectedBuilding.data.id)]])
							
						var item:ItemData = new ItemData;
						item.iid = DBItem.WATER;
						item.inum = cost;
						ConsumeHelp.Consume([item],handler,str)*/
					}
					break;
				case BuildEvent.BUILD_RUIN:
					SoundMgr.instance.playSound(ResourceManager.getSoundUrl("ui_cancel_click",'uiSound'));
					handler = Handler.create(this, sendAction,[ServiceConst.B_RUIN,[_vo.getQueueId(_selectedBuilding.data.id)]]);
					XAlert.showAlert(GameLanguage.getLangByKey("L_A_48"), handler);
					break;
			}
		}
		
		private function sendAction(action:int, args:Array):void{
			DataLoading.instance.show();
			WebSocketNetService.instance.sendData(action,args)
		}
		
		/**取消选中建筑*/
		private function onStageClick(event:Event):void{
			if(!this._tmpBuilding){
				if(this._selectedBuilding){
					XFacade.instance.closeModule(MainMenuView)
					this._selectedBuilding.showPoint = XUtils.clonePoint(this._selectedBuilding.realPoint);
					this.selectedBuilding = null;
					if(this._exBuild){
						this._exBuild.showPoint = XUtils.clonePoint(this._exBuild.realPoint);
						this._exBuild = null;
					}
				}
			}
		}
		
		private function onMilitaryChange(state:Number):void{
			DBMilitary.state = 0;
			XFacade.instance.openModule("MilitaryUpView",state);		
		}
		
		private function onUserEvent(e:Event):void{
			initMap();
			/**工会奖励*/
			var b:BaseArticle = getBuildByBid(DBBuilding.B_GUILD)
				
			if(b){
				//是否领取加入公会奖励  0没有加入公会     1可领取      2已领取
				/**该功能暂时不上*/
//				if(User.getInstance().has_add_guild_reward == 0){
//					b.showAction(true, "mainUi/5.png");
//				}else if(User.getInstance().has_add_guild_reward == 1){
//					b.showAction(true, "mainUi/2.png");
//				}else{
//					b.showAction(false);
//				}
				
				//都不显示
				b.showAction(false);
			}
			
			/**基地互动奖励*/
			b = getBuildByBid(DBBuilding.B_PROTECT);
			if(b){
				if(User.getInstance().day_box_reward){
					b.showAction(true, "mainUi/8.png");
				}else{
					b.showAction(false);
				}
			}
			
		}
		
		private function onCampChange(canUp:Boolean):void{
			var build:BaseArticle;
			for(var i:int=0; i<this._buildItemList.length; i++){
				build = _buildItemList[i];
				if(build.data.buildId.replace("B","") == DBBuilding.B_CAMP){
					build.showAction(canUp);
					break;
				}
			}
			//alert(canUp);
		}
		
		
		//多点问题
		private var lastDistance:Number = 0;
		private function onMouseUp(e:Event=null):void{
			Laya.stage.off(Event.MOUSE_MOVE, this, onMouseMove);
			Laya.stage.on(Event.MOUSE_DOWN, this, onMouseDown);
			showObject();
			_imgContainer.cacheAsBitmap = true;
		}
		private function onMouseDown(e:Event=null):void
		{
			var touches:Array = e.touches;
			
			if(touches && touches.length == 2)
			{
				lastDistance = getDistance(touches);
				
				Laya.stage.on(Event.MOUSE_MOVE, this, onMouseMove);
				Laya.stage.off(Event.MOUSE_DOWN, this, onMouseDown);
			}
			_imgContainer.cacheAsBitmap = false;
		}
		//
		private var _lastDel:Number=0;
		private function onMouseMove(e:Event=null):void
		{
			var distance:Number = getDistance(e.touches);
			
			//判断当前距离与上次距离变化，确定是放大还是缩小
			const factor:Number = 0.001;
			var del:Number = (distance - lastDistance) * factor;
			// 特殊处理关于拉伸的问题
			if(_lastDel > 0 && del < -0.2){
				//不进行缩放
			}else{
				doScale(del);
			}
			//
			if(del != 0){
				_lastDel = del;
			}
			lastDistance = distance;
		}
		/**计算两个触摸点之间的距离*/
		private function getDistance(points:Array):Number
		{
			var distance:Number = 0;
			if (points && points.length == 2)
			{
				var dx:Number = points[0].stageX - points[1].stageX;
				var dy:Number = points[0].stageY - points[1].stageY;
				
				distance = Math.sqrt(dx * dx + dy * dy);
			}
			return distance;
		}
		
		
		
		/***/
		private function onScale(e:Event):void{
			var deltaScale:Number = e.delta/30;
			doScale(deltaScale);
		}
		
		private static var MIN_SCALE:Number = 0.4;
		private function doScale(deltaScale:Number):void{
			var scale:Number = m_sprMap.scaleX;
			scale += deltaScale;
			if(scale > 1){
				scale = 1;
			}else if(scale < MIN_SCALE){
				scale = MIN_SCALE;
			}
			
			m_sprMap.scaleX = m_sprMap.scaleY = scale;
			this.showDragRegion();
			m_sprMap.stopDrag();
			if(scale != 1){
				if(m_sprMap.x < dragRegion.x){
					m_sprMap.x = dragRegion.x;
				}else if(m_sprMap.x > dragRegion.x+dragRegion.width){
					m_sprMap.x = dragRegion.x+dragRegion.width
				}
				if(m_sprMap.y<dragRegion.y){
					m_sprMap.y = dragRegion.y;
				}else if(m_sprMap.y > dragRegion.y+dragRegion.height){
					m_sprMap.y = dragRegion.y+dragRegion.height
				}
			}
			showObject();
			for(var i:int=0; i<_buildItemList.length; i++){
				_buildItemList[i].doScale(scale)
			}
		}
		
		//重写鼠标行为
		private function onItemMD(event:Event):void{
			m_sprMap.on(Event.MOUSE_UP,this,onBuildingUp);
			Laya.stage.on(Event.MOUSE_UP,this,onStageUp);
			var buid:BaseArticle = BaseArticle(event.currentTarget)
			if(this._selectedBuilding == buid){
				this.recoverMapBehavior();
			}else{
				if(!this._tmpBuilding){
					if(this._selectedBuilding){
						this._selectedBuilding.showPoint = XUtils.clonePoint(this._selectedBuilding.realPoint);
					}
					if(buid.data.type == ArticleData.TYPE_BUILDING && !buid.canHarvest){
						Laya.timer.once(600, this, this.onTime,[event.currentTarget]);
					}
				}
			}
		}
		
		private function recoverMapBehavior():void{
			//阻止地图移动
			m_sprMap.off(Event.MOUSE_DOWN, this, onStartDrag);
			m_sprMap.off(Event.CLICK, this, this.onStageClick);
			Laya.stage.on(Event.MOUSE_MOVE,this,onBuildingMove);
		}
		
		private function onItemClick(event:Event):void{
			if(_selectedBuilding != event.target){
				var b:BaseArticle = event.currentTarget as BaseArticle;
				var data:ArticleData = (event.currentTarget as BaseArticle).data;
				if(data.type == ArticleData.TYPE_BUILDING){
					var url:String = BuildPosData.getBuildSnd(data.buildId);
					if(url){
						var mp3Url = ResourceManager.getSoundUrl(url,'uiSound');
						SoundMgr.instance.playSound(mp3Url);
					}
					if(data.buildId == "B"+DBBuilding.B_GUILD){
						if(b.harvestIcon && XUtils.checkHit(b.harvestIcon)){
							if(User.getInstance().has_add_guild_reward != 2){
								XFacade.instance.openModule(ModuleName.GuildJoinView, User.getInstance().has_add_guild_reward);
								return;
							}
						}
					}else if(data.buildId == "B"+DBBuilding.B_PROTECT){
						if(b.harvestIcon && XUtils.checkHit(b.harvestIcon)){
							MilitaryView.getDailyReward();
							return;
						}
					}
				}else if(data.type == ArticleData.TYPE_MONSTER){
					var minfo:Object = DBMonsterStage.getMonsterInfo(data.buildId);
					url = (minfo && minfo.sound);
					if(url){
						var mp3Url = ResourceManager.getSoundUrl(url.replace(".ogg",""),'uiSound');
						SoundMgr.instance.playSound(mp3Url);
					}
				}
			}			
			
			if(!this._tmpBuilding){
				showMenu(event.currentTarget as BaseArticle);
			}		
			event.stopPropagation();
		}
		
		/**对外接口-显示建筑操作菜单*/
		public function showMenu(building:*):void{
			this.selectedBuilding = building;
			var data:ArticleData = this.selectedBuilding.data;
			if (data.type == ArticleData.TYPE_MONSTER) {
				
				XFacade.instance.openModule("MainMenuView", [MainMenuView.MENU_MONSTER, data]);
				
			}else if(data.type == ArticleData.TYPE_BUILDING){
				if(this.selectedBuilding.isShowMine){
					this.selectedBuilding.isShowMine = 0;
					this.selectedBuilding.showAction(false);
					WebSocketNetService.instance.sendData(ServiceConst.delNotice,[DBBuilding.B_MINE]);
				}else if(this.selectedBuilding.isShowHD){
					this.selectedBuilding.isShowHD = 0;
					this.selectedBuilding.showAction(false);
					WebSocketNetService.instance.sendData(ServiceConst.delNotice,[DBBuilding.B_PROTECT]);
					XFacade.instance.openModule("MilitaryView", true);
					return;
				}else if(this.selectedBuilding.isShowTransport){
					this.selectedBuilding.showAction(false);
					WebSocketNetService.instance.sendData(ServiceConst.delNotice,[DBBuilding.B_TRANSPORT]);
					if(this.selectedBuilding.isShowTransport == 1){
						XFacade.instance.openModule(ModuleName.TrainLoadingView,3);
					}else{
						XFacade.instance.openModule(ModuleName.TrainLoadingView);
					}
					this.selectedBuilding.isShowTransport = 0;
				}else if(this.selectedBuilding.data.buildId.replace("B","") == DBBuilding.B_CAMP && _selectedBuilding.harvestIcon &&
						XUtils.checkHit(_selectedBuilding.harvestIcon) && !User.getInstance().isInGuilding){
					XFacade.instance.openModule("CampView", true);
					return;
				}
				if(this.selectedBuilding.canHarvest){
					if(XUtils.checkHit(this.selectedBuilding.harvestIcon)){
						var bData:ArticleData = this.selectedBuilding.data;
						var bid:String = bData.id;//后端建筑id
						var vo:SceneVo = User.getInstance().sceneInfo;
						var building:Boolean = false;
						for(var i:int=0;i<vo.queue.length;i++)
						{
							if(vo.queue[i].length>0)
							{
								var id:String = vo.queue[i][0];
								//TraceUtils.log("后端建筑id:"+id);
								if(id == bid)
								{
									building = true;
								}
							}
						}
						
						if(building||this.selectedBuilding.isFull){
							TraceUtils.log("仓库已满或者正在建造不能收获");
							BuildAniUtil.flashHarvest(this.selectedBuilding.harvestIcon);
							
						}else{
							SoundMgr.instance.playSound(ResourceManager.getSoundUrl("ui_collect_resource",'uiSound'));
							DataLoading.instance.show();
							WebSocketNetService.instance.sendData(ServiceConst.B_HARVEST,[_selectedBuilding.data.id]);
						}					
						XFacade.instance.closeModule(MainMenuView);
					}else{
						if(this.selectedBuilding.isUping){
							XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_SPEED, data])
						}else{
							XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_LVUP, data])
						}
					}
				}else{
					if(this.selectedBuilding.isUping){
						XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_SPEED, data])
					}else{
						XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_LVUP, data])
					}
				}
			}
		}
		
		
		private function onTime(item:*):void{
			this.selectedBuilding = item;
			m_sprMap.stopDrag();
			recoverMapBehavior();
			if(this.selectedBuilding.isUping){
				XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_SPEED, this.selectedBuilding.data])
			}else{
				XFacade.instance.openModule("MainMenuView",[MainMenuView.MENU_LVUP, this.selectedBuilding.data])
			}
		}
		
		private function showEffArea():void{
			for(var i:uint=0; i<_buildItemList.length; i++){
				if(_buildItemList[i].data.type == ArticleData.TYPE_MONSTER){
					_buildItemList[i].showEffArea();
				}
			}
		}
		
		//选中建筑
		private function set selectedBuilding(b:BaseArticle):void{
			if(this._selectedBuilding != b){
				if(this._selectedBuilding){
					this._selectedBuilding.isSelect = false;
					SortingFun();
				}
				this._selectedBuilding = b;
				
				if (this._selectedBuilding) {
					trace('建筑类型', this._selectedBuilding.data.building_type);
				}
				
				if(this._selectedBuilding){
					this._selectedBuilding.isSelect = true;
				}
			}
		}
		
		//选中建筑
		public function get selectedBuilding():BaseArticle{
			return this._selectedBuilding;
		}
		
		
		override public function initScence():void
		{
			window.home = this;
			
			Laya.stage.bgColor="#6B7C8C";
			this._loadSceneResCom=false;
			this.m_SceneResource="HomeScene";
			super.initScence();
			
			gridSp = new GridSprite();
			gridSp.zOrder = 1;
			this.m_sprMap.addChild(gridSp);
			
			buildingLayer = new Sprite();
			buildingLayer.zOrder = 3; 
			this.m_sprMap.addChild(buildingLayer);
			
			if(GameSetting.IsRelease){
				MIN_SCALE = 0.4;
				doScale(-0.6);
			}else{
				doScale(-0.5);
			}
			//不需要移除的事件
//			testPos();//测试建筑坐标位置
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.PUSH_INVADE),this,onResult,[ServiceConst.PUSH_INVADE]);
		}
		
		override protected function onLoaded():void{
			addEvent();
		}
		
		override public function onStartDrag(e:Event=null):void{
			//鼠标按下开始拖拽(设置了拖动区域和超界弹回的滑动效果)
			if(isDrag)
			{
				showDragRegion();
				m_sprMap.startDrag(dragRegion,true, 0, 300,null, true);
			}
			showObject();
			var v1:Number = m_sprMap.x-m_sprMap.width*m_sprMap.scaleX/2;
			var v2:Number = m_sprMap.y-m_sprMap.height*m_sprMap.scaleY/2;
			//TraceUtils.log(v1+","+v2);
		}
		
		
		override public function onDragStart(e:Event=null):void{
			super.onStartDrag(e);
			Laya.timer.clear(this, this.onTime);
			showObject();
		}
		
		private function showObject():void{
			var p:Point;
			for(var i:int=0; i<_buildItemList.length; i++){
				p = new Point(_buildItemList[i].x, _buildItemList[i].y);
				p = m_sprMap.localToGlobal(p);
				if(p.x < -50 || p.y < -50 || p.x > Laya.stage.width+50 || p.y >Laya.stage.height+50){
					if(_selectedBuilding == _buildItemList[i]){
						_buildItemList[i].visible = true;
					}else{
						_buildItemList[i].visible = false;
					}
				}else{
					_buildItemList[i].visible = true;
				}
			}
			//判定地图是否在显示框中..
			for(i=0; i<_imgs.length; i++){
				p = new Point(_imgs[i].x, _imgs[i].y);
				p = m_sprMap.localToGlobal(p);
				if(p.x < -CellW-120 || p.y < -CellH-120 || p.x > Laya.stage.width+60 || p.y >Laya.stage.height+60){
					_imgs[i].visible = false;
					Loader.clearRes(_imgs[i].name);
					_imgs[i].skin = "";
				}else{
					_imgs[i].visible = true;
					_imgs[i].skin = _imgs[i].name;
				}
			}
		}
		 
		override public function close():void{
			super.close();
			this._vo = null;

			if(_tmpBuilding){
				delBuildingById(_tmpBuilding.data.id)
				_tmpBuilding = null;
			}
			
			this.selectedBuilding = null;
			var item:BaseArticle;
			for(var i:int=0; i<_buildItemList.length; i++){
				item = _buildItemList[i];
				if(item.data.type == ArticleData.TYPE_BUILDING){
					item.releaseSkin();
				}
			}
			_fogContainer.destroy();
			_fogContainer = null;
			_lockContainer.destroy();
			_lockContainer = null;
			
			BuildAniUtil.dispose();
			HomeSceneUtil.clearHarvest();
			doClearTimerHandler();
			XFacade.instance.closeModule(MainView);
		}
		
		override public function onStageResize():void
		{
			if(!_scrollRect.width != LayerManager.instence.stageWidth || _scrollRect.height != LayerManager.instence.stageHeight){
				this.scrollRect = new Rectangle(0,0, LayerManager.instence.stageWidth, LayerManager.instence.stageHeight);
			}
		}
		
		override public function init():void{
			//just do nothing.
		}
		
		override public function addEvent():void{
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.GET_ACT_LIST), this, onResult);
			WebSocketNetService.instance.sendData(ServiceConst.GET_ACT_LIST);//活动id 
			
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.MINE_INIT), this, onResult, [ServiceConst.MINE_INIT]);
//			WebSocketNetService.instance.sendData(ServiceConst.MINE_INIT, []);
			
			Signal.intance.on(BuildEvent.BUILD_DONE, this, this.onBuildEvent,[BuildEvent.BUILD_DONE])
			Signal.intance.on(BuildEvent.BUILD_START, this, this.onBuildEvent,[BuildEvent.BUILD_START])
			Signal.intance.on(BuildEvent.BUILD_CANCEL, this, this.onBuildEvent,[BuildEvent.BUILD_CANCEL])
			Signal.intance.on(BuildEvent.BUILD_SPEED, this, this.onBuildEvent,[BuildEvent.BUILD_SPEED])
			Signal.intance.on(BuildEvent.BUILD_RUIN, this, this.onBuildEvent,[BuildEvent.BUILD_RUIN])
			Signal.intance.on(BuildEvent.BUILD_ENTER, this, this.onBuildEvent,[BuildEvent.BUILD_ENTER]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.ERROR),this,onErr);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_INFO),this,onResult,[ServiceConst.B_INFO]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_MOVE),this,onResult,[ServiceConst.B_MOVE]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_BUILD),this,onResult,[ServiceConst.B_BUILD]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_SWAP),this,onResult,[ServiceConst.B_SWAP]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_LV_UP),this,onResult,[ServiceConst.B_LV_UP]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_ONCE),this,onResult,[ServiceConst.B_ONCE]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_RUIN),this,onResult,[ServiceConst.B_RUIN]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_EXPAND),this,onResult,[ServiceConst.B_EXPAND]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.M_INFO),this,onResult,[ServiceConst.M_INFO]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_HARVEST),this,onResult,[ServiceConst.B_HARVEST]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.B_TIMEOVER),this,onResult,[ServiceConst.B_TIMEOVER]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.getNotice),this,onResult,[ServiceConst.getNotice]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.delNotice),this,onResult,[ServiceConst.delNotice]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.Build_Item_CD),this,onResult,[ServiceConst.Build_Item_CD]);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.BUILDING_HELP_UPDATE), this, onResult, [ServiceConst.BUILDING_HELP_UPDATE])
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.JOIN_GUILD_OK), this, onResult, [ServiceConst.JOIN_GUILD_OK]);
			
			m_sprMap.on(Event.CLICK, this, this.onStageClick);
			this.on(Event.MOUSE_WHEEL, this, this.onScale);
			Signal.intance.on(DBMilitary.MILITARY_CHANGE, this, this.onMilitaryChange);
			Signal.intance.on(User.PRO_CHANGED, this, onUserEvent);
			Signal.intance.on(DBUnit.CHANGE, this, this.onCampChange);
			Signal.intance.on(DBUnit.CHANGE1, this, this.onRadioChange);
			Signal.intance.on(HomeData.MAIN_BTNJUNTUAN, this, this.openArmyGroupMapView);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.BOSS_OPEN_VIEW), this, onResult, [ServiceConst.BOSS_OPEN_VIEW]);
			
			Laya.stage.on(Event.MOUSE_UP, this, onMouseUp);
			Laya.stage.on(Event.MOUSE_OUT, this, onMouseUp);
			Laya.stage.on(Event.MOUSE_DOWN, this, onMouseDown);
			addDragEvent();
		}
		
		private function onRadioChange(canUp:Boolean):void
		{
			// TODO Auto Generated method stub
			build = getBuildByBid(DBBuilding.B_RADIO);
			if(!build)
			{
				TraceUtils.log("雷达建筑不存在");
				return;
			}
			var build:BaseArticle;
			for(var i:int=0; i<this._buildItemList.length; i++){
				build = _buildItemList[i];
				if(build.data.buildId.replace("B","") == DBBuilding.B_RADIO){
					build.showAction(canUp);
					break;
				}
			}

		}		
		
		public override function removeEvent():void
		{
			DataLoading.instance.close();
			super.removeEvent();
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.MINE_INIT), this, onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.GET_ACT_LIST), this, onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.DISCOUNT_VIEW), this, onResult);
			Signal.intance.off(BuildEvent.BUILD_DONE, this, this.onBuildEvent)
			Signal.intance.off(BuildEvent.BUILD_START, this, this.onBuildEvent)
			Signal.intance.off(BuildEvent.BUILD_CANCEL, this, this.onBuildEvent)
			Signal.intance.off(BuildEvent.BUILD_SPEED, this, this.onBuildEvent)
			Signal.intance.off(BuildEvent.BUILD_RUIN, this, this.onBuildEvent)
			Signal.intance.off(BuildEvent.BUILD_ENTER, this, this.onBuildEvent);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.ERROR),this,onErr);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_INFO),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_MOVE),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_BUILD),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_SWAP),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_LV_UP),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_ONCE),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_RUIN),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.M_INFO),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_HARVEST),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.B_TIMEOVER),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.getNotice),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.delNotice),this,onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.Build_Item_CD), this, onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.BUILDING_HELP_UPDATE), this, onResult);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.JOIN_GUILD_OK), this, onResult);
			
			
			
			m_sprMap.off(Event.CLICK, this, this.onStageClick);
			this.off(Event.MOUSE_WHEEL, this, this.onScale);
			Signal.intance.off(DBMilitary.MILITARY_CHANGE, this, this.onMilitaryChange);
			Signal.intance.off(User.PRO_CHANGED, this, onUserEvent);
			Signal.intance.off(DBUnit.CHANGE, this, this.onCampChange);
			
			Signal.intance.off(HomeData.MAIN_BTNJUNTUAN, this, this.openArmyGroupMapView);
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.BOSS_OPEN_VIEW), this, onResult);
			
			Laya.stage.off(Event.MOUSE_UP, this, onMouseUp);
			Laya.stage.off(Event.MOUSE_OUT, this, onMouseUp);
			Laya.stage.off(Event.MOUSE_DOWN, this, onMouseDown);
			doClearTimerHandler();
		}
	}
}


