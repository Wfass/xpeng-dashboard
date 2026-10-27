.class public Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;
.super Lcom/xiaopeng/speech/protocol/SpeechModel;
.source "SpeechMediaModel.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/query/media/IMediaQueryCaller;
.implements Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechMediaModel"


# instance fields
.field private mBotDialogDisplayId:I

.field private mDemandCommand:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

.field private mDemandMediaDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/SpeechModel;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mBotDialogDisplayId:I

    .line 37
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandMediaDialog:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;
    .param p1, "x1"    # I

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->onBotConfirm(I)V

    return-void
.end method

.method private dismissBotDialog(Z)V
    .locals 3
    .param p1, "confirm"    # Z

    .line 365
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissBotDialog with:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideTransferConfirmDialog()V

    .line 367
    return-void
.end method

.method private executeCmd(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I

    .line 442
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCmd displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->isShowSeizeDialog(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandMediaDialog:Z

    .line 445
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->showBotDialog(I)V

    .line 446
    const/4 v0, 0x2

    return v0

    .line 448
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControlInner(III)Z

    move-result v0

    .line 449
    .local v0, "success":Z
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private executeCmd(Ljava/lang/String;I)I
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "cmd"    # I

    .line 429
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCmd data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 431
    .local v0, "displayId":I
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->isShowSeizeDialog(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 432
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandMediaDialog:Z

    .line 433
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->showBotDialog(I)V

    .line 434
    const/4 v1, 0x2

    return v1

    .line 436
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControlInner(III)Z

    .line 438
    return v2
.end method

.method private executeCustomAction(IILandroid/os/Bundle;)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "cmd"    # I
    .param p3, "extra"    # Landroid/os/Bundle;

    .line 453
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCmd displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->isShowSeizeDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandMediaDialog:Z

    .line 456
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->showBotDialog(I)V

    .line 457
    const/4 v0, 0x2

    return v0

    .line 459
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->sendCustomAction(IILandroid/os/Bundle;)Z

    move-result v0

    .line 460
    .local v0, "result":Z
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getTargetDisplayId(Ljava/lang/String;)I
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;

    .line 468
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getTargetDisplayId(Lorg/json/JSONObject;)I
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 464
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method private isShowSeizeDialog(I)Z
    .locals 1
    .param p1, "displayId"    # I

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method private isShowSeizeDialog(ILjava/lang/String;)Z
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 358
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageScreenId(Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, "pkgScreenId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 361
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->checkAppStartMultiScreenStatus(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 359
    :goto_0
    return v1
.end method

.method private mediaPlay(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 328
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaPlay type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "commandType":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 332
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 333
    .local v8, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v8}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v2

    move v9, v2

    .line 334
    .local v9, "displayId":I
    const-string v2, "song_info"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 335
    .local v10, "command":Ljava/lang/String;
    const-string v2, "package_name"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 336
    .local v11, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v9, v11}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->isShowSeizeDialog(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandMediaDialog:Z

    .line 338
    new-instance v12, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    move-object v2, v12

    move-object v3, p0

    move v4, v9

    move-object v5, v11

    move-object v6, v0

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandCommand:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    .line 339
    invoke-direct {p0, v9}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->showBotDialog(I)V

    .line 340
    const/4 v1, 0x2

    return v1

    .line 342
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->releaseStop(I)V

    .line 343
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v2

    invoke-virtual {v2, v9, v11, v0, v10}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mediaPlay(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v9    # "displayId":I
    .end local v10    # "command":Ljava/lang/String;
    .end local v11    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 347
    return v1

    .line 350
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private onBotCancel(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->dismissBotDialog(Z)V

    .line 426
    return-void
.end method

.method private onBotConfirm(I)V
    .locals 4
    .param p1, "displayId"    # I

    .line 414
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->dismissBotDialog(Z)V

    .line 415
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandMediaDialog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandCommand:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandCommand:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->access$100(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->enterTargetPackage(ILjava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandCommand:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->access$100(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandCommand:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    .line 418
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->access$200(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mDemandCommand:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;->access$300(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$MediaPlayCommandBean;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mediaPlay(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->enterCurrent(I)V

    .line 422
    :goto_0
    return-void
.end method

.method private showBotDialog(I)V
    .locals 13
    .param p1, "displayId"    # I

    .line 370
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBotDialog displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mBotDialogDisplayId:I

    .line 372
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 373
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f0e0080

    const v2, 0x7f0e007d

    if-nez p1, :cond_0

    .line 374
    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 375
    .local v3, "currentScreenMsgId":I
    :goto_0
    if-nez p1, :cond_1

    .line 376
    goto :goto_1

    :cond_1
    move v1, v2

    .line 377
    .local v1, "otherScreenMsgId":I
    :goto_1
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "currentScreenMsg":Ljava/lang/String;
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 379
    .local v4, "otherScreenMsg":Ljava/lang/String;
    const v5, 0x7f0e0084

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, "ttsText":Ljava/lang/String;
    const v6, 0x7f0e003f

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 381
    .local v6, "cancelText":Ljava/lang/String;
    const v9, 0x7f0e007f

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v7

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 382
    .local v7, "positiveBtnText":Ljava/lang/String;
    const v8, 0x7f0e0042

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "baseOkText":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "okText":Ljava/lang/String;
    const-string v10, "SpeechMediaModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showBotDialog screenId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-class v10, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;

    invoke-static {v10}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;

    invoke-virtual {v10, v5, v9, v6}, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;->sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v12, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$1;

    invoke-direct {v12, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;I)V

    invoke-virtual {v10, v11, p1, v12}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V

    .line 399
    return-void
.end method


# virtual methods
.method public backward(Ljava/lang/String;)I
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 185
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlaybackState(I)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 187
    .local v1, "state":Landroid/media/session/PlaybackState;
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v2

    .line 188
    .local v2, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-string v3, "command://music.backward"

    .line 190
    .local v3, "commandType":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v4

    const-string v5, "com.xiaopeng.musicradio"

    invoke-virtual {v4, v0, v5, v3, p1}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mediaSpecialControl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v4, 0x0

    return v4

    .line 193
    .end local v3    # "commandType":Ljava/lang/String;
    :cond_0
    const/16 v3, 0xd

    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v3

    return v3
.end method

.method public cancelCollect(Ljava/lang/String;)I
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 167
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 168
    .local v0, "displayId":I
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v1

    return v1
.end method

.method public close(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    .line 98
    .local v1, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.xiaopeng.musicradio"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "pkgName":Ljava/lang/String;
    :goto_0
    const-string v3, "SpeechMediaModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->closeApplication(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v2

    .line 104
    .local v2, "currentStatus":I
    const-string v3, "SpeechMediaModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCloseCommand displayId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " &currentStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez v2, :cond_2

    .line 106
    const/4 v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    .line 108
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public collect(Ljava/lang/String;)I
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "displayId":I
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v1

    return v1
.end method

.method public forward(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 174
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    .line 175
    .local v1, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v2, "command://music.forward"

    .line 177
    .local v2, "commandType":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v3

    const-string v4, "com.xiaopeng.musicradio"

    invoke-virtual {v3, v0, v4, v2, p1}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mediaSpecialControl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v3, 0x0

    return v3

    .line 180
    .end local v2    # "commandType":Ljava/lang/String;
    :cond_0
    const/16 v2, 0xe

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v2

    return v2
.end method

.method public mediaAudioBookListPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 319
    const-string v0, "music.audiobook.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaAudioBookPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 269
    const-string/jumbo v0, "xmly.control.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaBluetoothPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 274
    const-string v0, "music.control.bluetooth.play.random"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaCollectPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 279
    const-string v0, "music.control.collect.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaFmLocalOn(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 289
    const-string v0, "fm.local.on"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaHistoryListPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 284
    const-string v0, "music.control.playlist.history.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaListPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 314
    const-string v0, "music.list.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaMusicDailyrecPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 294
    const-string v0, "music.dailyrec.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaMusicNewsPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 299
    const-string v0, "music.news.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaMusicPersonalityPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 304
    const-string v0, "fm.play.personality"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaMusicPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 264
    const-string v0, "music.control.play"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaSpecificSourcePlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 324
    const-string v0, "music.play.specific.source"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mediaUsbPlay(Ljava/lang/String;)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 309
    const-string v0, "music.control.play.usb"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mediaPlay(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public next(Ljava/lang/String;)I
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 120
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlaybackState(I)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 122
    .local v1, "state":Landroid/media/session/PlaybackState;
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v2

    return v2
.end method

.method public onCancel()V
    .locals 3

    .line 409
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaTriggerListener onCancel with displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mBotDialogDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mBotDialogDisplayId:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->onBotCancel(I)V

    .line 411
    return-void
.end method

.method public onSubmit()V
    .locals 3

    .line 403
    const-string v0, "SpeechMediaModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaTriggerListener onSubmit with displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mBotDialogDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->mBotDialogDisplayId:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->onBotConfirm(I)V

    .line 405
    return-void
.end method

.method public pause(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v1

    .line 65
    .local v1, "currentStatus":I
    const-string v2, "SpeechMediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPauseCommand displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &currentStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-nez v1, :cond_0

    .line 67
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v2

    return v2

    .line 69
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public play(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v1

    .line 54
    .local v1, "currentStatus":I
    const-string v2, "SpeechMediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayCommand displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &currentStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-eqz v1, :cond_0

    .line 56
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v2

    return v2

    .line 58
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public playMode(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v1

    .line 131
    .local v1, "displayId":I
    const-string v2, "mode"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "mode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v3, "extra":Landroid/os/Bundle;
    const-string v4, "TextValue"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/16 v4, 0x9

    invoke-direct {p0, v1, v4, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCustomAction(IILandroid/os/Bundle;)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 135
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "displayId":I
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "extra":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public playModeClose(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v1

    .line 148
    .local v1, "displayId":I
    const-string v2, "mode"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "mode":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v3, "extra":Landroid/os/Bundle;
    const-string v4, "TextValue"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v4, 0x11

    invoke-direct {p0, v1, v4, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCustomAction(IILandroid/os/Bundle;)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 152
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "displayId":I
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "extra":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 156
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public prev(Ljava/lang/String;)I
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlaybackState(I)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 115
    .local v1, "state":Landroid/media/session/PlaybackState;
    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v2

    return v2
.end method

.method public resume(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v1

    .line 76
    .local v1, "currentStatus":I
    const-string v2, "SpeechMediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResumeCommand displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &currentStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz v1, :cond_0

    .line 78
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v2

    return v2

    .line 80
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setTime(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v1

    .line 250
    .local v1, "displayId":I
    const-string v2, "value"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 251
    .local v2, "time":J
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v4, "extra":Landroid/os/Bundle;
    const-string v5, "LongValue"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 253
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlaybackState(I)Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 254
    .local v5, "state":Landroid/media/session/PlaybackState;
    const/4 v6, 0x4

    invoke-direct {p0, v1, v6, v4}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCustomAction(IILandroid/os/Bundle;)I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 255
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "displayId":I
    .end local v2    # "time":J
    .end local v4    # "extra":Landroid/os/Bundle;
    .end local v5    # "state":Landroid/media/session/PlaybackState;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 259
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public speedDown(Ljava/lang/String;)I
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    .line 200
    .local v1, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 201
    const-string v2, "command://music.speed.down"

    .line 202
    .local v2, "commandType":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v3

    const-string v4, "com.xiaopeng.musicradio"

    const-string v5, ""

    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mediaSpecialControl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v3, 0x0

    return v3

    .line 205
    .end local v2    # "commandType":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public speedSet(Ljava/lang/String;)I
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v1

    .line 214
    .local v1, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v2

    .line 215
    .local v2, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 216
    const-string v3, "command://music.speed.set"

    .line 217
    .local v3, "commandType":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v4

    const-string v5, "com.xiaopeng.musicradio"

    invoke-virtual {v4, v1, v5, v3, p1}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mediaSpecialControl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v4, 0x0

    return v4

    .line 220
    .end local v3    # "commandType":Ljava/lang/String;
    :cond_0
    const-string v3, "value"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    .line 221
    .local v3, "speed":D
    const-string v5, "SpeechMediaModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "speedSet data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " &speed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v5, "extra":Landroid/os/Bundle;
    const-string v6, "DoubleValue"

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 224
    const/4 v6, 0x5

    invoke-direct {p0, v1, v6, v5}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCustomAction(IILandroid/os/Bundle;)I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 225
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "displayId":I
    .end local v2    # "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .end local v3    # "speed":D
    .end local v5    # "extra":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 229
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public speedUp(Ljava/lang/String;)I
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 234
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 235
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    .line 236
    .local v1, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 237
    const-string v2, "command://music.speed.up"

    .line 238
    .local v2, "commandType":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    move-result-object v3

    const-string v4, "com.xiaopeng.musicradio"

    const-string v5, ""

    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mediaSpecialControl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v3, 0x0

    return v3

    .line 241
    .end local v2    # "commandType":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public stop(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v1

    .line 87
    .local v1, "currentStatus":I
    const-string v2, "SpeechMediaModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStopCommand displayId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " &currentStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-nez v1, :cond_0

    .line 89
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->executeCmd(II)I

    move-result v2

    return v2

    .line 91
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public subscribe()V
    .locals 2

    .line 45
    const-string v0, "SpeechMediaModel"

    const-string v1, "subscribe SpeechMediaModel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-class v0, Lcom/xiaopeng/speech/protocol/query/media/MediaQuery;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 47
    const-class v0, Lcom/xiaopeng/speech/protocol/node/media/MediaTriggerNode;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechMediaModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 48
    return-void
.end method
