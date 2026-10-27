.class public Lcom/xiaopeng/xuiservice/IXUIServiceImpl;
.super Lcom/xiaopeng/xuimanager/IXUIService$Stub;
.source "IXUIServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;,
        Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IXUIServiceImpl"

.field private static sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "IXUIServiceImpl.class"
    .end annotation
.end field


# instance fields
.field private mClientObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceName2PermissionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceName2ServiceMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/XUIServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/XUIServiceBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicesDependencies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/xuiservice/XUIServiceBase;",
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuiservice/XUIServiceBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    .line 135
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;-><init>()V

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mListenerMap:Ljava/util/Map;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mClientObserverList:Ljava/util/List;

    .line 119
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServiceName2ServiceMap:Landroid/util/ArrayMap;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServices:Ljava/util/ArrayList;

    .line 126
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServiceName2PermissionMap:Landroid/util/ArrayMap;

    .line 133
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServicesDependencies:Landroid/util/ArrayMap;

    .line 136
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 137
    .local v1, "serviceContext":Landroid/content/Context;
    iput-object v1, v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mContext:Landroid/content/Context;

    .line 139
    new-instance v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    invoke-direct {v2, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;-><init>(Landroid/content/Context;)V

    .line 140
    .local v2, "mUserScenarioService":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;
    const-string v3, "userscenario"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 142
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartService;

    invoke-direct {v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartService;-><init>(Landroid/content/Context;)V

    .line 143
    .local v3, "mSmartService":Lcom/xiaopeng/xuiservice/smart/SmartService;
    const-string v5, "smart"

    const-string v6, "com.xiaopeng.xuimanager.permission.XUI_SMART"

    invoke-direct {v0, v5, v3, v6}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 145
    new-instance v5, Lcom/xiaopeng/xuiservice/brightness/BrightnessService;

    invoke-direct {v5, v1}, Lcom/xiaopeng/xuiservice/brightness/BrightnessService;-><init>(Landroid/content/Context;)V

    .line 146
    .local v5, "mBrightnessService":Lcom/xiaopeng/xuiservice/brightness/BrightnessService;
    const-string v6, "brightness"

    invoke-direct {v0, v6, v5, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 148
    new-instance v6, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;

    invoke-direct {v6, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;-><init>(Landroid/content/Context;)V

    .line 149
    .local v6, "mMediaCenterService":Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterService;
    const-string v7, "mediacenter"

    const-string v8, "com.xiaopeng.xuimanager.permission.XUI_MEDIACENTER"

    invoke-direct {v0, v7, v6, v8}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 151
    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/XAppService;

    invoke-direct {v7, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppService;-><init>(Landroid/content/Context;)V

    .line 152
    .local v7, "mXAppService":Lcom/xiaopeng/xuiservice/xapp/XAppService;
    const-string/jumbo v8, "xapp"

    const-string v9, "com.xiaopeng.xuimanager.permission.XUI_XAPP"

    invoke-direct {v0, v8, v7, v9}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 154
    new-instance v8, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;

    invoke-direct {v8, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;-><init>(Landroid/content/Context;)V

    .line 155
    .local v8, "mContextInfoService":Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoService;
    const-string v9, "contextinfo"

    const-string v10, "com.xiaopeng.xuimanager.permission.XUI_CONTEXTINFO"

    invoke-direct {v0, v9, v8, v10}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationService;

    move-result-object v9

    .line 158
    .local v9, "mOperationService":Lcom/xiaopeng/xuiservice/operation/OperationService;
    const-string v10, "operation"

    const-string v11, "com.xiaopeng.xuimanager.permission.XUI_OPERATION"

    invoke-direct {v0, v10, v9, v11}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->getInstance()Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    move-result-object v10

    .line 161
    .local v10, "mKaraokeManagerService":Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;
    const-string v11, "karaoke"

    const-string v12, "com.xiaopeng.xuimanager.permission.XUI_KARAOKE"

    invoke-direct {v0, v11, v10, v12}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;->getInstance()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    move-result-object v11

    .line 164
    .local v11, "mSoundResourceService":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
    const-string v12, "sndresource"

    invoke-direct {v0, v12, v11, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 166
    new-instance v12, Lcom/xiaopeng/xuiservice/condition/ConditionService;

    invoke-direct {v12, v1}, Lcom/xiaopeng/xuiservice/condition/ConditionService;-><init>(Landroid/content/Context;)V

    .line 167
    .local v12, "mConditionService":Lcom/xiaopeng/xuiservice/condition/ConditionService;
    const-string v13, "condition"

    invoke-direct {v0, v13, v12, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/xiaopeng/xuiservice/message/PushMessageService;->getInstance()Lcom/xiaopeng/xuiservice/message/PushMessageService;

    move-result-object v13

    .line 170
    .local v13, "mPushMessageService":Lcom/xiaopeng/xuiservice/message/PushMessageService;
    const-string v14, "message"

    invoke-direct {v0, v14, v13, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 172
    new-instance v14, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;

    invoke-direct {v14, v1}, Lcom/xiaopeng/xuiservice/userscene/UserSceneService;-><init>(Landroid/content/Context;)V

    .line 173
    .local v14, "mUserSceneService":Lcom/xiaopeng/xuiservice/userscene/UserSceneService;
    const-string v15, "UserSceneService"

    invoke-direct {v0, v15, v14, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 175
    new-instance v15, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    invoke-direct {v15}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;-><init>()V

    .line 176
    .local v15, "mXuiAlsaPlayer":Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
    move-object/from16 v16, v5

    const-string v5, "alsaplayer"

    .line 176
    .end local v5    # "mBrightnessService":Lcom/xiaopeng/xuiservice/brightness/BrightnessService;
    .local v16, "mBrightnessService":Lcom/xiaopeng/xuiservice/brightness/BrightnessService;
    invoke-direct {v0, v5, v15, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;->getInstance()Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;

    move-result-object v5

    .line 179
    .local v5, "mSysConfigService":Lcom/xiaopeng/xuiservice/sysconfig/SysConfigService;
    move-object/from16 v17, v11

    const-string v11, "sysconfig"

    .line 179
    .end local v11    # "mSoundResourceService":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
    .local v17, "mSoundResourceService":Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
    invoke-direct {v0, v11, v5, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/CommonResourceService;->getInstance()Lcom/xiaopeng/xuiservice/operation/CommonResourceService;

    move-result-object v11

    .line 182
    .local v11, "mCommonResourceService":Lcom/xiaopeng/xuiservice/operation/CommonResourceService;
    move-object/from16 v18, v12

    const-string v12, "CommonResourceService"

    .line 182
    .end local v12    # "mConditionService":Lcom/xiaopeng/xuiservice/condition/ConditionService;
    .local v18, "mConditionService":Lcom/xiaopeng/xuiservice/condition/ConditionService;
    invoke-direct {v0, v12, v11, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;->getInstance()Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;

    move-result-object v12

    .line 185
    .local v12, "mAppListOperationService":Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
    move-object/from16 v19, v13

    const-string v13, "AppListOperationService"

    .line 185
    .end local v13    # "mPushMessageService":Lcom/xiaopeng/xuiservice/message/PushMessageService;
    .local v19, "mPushMessageService":Lcom/xiaopeng/xuiservice/message/PushMessageService;
    invoke-direct {v0, v13, v12, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 187
    new-instance v13, Lcom/xiaopeng/xuiservice/theme/ThemeService;

    invoke-direct {v13, v1}, Lcom/xiaopeng/xuiservice/theme/ThemeService;-><init>(Landroid/content/Context;)V

    .line 188
    .local v13, "mThemeService":Lcom/xiaopeng/xuiservice/theme/ThemeService;
    move-object/from16 v20, v12

    const-string v12, "theme"

    .line 188
    .end local v12    # "mAppListOperationService":Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
    .local v20, "mAppListOperationService":Lcom/xiaopeng/xuiservice/applist/operation/AppListOperationService;
    invoke-direct {v0, v12, v13, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v12, "xuiSr"

    move-object/from16 v21, v15

    invoke-static {}, Lcom/xiaopeng/xuiservice/sr/XuiSrService;->getInstance()Lcom/xiaopeng/xuiservice/sr/XuiSrService;

    move-result-object v15

    .line 190
    .end local v15    # "mXuiAlsaPlayer":Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
    .local v21, "mXuiAlsaPlayer":Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;
    invoke-direct {v0, v12, v15, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 192
    const-string v4, "ATLS"

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;

    move-result-object v4

    .line 194
    .local v4, "mAmbientService":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
    const-string v12, "ambient"

    const-string v15, "com.xiaopeng.xuimanager.permission.XUI_AMBIENTLIGHT"

    invoke-direct {v0, v12, v4, v15}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 197
    .end local v4    # "mAmbientService":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;
    :cond_0
    const/4 v4, 0x0

    .line 198
    .local v4, "mLightlanuageService":Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;
    const-string v12, "LLU"

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 199
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    move-result-object v4

    .line 200
    const-string v12, "lightlanuage"

    const-string v15, "com.xiaopeng.xuimanager.permission.XUI_LIGHTLANUAGE"

    invoke-direct {v0, v12, v4, v15}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isSeatMassagerSupport()Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "FSEAT_RHYTHM"

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    move-object/from16 v22, v13

    goto :goto_1

    .line 204
    :cond_3
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;

    move-result-object v12

    .line 205
    .local v12, "mSeatMassagerService":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
    const-string v15, "seatmassager"

    move-object/from16 v22, v13

    const-string v13, "com.xiaopeng.xuimanager.permission.XUI_SEATMASSAGER"

    .line 205
    .end local v13    # "mThemeService":Lcom/xiaopeng/xuiservice/theme/ThemeService;
    .local v22, "mThemeService":Lcom/xiaopeng/xuiservice/theme/ThemeService;
    invoke-direct {v0, v15, v12, v13}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 208
    .end local v12    # "mSeatMassagerService":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;
    :goto_1
    const-string v12, "MAKEUP_MIRROR"

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 209
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;

    move-result-object v12

    .line 210
    .local v12, "mMakeupLightService":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
    const-string v13, "makeuplight"

    const-string v15, "com.xiaopeng.xuimanager.permission.XUI_MAKEUPLIGHT"

    invoke-direct {v0, v13, v12, v15}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 212
    .end local v12    # "mMakeupLightService":Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightProxy;
    :cond_4
    const-string v12, "musicrecognize"

    invoke-static {v12}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 213
    new-instance v12, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;

    invoke-direct {v12, v1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;-><init>(Landroid/content/Context;)V

    .line 214
    .local v12, "mMusicRecognizeService":Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;
    const-string v13, "musicrecognize"

    const-string v15, "com.xiaopeng.xuimanager.permission.XUI_MUSICRECOGNIZE"

    invoke-direct {v0, v13, v12, v15}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V

    .line 219
    .end local v12    # "mMusicRecognizeService":Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeService;
    :cond_5
    invoke-direct {v0, v2, v14}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 220
    invoke-direct {v0, v3, v4}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 221
    invoke-direct {v0, v7, v2}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 222
    invoke-direct {v0, v10, v6}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 223
    invoke-direct {v0, v14, v8}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 224
    invoke-direct {v0, v5, v9}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 225
    invoke-direct {v0, v11, v9}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 226
    move-object/from16 v12, v22

    invoke-direct {v0, v12, v9}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 227
    .end local v22    # "mThemeService":Lcom/xiaopeng/xuiservice/theme/ThemeService;
    .local v12, "mThemeService":Lcom/xiaopeng/xuiservice/theme/ThemeService;
    if-eqz v4, :cond_6

    .line 228
    invoke-direct {v0, v4, v12}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V

    .line 230
    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mListenerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mClientObserverList:Ljava/util/List;

    return-object v0
.end method

.method public static assertPermission(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 260
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xiaopeng/xuiservice/IXUIServiceImpl;
    .locals 2

    const-class v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    .line 235
    sget-object v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->init()V

    .line 237
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private init()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServices:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->init(Ljava/util/Collection;)V

    .line 281
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->init()V

    .line 283
    return-void
.end method

.method private init(Lcom/xiaopeng/xuiservice/XUIServiceBase;Landroid/util/ArrayMap;)V
    .locals 7
    .param p1, "service"    # Lcom/xiaopeng/xuiservice/XUIServiceBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/XUIServiceBase;",
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/xuiservice/XUIServiceBase;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p2, "completedMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServicesDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 332
    .local v0, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/xuiservice/XUIServiceBase;>;"
    if-eqz v0, :cond_2

    .line 333
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/XUIServiceBase;

    .line 334
    .local v2, "depend":Lcom/xiaopeng/xuiservice/XUIServiceBase;
    invoke-direct {p0, v2, p2}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->init(Lcom/xiaopeng/xuiservice/XUIServiceBase;Landroid/util/ArrayMap;)V

    .line 335
    .end local v2    # "depend":Lcom/xiaopeng/xuiservice/XUIServiceBase;
    goto :goto_0

    .line 338
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 339
    .local v1, "time":J
    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/XUIServiceBase;->init()V

    .line 340
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v3, "IXUIServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service init done: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/XUIServiceBase;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private init(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/xuiservice/XUIServiceBase;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p1, "allServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/xiaopeng/xuiservice/XUIServiceBase;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 316
    .local v0, "completedMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/Boolean;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 317
    .local v1, "time":J
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuiservice/XUIServiceBase;

    .line 318
    .local v4, "service":Lcom/xiaopeng/xuiservice/XUIServiceBase;
    invoke-direct {p0, v4, v0}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->init(Lcom/xiaopeng/xuiservice/XUIServiceBase;Landroid/util/ArrayMap;)V

    .line 319
    .end local v4    # "service":Lcom/xiaopeng/xuiservice/XUIServiceBase;
    goto :goto_0

    .line 320
    :cond_0
    const-string v3, "IXUIServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "All services init done, total use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private isDownloadProviderInstalled(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 263
    const-string v0, "com.android.providers.downloads"

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 269
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v0, 0x1

    return v0

    .line 274
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    .line 275
    :goto_0
    return v0
.end method

.method static synthetic lambda$setDependence$0(Lcom/xiaopeng/xuiservice/XUIServiceBase;)Ljava/util/Set;
    .locals 1
    .param p0, "k"    # Lcom/xiaopeng/xuiservice/XUIServiceBase;

    .line 310
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private registerXUIService(Ljava/lang/String;Lcom/xiaopeng/xuiservice/XUIServiceBase;Ljava/lang/String;)V
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceBase"    # Lcom/xiaopeng/xuiservice/XUIServiceBase;
    .param p3, "permission"    # Ljava/lang/String;

    .line 286
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServiceName2ServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServiceName2ServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    if-eqz p3, :cond_1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServiceName2PermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_1
    return-void

    .line 291
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_3
    :goto_0
    return-void
.end method

.method private release()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 348
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/XUIServiceBase;

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/XUIServiceBase;->release()V

    .line 347
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 350
    .end local v0    # "i":I
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->release()V

    .line 351
    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    monitor-enter v0

    .line 241
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 242
    monitor-exit v0

    return-void

    .line 244
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->release()V

    .line 245
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->sInstance:Lcom/xiaopeng/xuiservice/IXUIServiceImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    monitor-exit v0

    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setDependence(Lcom/xiaopeng/xuiservice/XUIServiceBase;Lcom/xiaopeng/xuiservice/XUIServiceBase;)V
    .locals 2
    .param p1, "serviceA"    # Lcom/xiaopeng/xuiservice/XUIServiceBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serviceB"    # Lcom/xiaopeng/xuiservice/XUIServiceBase;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 307
    if-nez p2, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServicesDependencies:Landroid/util/ArrayMap;

    sget-object v1, Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;->INSTANCE:Lcom/xiaopeng/xuiservice/-$$Lambda$IXUIServiceImpl$HmADIQ_kEJ84BStyGWuMe5w79mw;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 311
    .local v0, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Lcom/xiaopeng/xuiservice/XUIServiceBase;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method


# virtual methods
.method public addClientObserver(Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ClientObserver;

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mClientObserverList:Ljava/util/List;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mClientObserverList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    if-eqz p3, :cond_4

    .line 424
    const/4 v0, 0x0

    move v1, v0

    .line 425
    .local v1, "opti":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_4

    .line 426
    aget-object v2, p3, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x5e0

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const v5, 0xcc410d9

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "-module"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    goto :goto_1

    :cond_1
    const-string v4, "-m"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown arg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :pswitch_0
    array-length v0, p3

    sub-int/2addr v0, v6

    if-ge v1, v0, :cond_3

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 431
    aget-object v0, p3, v1

    .line 432
    .local v0, "module":Ljava/lang/String;
    add-int/2addr v1, v6

    .line 433
    invoke-static {p2, v0, p3, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->dumpModule(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 434
    .end local v0    # "module":Ljava/lang/String;
    goto :goto_2

    .line 435
    :cond_3
    const-string v0, "lack module name..."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    :goto_2
    return-void

    .line 446
    .end local v1    # "opti":I
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 413
    const-string v0, "*Dump all services*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/XUIServiceBase;

    .line 415
    .local v1, "service":Lcom/xiaopeng/xuiservice/XUIServiceBase;
    if-eqz v1, :cond_0

    .line 416
    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/XUIServiceBase;->dump(Ljava/io/PrintWriter;)V

    .line 417
    .end local v1    # "service":Lcom/xiaopeng/xuiservice/XUIServiceBase;
    :cond_0
    goto :goto_0

    .line 418
    :cond_1
    return-void
.end method

.method public getXUIService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServiceName2PermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, "permission":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mServiceName2ServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/XUIServiceBase;

    .line 361
    .local v1, "service":Lcom/xiaopeng/xuiservice/XUIServiceBase;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 362
    const-string v3, "XUI.SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getXUIService for unknown service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-object v2

    .line 365
    :cond_1
    instance-of v3, v1, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    .line 366
    move-object v2, v1

    check-cast v2, Landroid/os/IBinder;

    return-object v2

    .line 369
    :cond_2
    const-string v3, "XUI.SERVICE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getXUIService serviceName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " find: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not exposed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-object v2
.end method

.method public nativeCall()V
    .locals 0

    .line 376
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 406
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->getInstance()Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/utils/NativeCallHelper;->nativeCall(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 407
    const/4 v0, 0x1

    return v0

    .line 409
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Landroid/os/IBinder;)V
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 380
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 381
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 383
    .local v1, "uid":I
    const-string v2, "IXUIServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerObserver,binder-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",pid-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",observers-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mListenerMap:Ljava/util/Map;

    .line 384
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 387
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mListenerMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    const-string v3, "IXUIServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "repeat observer-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    monitor-exit v2

    return-void

    .line 391
    :cond_0
    new-instance v3, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;-><init>(Lcom/xiaopeng/xuiservice/IXUIServiceImpl;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    .local v3, "record":Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    nop

    .line 398
    :try_start_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/IXUIServiceImpl;->mListenerMap:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v3    # "record":Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;
    monitor-exit v2

    .line 400
    return-void

    .line 394
    .restart local v3    # "record":Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;
    :catch_0
    move-exception v4

    .line 395
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "IXUIServiceImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerObserver e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    monitor-exit v2

    return-void

    .line 399
    .end local v3    # "record":Lcom/xiaopeng/xuiservice/IXUIServiceImpl$ListenerRecord;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
