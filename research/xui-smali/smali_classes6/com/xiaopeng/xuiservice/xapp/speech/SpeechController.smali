.class public Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;
.super Ljava/lang/Object;
.source "SpeechController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechController"


# instance fields
.field private mAccessAppController:Lcom/xiaopeng/xuiservice/xapp/speech/AccessAppController;

.field private mContext:Landroid/content/Context;

.field private mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

.field private mMiniprogHandler:Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;

.field private mMobileAppController:Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;

.field private mStartAppData:Ljava/lang/String;

.field private mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

.field private mTransferIntent:Landroid/content/Intent;

.field private mTransferScreenId:I

.field private mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

.field private mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    .line 80
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    .line 82
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/AccessAppController;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/AccessAppController;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mAccessAppController:Lcom/xiaopeng/xuiservice/xapp/speech/AccessAppController;

    .line 83
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMobileAppController:Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->initMiniprogHandler()V

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->initTopWindowHandler()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->sendBackKeyEvent()V

    return-void
.end method

.method private adjustVolume(II)I
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "commandType"    # I

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getStreamVolume(I)I

    move-result v0

    .line 783
    .local v0, "currentVolume":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 784
    .local v1, "maxVolume":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 818
    :pswitch_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, p1, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->adjustStreamVolume(III)V

    .line 819
    goto :goto_0

    .line 814
    :pswitch_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v3

    const/16 v4, -0x64

    invoke-virtual {v3, p1, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->adjustStreamVolume(III)V

    .line 815
    goto :goto_0

    .line 807
    :pswitch_2
    if-nez v0, :cond_0

    .line 808
    return v4

    .line 810
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v3, p1, v5, v5}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->setStreamVolume(III)V

    .line 811
    goto :goto_0

    .line 800
    :pswitch_3
    if-ne v0, v1, :cond_1

    .line 801
    return v3

    .line 803
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v5}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->setStreamVolume(III)V

    .line 804
    goto :goto_0

    .line 793
    :pswitch_4
    if-nez v0, :cond_2

    .line 794
    return v4

    .line 796
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, p1, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->adjustStreamVolume(III)V

    .line 797
    goto :goto_0

    .line 786
    :pswitch_5
    if-ne v0, v1, :cond_3

    .line 787
    return v3

    .line 789
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v5}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->adjustStreamVolume(III)V

    .line 790
    nop

    .line 824
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkAppOpenToClose(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;

    move-result-object v0

    .line 534
    .local v0, "changeInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityChangeInfo;->isContainerPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 535
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->closeApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 536
    const/4 v1, 0x1

    return v1

    .line 538
    :cond_0
    return v1
.end method

.method private closeApp()V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startHome()V

    .line 543
    return-void
.end method

.method private closeTopView(I)I
    .locals 1
    .param p1, "displayId"    # I

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->closeTopWindow(I)I

    move-result v0

    return v0
.end method

.method private convertStartCode(ILjava/lang/String;I)I
    .locals 3
    .param p1, "startCheckCode"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 703
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 704
    const/16 v0, 0xa

    return v0

    .line 705
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x5

    if-ne p1, v1, :cond_1

    .line 706
    return v2

    .line 707
    :cond_1
    if-ne p1, v2, :cond_2

    .line 708
    const/16 v0, 0xc

    return v0

    .line 709
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 710
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryIsAssembling(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 711
    return v0

    .line 713
    :cond_3
    const/16 v0, 0x8

    return v0

    .line 714
    :cond_4
    const/4 v0, 0x7

    if-eq p1, v0, :cond_a

    const/16 v0, 0xe

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 717
    :cond_5
    const/16 v1, 0xb

    if-ne p1, v1, :cond_6

    .line 718
    return v0

    .line 719
    :cond_6
    const/16 v0, 0x10

    if-ne p1, v0, :cond_7

    .line 720
    const/16 v0, 0x12

    return v0

    .line 726
    :cond_7
    sget-boolean v0, Lcom/xiaopeng/xuiservice/xapp/Config;->CloseDialogBeforeStartApplication:Z

    if-eqz v0, :cond_9

    .line 727
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->isHaveNotCancelableDialog(I)Z

    move-result v0

    .line 728
    .local v0, "notCancelableDialog":Z
    if-eqz v0, :cond_8

    .line 729
    const/16 v1, 0x9

    return v1

    .line 731
    :cond_8
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->closeDialog(I)I

    .line 734
    .end local v0    # "notCancelableDialog":Z
    :cond_9
    const/4 v0, 0x1

    return v0

    .line 716
    :cond_a
    :goto_0
    const/16 v0, 0xd

    return v0
.end method

.method private dismissBotDialog()V
    .locals 2

    .line 471
    const-string v0, "SpeechController"

    const-string v1, "dismissBotDialog"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideTransferConfirmDialog()V

    .line 473
    return-void
.end method

.method private geTargetApplication(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageNameInfo"    # Ljava/lang/String;

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "pkgNameArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 168
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    return-object v4

    .line 167
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_1
    aget-object v1, v0, v2

    return-object v1

    .line 174
    .end local v0    # "pkgNameArray":[Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method private getTargetDisplayId(Ljava/lang/String;)I
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 663
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 665
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 667
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 671
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getTargetDisplayId(Lorg/json/JSONObject;)I
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 676
    :try_start_0
    const-string v0, "display_location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "display_location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 681
    :cond_0
    goto :goto_0

    .line 679
    :catch_0
    move-exception v0

    .line 680
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "SpeechController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTargetDisplayId error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private initMiniprogHandler()V
    .locals 3

    .line 104
    sget-object v0, Lcom/xiaopeng/util/FeatureOption;->FO_MINI_PROGRAM_PACKAGES:Ljava/lang/String;

    .line 105
    .local v0, "miniProgramPkg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/PortScreenMiniprogHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMiniprogHandler:Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-direct {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/LandScreenMiniprogHandler;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMiniprogHandler:Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;

    .line 110
    :goto_0
    return-void
.end method

.method private initTopWindowHandler()V
    .locals 1

    .line 113
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    .line 114
    return-void
.end method

.method private isHaveCancelableDialog()Z
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->isHaveNotCancelableDialog(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private launchApp(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;Ljava/lang/String;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "appInfo"    # Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    .param p4, "pageUri"    # Ljava/lang/String;
    .param p5, "displayId"    # I

    .line 266
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isScreenOpened(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setScreenOpened(I)I

    move-result v0

    .line 268
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 269
    const/16 v1, 0x13

    return v1

    .line 272
    .end local v0    # "result":I
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p5}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->checkAppStartStatus(Ljava/lang/String;ZI)I

    move-result v0

    .line 274
    .local v0, "appStartCode":I
    if-eqz v0, :cond_1

    .line 275
    invoke-static {v1, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/util/XAppBiLogUtil;->sendAppUseDeniedDataLog(IILjava/lang/String;)V

    .line 277
    :cond_1
    invoke-direct {p0, v0, p1, p5}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->convertStartCode(ILjava/lang/String;I)I

    move-result v2

    .line 278
    .local v2, "appOpenSpeechCode":I
    const-string v3, "SpeechController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAppStartStatus appStartCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " &appOpenSpeechCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eq v2, v1, :cond_3

    .line 280
    const/16 v1, 0x12

    if-ne v2, v1, :cond_2

    .line 281
    iget-object v1, p3, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {p0, v1, p5}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->showTransferBotDialog(Landroid/content/Intent;I)V

    .line 283
    :cond_2
    return v2

    .line 285
    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 287
    :cond_4
    if-eqz p3, :cond_6

    .line 288
    const-string v3, "com.xiaopeng.caraccount"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    iget-object v3, p3, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    const-string v4, "packageName"

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    iget-object v5, p3, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, p5, v6}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 293
    :cond_6
    invoke-direct {p0, p1, p5}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startPackageByAppListManager(Ljava/lang/String;I)V

    goto :goto_1

    .line 286
    :cond_7
    :goto_0
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startAppWithAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    :goto_1
    return v1
.end method

.method private sendBackKeyEvent()V
    .locals 2

    .line 566
    const-string v0, "SpeechController"

    const-string v1, "mock sendBackKeyEvent "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(I)V

    .line 568
    return-void
.end method

.method private setVolume(II)I
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "value"    # I

    .line 828
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/xapp/sound/SoundManager;->setStreamVolume(III)V

    .line 829
    const/4 v0, 0x1

    return v0
.end method

.method private showAppDetailPage(Ljava/lang/String;ZI)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "download"    # Z
    .param p3, "displayId"    # I

    .line 686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.SHOW_APP_STORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "uri":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 691
    .end local v1    # "uri":Ljava/lang/String;
    :cond_0
    const-string v1, "com.xiaopeng.appstore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    move v1, p2

    .line 693
    .local v1, "action":I
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppCheckPolicy:Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    invoke-virtual {v2, p3}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->isInSpecialDeniedStatus(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 694
    const/4 v1, 0x2

    .line 696
    :cond_1
    const-string v2, "SpeechController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAppDetailPage with action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 698
    const-string v2, "com.xiaopeng.appstore.intent.extra.SCREEN"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 700
    return-void
.end method

.method private showTransferBotDialog(Landroid/content/Intent;I)V
    .locals 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screenId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 325
    move/from16 v2, p2

    iput v2, v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTransferScreenId:I

    .line 326
    iput-object v1, v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTransferIntent:Landroid/content/Intent;

    .line 327
    const v3, 0x7f0e0080

    const v4, 0x7f0e007d

    if-nez v2, :cond_0

    .line 328
    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 329
    .local v5, "currentScreenMsgId":I
    :goto_0
    if-nez v2, :cond_1

    .line 330
    goto :goto_1

    :cond_1
    move v3, v4

    .line 331
    .local v3, "targetScreenMsgId":I
    :goto_1
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "currentScreenMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "targetScreenMsg":Ljava/lang/String;
    iget-object v7, v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    const v8, 0x7f0e0084

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v11, 0x1

    aput-object v4, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "ttsText":Ljava/lang/String;
    iget-object v8, v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    const v9, 0x7f0e007f

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v4, v11, v10

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "okText":Ljava/lang/String;
    const v9, 0x7f0e0048

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 336
    .local v9, "cancelText":Ljava/lang/String;
    const-string v10, "SpeechController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showTransferBotDialog screenId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-class v10, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v10}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    const/16 v16, 0x0

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mStartAppData:Ljava/lang/String;

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v10

    new-instance v11, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$1;

    invoke-direct {v11, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;)V

    invoke-virtual {v10, v1, v2, v11}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V

    .line 352
    return-void
.end method

.method private startAppWithAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "pageUri"    # Ljava/lang/String;
    .param p4, "screenId"    # I

    .line 307
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAppWithAction with pageUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.VIEW"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 315
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p4, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SpeechController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAppWithAction failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private startAppletForResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 1
    .param p1, "aliId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .line 483
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMiniprogHandler:Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;->startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method private startApplicationForResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "pageUri"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "displayId"    # I
    .param p6, "isSystemApp"    # Z

    .line 229
    const/4 v0, 0x3

    .line 230
    .local v0, "result":I
    const/4 v1, 0x0

    .line 231
    .local v1, "isInstalled":Z
    if-eqz p6, :cond_0

    .line 232
    const/4 v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v1

    .line 236
    :goto_0
    if-eqz v1, :cond_3

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    move-result-object v2

    .line 238
    .local v2, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 239
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->launchApp(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 240
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v3, p1, p5}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isOpened(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    const/4 v0, 0x1

    goto :goto_1

    .line 243
    :cond_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object v7, p3

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->launchApp(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;Ljava/lang/String;I)I

    move-result v0

    .line 245
    .end local v2    # "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    :goto_1
    goto :goto_2

    .line 246
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMobileAppController:Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;

    invoke-virtual {v2, p4, p5}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->startMobileApp(Ljava/lang/String;I)I

    move-result v2

    .line 247
    .local v2, "startCode":I
    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 248
    return v2

    .line 250
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryAppOnlineStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 251
    .local v3, "status":I
    const/16 v4, 0x439

    if-ne v3, v4, :cond_5

    .line 252
    const/16 v0, 0x10

    goto :goto_2

    .line 253
    :cond_5
    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_6

    .line 254
    const/16 v0, 0xc

    goto :goto_2

    .line 256
    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, p5}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->showAppDetailPage(Ljava/lang/String;ZI)V

    .line 257
    const/4 v0, 0x4

    .line 260
    .end local v2    # "startCode":I
    .end local v3    # "status":I
    :goto_2
    const-string v2, "SpeechController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startApplicationForResult packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &pageUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " &result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return v0
.end method

.method private startHome()V
    .locals 4

    .line 547
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SpeechController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHomePackage e= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startPackage(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 476
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppInfo(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;

    move-result-object v0

    .line 477
    .local v0, "appInfo":Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;
    if-eqz v0, :cond_0

    .line 478
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/xapp/entities/AppInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 480
    :cond_0
    return-void
.end method

.method private startPackageByAppListManager(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 299
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPackageByAppListManager pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "extra":Landroid/os/Bundle;
    const-string v1, "screenId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const-string v1, "startType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    invoke-static {}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->getInstance()Lcom/xiaopeng/xuimanager/applist/ApplistManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/xuimanager/applist/ApplistManager;->startApp(Ljava/lang/String;Landroid/os/Bundle;)I

    .line 304
    return-void
.end method

.method private startXpAppByBroadcast(ILjava/lang/String;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "action"    # Ljava/lang/String;

    .line 117
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startXpAppByBroadcast displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.appstore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "com.xiaopeng.appstore.intent.extra.SCREEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 122
    return-void
.end method

.method private stopAppletForResult(Ljava/lang/String;)I
    .locals 1
    .param p1, "aliId"    # Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMiniprogHandler:Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/miniprog/MiniprogHandler;->exitApplet(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private stopApplicationForResult(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;

    .line 491
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopApplicationForResult packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &activityName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getCurApp()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;

    move-result-object v0

    .line 496
    .local v0, "curApp":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->getName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;->getName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->isHaveCancelableDialog()Z

    move-result v1

    .line 499
    .local v1, "haveCancelableDialog":Z
    const-string v2, "SpeechController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "haveCancelableDialog:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 501
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->dismissDialog(I)V

    .line 503
    :cond_0
    if-eqz v1, :cond_1

    const/16 v2, 0x3e8

    nop

    .line 504
    .local v2, "delayTime":I
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$2;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;)V

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    const/4 v1, 0x1

    .line 512
    .end local v2    # "delayTime":I
    .local v1, "resultCode":I
    goto :goto_0

    .line 513
    .end local v1    # "resultCode":I
    :cond_2
    const/4 v1, 0x2

    .end local v0    # "curApp":Lcom/xiaopeng/xuiservice/xapp/XAppManagerService$ApplicationRecord;
    .restart local v1    # "resultCode":I
    :goto_0
    move v0, v1

    .line 515
    .end local v1    # "resultCode":I
    .local v0, "resultCode":I
    goto :goto_1

    .line 516
    .end local v0    # "resultCode":I
    :cond_3
    const/4 v0, 0x4

    .line 518
    .restart local v0    # "resultCode":I
    :goto_1
    return v0
.end method

.method private stopApplicationForResult(ZLjava/lang/String;I)I
    .locals 3
    .param p1, "systemApp"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "screenId"    # I

    .line 522
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 523
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isOpened(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startHome(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 525
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_2
    const/4 v0, 0x2

    return v0
.end method


# virtual methods
.method public adjustBluetoothVolume(I)I
    .locals 2
    .param p1, "commandType"    # I

    .line 738
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x0

    return v0

    .line 741
    :cond_0
    const/16 v0, 0xd

    .line 742
    .local v0, "streamType":I
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->adjustVolume(II)I

    move-result v1

    return v1
.end method

.method public closeCurrentApp(Ljava/lang/String;)I
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, "targetDisplayId":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->closeTopView(I)I

    move-result v1

    return v1
.end method

.method public closeXpAppStore()I
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    const-string v1, "com.xiaopeng.appstore"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->isOpened(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x2

    return v0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->closeApp()V

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public currentBack(Ljava/lang/String;)I
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 609
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 610
    .local v0, "targetDisplayId":I
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/util/InputEventUtil;->dispatchKey(II)V

    .line 611
    const/4 v1, 0x1

    return v1
.end method

.method public downloadApplication(Ljava/lang/String;)I
    .locals 8
    .param p1, "appData"    # Ljava/lang/String;

    .line 576
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v1

    .line 578
    .local v1, "displayId":I
    const-string v2, "package_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 580
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryIsAssembling(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 581
    .local v3, "isRunning":Z
    if-eqz v3, :cond_0

    .line 582
    const/4 v4, 0x6

    return v4

    .line 584
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v4

    .line 585
    .local v4, "isInstalled":Z
    if-eqz v4, :cond_1

    .line 586
    const/4 v5, 0x4

    return v5

    .line 588
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryCanDownloadStatus(Landroid/content/Context;)I

    move-result v5

    .line 589
    .local v5, "userStatus":I
    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    .line 590
    const/4 v6, 0x2

    return v6

    .line 592
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->getInstance()Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v2}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->queryAppOnlineStatus(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 593
    .local v6, "status":I
    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_3

    .line 594
    const/4 v7, 0x7

    return v7

    .line 595
    :cond_3
    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_4

    .line 596
    const/16 v7, 0x8

    return v7

    .line 598
    :cond_4
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->showAppDetailPage(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    const/4 v7, 0x3

    return v7

    .line 604
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "displayId":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "isRunning":Z
    .end local v4    # "isInstalled":Z
    .end local v5    # "userStatus":I
    .end local v6    # "status":I
    :cond_5
    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 605
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v0, 0x5

    return v0
.end method

.method public exchangeWindow(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 432
    const-string v0, ""

    .line 433
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 434
    .local v1, "toAreaPosition":I
    const/4 v2, 0x0

    .line 436
    .local v2, "screenId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getSupportExchangeWindowStatus(I)I

    move-result v3

    .line 438
    .local v3, "checkStatus":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 439
    const/16 v4, 0xc9

    return v4

    .line 440
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 441
    const/16 v4, 0xcc

    return v4

    .line 444
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 445
    const-string v4, "SpeechController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchangeWindow data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "package_name"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 449
    const-string v5, "toAreaPosition"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 452
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 450
    :catch_0
    move-exception v4

    .line 451
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 455
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 456
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getPackageAreaType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "showArea":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 458
    const/16 v5, 0xca

    return v5

    .line 460
    :cond_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getAreaTypePosition(Ljava/lang/String;)I

    move-result v5

    .line 461
    .local v5, "areaPosition":I
    if-ne v5, v1, :cond_4

    .line 462
    const/16 v6, 0xcb

    return v6

    .line 466
    .end local v4    # "showArea":Ljava/lang/String;
    .end local v5    # "areaPosition":I
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->exchangeWindow()V

    .line 467
    const/4 v4, 0x0

    return v4
.end method

.method public getSingStatus(Ljava/lang/String;)I
    .locals 11
    .param p1, "data"    # Ljava/lang/String;

    .line 616
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v2

    .line 619
    .local v2, "displayId":I
    const-string v3, "artist"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, "artist":Ljava/lang/String;
    const-string v4, "song"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "song":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getTopPackage(I)Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "currentTopPackage":Ljava/lang/String;
    const-string v6, "SpeechController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTopPackage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with displayId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 624
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->isKaraokeApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 625
    move-object v1, v5

    goto :goto_0

    .line 627
    :cond_0
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    invoke-virtual {v6, v2}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->findTargetPackage(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 628
    const-string v6, "SpeechController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "findTargetPackage:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_1
    :goto_0
    const-string v6, "SpeechController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "targetPkgName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 634
    const-string v6, ""

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->showAppDetailPage(Ljava/lang/String;ZI)V

    .line 635
    const/4 v6, 0x4

    return v6

    .line 637
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x10

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 638
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    invoke-virtual {v6, v1}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->isSupportSpeech(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 639
    return v7

    .line 641
    :cond_3
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    invoke-virtual {v6, v2, v1, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->searchSong(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return v8

    .line 645
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v6

    invoke-virtual {v6, v1, v8, v2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->checkAppStartStatus(Ljava/lang/String;ZI)I

    move-result v6

    .line 646
    .local v6, "startStatus":I
    invoke-direct {p0, v6, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->convertStartCode(ILjava/lang/String;I)I

    move-result v9

    .line 647
    .local v9, "appOpenSpeechCode":I
    if-ne v9, v8, :cond_6

    .line 648
    iget-object v10, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    invoke-virtual {v10, v1}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->isSupportSpeech(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 649
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startPackage(Ljava/lang/String;I)V

    .line 650
    return v7

    .line 652
    :cond_5
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mKaraokeManager:Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    invoke-virtual {v7, v2, v1, v3, v4}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->searchSong(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    return v8

    .line 655
    :cond_6
    return v9

    .line 656
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "displayId":I
    .end local v3    # "artist":Ljava/lang/String;
    .end local v4    # "song":Ljava/lang/String;
    .end local v5    # "currentTopPackage":Ljava/lang/String;
    .end local v6    # "startStatus":I
    .end local v9    # "appOpenSpeechCode":I
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 659
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x3

    return v0
.end method

.method public getVideoDemandStatus(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 754
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 756
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 757
    .local v0, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v1

    .line 758
    .local v1, "displayId":I
    const-string v2, "package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getTargetApp(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 762
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 765
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v1}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->checkAppStartStatus(Ljava/lang/String;ZI)I

    move-result v3

    .line 766
    .local v3, "startStatus":I
    if-eqz v3, :cond_2

    .line 767
    invoke-direct {p0, v3, v2, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->convertStartCode(ILjava/lang/String;I)I

    move-result v4

    return v4

    .line 769
    :cond_2
    const-string v4, "command"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, "command":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 771
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v2, v4, v6}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->play(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    const/16 v5, 0x64

    return v5

    .line 776
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "displayId":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "startStatus":I
    .end local v4    # "command":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 763
    .restart local v0    # "object":Lorg/json/JSONObject;
    .restart local v1    # "displayId":I
    .restart local v2    # "pkgName":Ljava/lang/String;
    :cond_4
    :goto_0
    const/4 v3, 0x4

    return v3

    .line 774
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "displayId":I
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 778
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_1
    const/16 v0, 0x65

    return v0
.end method

.method public isHaveNotCancelableDialog()Z
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->isHaveNotCancelableDialog(I)Z

    move-result v0

    return v0
.end method

.method public onBotCancel()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->dismissBotDialog()V

    .line 361
    return-void
.end method

.method public onBotSubmit()V
    .locals 3

    .line 355
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->dismissBotDialog()V

    .line 356
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTransferIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTransferScreenId:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppModeController;->handleTransferConfirm(Landroid/content/Intent;I)V

    .line 357
    return-void
.end method

.method public screenFullSet(Ljava/lang/String;)I
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .line 364
    const-string v0, ""

    .line 365
    .local v0, "pkgName":Ljava/lang/String;
    const-string v1, ""

    .line 366
    .local v1, "areaType":Ljava/lang/String;
    const/4 v2, -0x1

    .line 367
    .local v2, "fromAreaPosition":I
    const/4 v3, 0x0

    .line 369
    .local v3, "screenId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isSplitScreen()Z

    move-result v4

    .line 370
    .local v4, "isSplitScreen":Z
    if-nez v4, :cond_0

    .line 371
    const/4 v5, 0x2

    return v5

    .line 374
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_1

    .line 375
    const-string v5, "SpeechController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "screenFullSet data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 378
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "package_name"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 379
    const-string v7, "areaType"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 380
    const-string v7, "fromAreaPosition"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    .line 383
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 381
    :catch_0
    move-exception v5

    .line 382
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 386
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 387
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getPackageAreaType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 389
    const/4 v5, 0x3

    return v5

    .line 393
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 394
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setFullScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 395
    :cond_3
    if-eq v2, v6, :cond_4

    .line 396
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->gePositionAreaType(I)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "fromAreaType":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setFullScreen(Ljava/lang/String;)V

    .line 398
    .end local v5    # "fromAreaType":Ljava/lang/String;
    goto :goto_1

    .line 399
    :cond_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setFullScreen()V

    .line 401
    :goto_1
    const/4 v5, 0x0

    return v5
.end method

.method public screenSplitSet(Ljava/lang/String;)I
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 405
    const-string v0, ""

    .line 406
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getTopFullScreenActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v1

    .line 407
    .local v1, "info":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v1, :cond_3

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 409
    const-string v3, "SpeechController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenSplitSet data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 412
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "package_name"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 415
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 413
    :catch_0
    move-exception v3

    .line 414
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 417
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    const-string v3, "SpeechController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target pkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " &fullScreen pkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    const/4 v2, 0x3

    return v2

    .line 422
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getActivityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isSupportSplitScreen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 423
    const/4 v2, 0x1

    return v2

    .line 425
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setSplitScreen()V

    .line 426
    return v2

    .line 428
    :cond_3
    const/4 v2, 0x2

    return v2
.end method

.method public setBluetoothVolume(I)I
    .locals 2
    .param p1, "value"    # I

    .line 746
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    const/4 v0, 0x0

    return v0

    .line 749
    :cond_0
    const/16 v0, 0xd

    .line 750
    .local v0, "streamType":I
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->setVolume(II)I

    move-result v1

    return v1
.end method

.method public startApplet(Ljava/lang/String;)I
    .locals 5
    .param p1, "appletData"    # Ljava/lang/String;

    .line 202
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "ali_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "aliId":Ljava/lang/String;
    const-string v2, "page_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "page_url":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v3, "parmas":Ljava/util/Map;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    const-string v4, "page"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    const-string v4, ""

    invoke-direct {p0, v1, v4, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startAppletForResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 210
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "aliId":Ljava/lang/String;
    .end local v2    # "page_url":Ljava/lang/String;
    .end local v3    # "parmas":Ljava/util/Map;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 213
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x1

    return v0
.end method

.method public startApplication(Ljava/lang/String;)I
    .locals 13
    .param p1, "appData"    # Ljava/lang/String;

    .line 139
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startApplication appData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mStartAppData:Ljava/lang/String;

    .line 142
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "packageNameInfo":Ljava/lang/String;
    const-string v2, "app_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "appName":Ljava/lang/String;
    const-string v3, "action"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "action":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->geTargetApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 147
    .local v10, "packageName":Ljava/lang/String;
    const-string v3, "page_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "pageUri":Ljava/lang/String;
    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v11, v3

    .line 149
    .local v11, "appType":I
    const-string v3, "isSystemApp"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 150
    .local v9, "isSystemApp":Z
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v3

    move v12, v3

    .line 151
    .local v12, "displayId":I
    const/16 v3, 0x64

    if-ne v11, v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mAccessAppController:Lcom/xiaopeng/xuiservice/xapp/speech/AccessAppController;

    invoke-virtual {v3, v12, v10}, Lcom/xiaopeng/xuiservice/xapp/speech/AccessAppController;->startAccessApp(ILjava/lang/String;)I

    move-result v3

    return v3

    .line 154
    :cond_0
    const/4 v3, 0x5

    if-eq v11, v3, :cond_2

    const/4 v3, 0x6

    if-ne v11, v3, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    move-object v3, p0

    move-object v4, v10

    move-object v7, v2

    move v8, v12

    invoke-direct/range {v3 .. v9}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startApplicationForResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v3

    return v3

    .line 155
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMobileAppController:Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;

    invoke-virtual {v3, v11, v2, v12}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->startMobileApp(ILjava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 158
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "packageNameInfo":Ljava/lang/String;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "pageUri":Ljava/lang/String;
    .end local v9    # "isSystemApp":Z
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "appType":I
    .end local v12    # "displayId":I
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x3

    return v0
.end method

.method public startXpAppStore(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "result":I
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "displayId":I
    sget-boolean v2, Lcom/xiaopeng/xuiservice/xapp/Config;->CloseDialogBeforeStartApplication:Z

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->isHaveNotCancelableDialog(I)Z

    move-result v2

    .line 93
    .local v2, "notCancelableDialog":Z
    if-eqz v2, :cond_0

    .line 94
    const/16 v3, 0x9

    return v3

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mTopWindowHandler:Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/xapp/speech/window/TopWindowHandler;->closeDialog(I)I

    .line 99
    .end local v2    # "notCancelableDialog":Z
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->startXpAppByBroadcast(ILjava/lang/String;)V

    .line 100
    return v0
.end method

.method public stopApplet(Ljava/lang/String;)I
    .locals 3
    .param p1, "appletData"    # Ljava/lang/String;

    .line 218
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "ali_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "aliId":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->stopAppletForResult(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 221
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "aliId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 224
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x1

    return v0
.end method

.method public stopApplication(Ljava/lang/String;)I
    .locals 9
    .param p1, "appData"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v2

    .line 181
    .local v2, "screenId":I
    const-string v3, "package_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "pkgName":Ljava/lang/String;
    const-string v4, "app_name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "appName":Ljava/lang/String;
    const-string v5, "isSystemApp"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 184
    .local v5, "isSystemApp":Z
    iget-object v7, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->mMobileAppController:Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;

    invoke-virtual {v7, v4, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/MobileAppController;->stopMobileApp(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v0, :cond_0

    .line 186
    return v0

    .line 188
    :cond_0
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "infoArray":[Ljava/lang/String;
    aget-object v6, v7, v6

    aget-object v8, v7, v0

    invoke-direct {p0, v6, v8}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->stopApplicationForResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    return v6

    .line 192
    .end local v7    # "infoArray":[Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v5, v3, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->stopApplicationForResult(ZLjava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 194
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "screenId":I
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "isSystemApp":Z
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 197
    .end local v1    # "e":Lorg/json/JSONException;
    return v0
.end method
