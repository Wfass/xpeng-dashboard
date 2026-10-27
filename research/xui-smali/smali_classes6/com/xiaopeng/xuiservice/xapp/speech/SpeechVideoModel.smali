.class public Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;
.super Lcom/xiaopeng/speech/protocol/SpeechModel;
.source "SpeechVideoModel.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/video/VideoListener;
.implements Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechVideoModel"


# instance fields
.field private mVideoManager:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

.field private mVideoPlayCommandBean:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/SpeechModel;-><init>()V

    .line 43
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->mVideoManager:Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->executeCommand(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private executeCommand(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;

    .line 490
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCommand command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$25;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$25;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->play(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 501
    :cond_0
    return-void
.end method

.method private getPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 570
    const-string v0, ""

    .line 571
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 574
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "package_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 577
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 579
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private setBarrageClose(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 392
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBarrageClose data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$22;

    invoke-direct {v2, p0, p2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$22;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;Z)V

    invoke-virtual {v1, v0, p2, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->setBarrageClose(Ljava/lang/String;ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 403
    :cond_0
    return-void
.end method


# virtual methods
.method public onBarrageClose(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 383
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->setBarrageClose(Ljava/lang/String;Z)V

    .line 384
    return-void
.end method

.method public onBarrageOpen(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->setBarrageClose(Ljava/lang/String;Z)V

    .line 389
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 596
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->leaveTrigger()V

    .line 597
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideTransferConfirmDialog()V

    .line 598
    const-string v0, "SpeechVideoModel"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public onSubmit()V
    .locals 3

    .line 584
    const-string v0, "SpeechVideoModel"

    const-string v1, "onSubmit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->leaveTrigger()V

    .line 586
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideTransferConfirmDialog()V

    .line 587
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->mVideoPlayCommandBean:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->mVideoPlayCommandBean:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->access$100(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->mVideoPlayCommandBean:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->access$200(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->mVideoPlayCommandBean:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    .line 589
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;->access$300(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;)Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->executeCommand(ILjava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_0
    return-void
.end method

.method public onVideoAudioMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 296
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoAudioMode data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "mode"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "mode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 303
    const-string v3, "media"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$16;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$16;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v3, v1, v4}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->setMediaPlayMode(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    goto :goto_0

    .line 310
    :cond_0
    const-string/jumbo v3, "video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$17;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$17;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v3, v1, v4}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->setVideoPlayMode(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "mode":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 323
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_1
    return-void
.end method

.method public onVideoBackward(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 118
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoBackward data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$5;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$5;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->backward(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onVideoClarityDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 260
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoClarityDown data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$14;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$14;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->clarityDown(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onVideoClaritySet(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 274
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoClaritySet data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "value"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "claritySet":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 281
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$15;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$15;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->claritySet(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "claritySet":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 292
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoClarityUP(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 246
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoClarityUP data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$13;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$13;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->clarityUP(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onVideoCollect(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 327
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCollect data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$18;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$18;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->collect(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 337
    :cond_0
    return-void
.end method

.method public onVideoCollectCancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 341
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCollectCancel data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$19;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$19;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->collectCancel(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 351
    :cond_0
    return-void
.end method

.method public onVideoDemand(Ljava/lang/String;)V
    .locals 23
    .param p1, "data"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 421
    move-object/from16 v8, p1

    const-string v0, "SpeechVideoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoDemand data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 424
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "object":Lorg/json/JSONObject;
    const-string v2, "package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "command"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    .line 427
    .local v9, "command":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;->getTargetDisplayId(Lorg/json/JSONObject;)I

    move-result v3

    move v7, v3

    .line 428
    .local v7, "displayId":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getTargetApp(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 431
    .end local v2    # "pkgName":Ljava/lang/String;
    .local v6, "pkgName":Ljava/lang/String;
    :cond_0
    move-object v6, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->checkAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    move-object/from16 v18, v0

    move-object v0, v6

    move v10, v7

    goto/16 :goto_3

    .line 436
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isScreenOpened(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setScreenOpened(I)I

    move-result v2

    .line 438
    .local v2, "result":I
    if-nez v2, :cond_2

    .line 439
    const-string v3, "gui.video.app.demand"

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    return-void

    .line 444
    .end local v2    # "result":I
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v11, v6

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppCheckPolicy;->checkAppStartStatus(Ljava/lang/String;ZIZZ)I

    move-result v2

    move v10, v2

    .line 445
    .local v10, "startStatus":I
    if-eqz v10, :cond_6

    .line 446
    invoke-static {v10, v6, v7}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;->convertStartCode(ILjava/lang/String;I)I

    move-result v2

    move v11, v2

    .line 447
    .local v11, "videoDemandCode":I
    const-string v2, "gui.video.app.demand"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const/16 v2, 0x10

    if-ne v10, v2, :cond_5

    .line 449
    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    invoke-direct {v2, v1, v7, v6, v9}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->mVideoPlayCommandBean:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$VideoPlayCommandBean;

    .line 450
    move-object v12, v6

    .line 451
    .local v12, "innerPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object v13, v2

    .line 452
    .local v13, "context":Landroid/content/Context;
    const v2, 0x7f0e0080

    const v3, 0x7f0e007d

    if-nez v7, :cond_3

    .line 453
    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    move v14, v4

    .line 454
    .local v14, "currentScreenMsgId":I
    if-nez v7, :cond_4

    .line 455
    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    move v15, v2

    .line 456
    .local v15, "otherScreenMsgId":I
    invoke-static {v14}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    .line 457
    .local v16, "currentScreenMsg":Ljava/lang/String;
    invoke-static {v15}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    .line 458
    .local v17, "otherScreenMsg":Ljava/lang/String;
    const v2, 0x7f0e0084

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v5, 0x1

    aput-object v16, v3, v5

    invoke-virtual {v13, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "ttsText":Ljava/lang/String;
    const v2, 0x7f0e007f

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v16, v5, v4

    invoke-virtual {v13, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "positiveBtnText":Ljava/lang/String;
    const v4, 0x7f0e0042

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 461
    .local v5, "baseOkText":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v0

    const-string/jumbo v0, "|"

    .line 461
    .end local v0    # "object":Lorg/json/JSONObject;
    .local v18, "object":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 462
    .local v4, "okText":Ljava/lang/String;
    const v0, 0x7f0e003f

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/util/ResourceUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v5

    move-object v5, v0

    .line 464
    .local v5, "cancelText":Ljava/lang/String;
    .local v19, "baseOkText":Ljava/lang/String;
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object v2, v0

    .line 464
    .end local v2    # "positiveBtnText":Ljava/lang/String;
    .local v21, "positiveBtnText":Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v6, v20

    .line 464
    .end local v6    # "pkgName":Ljava/lang/String;
    .local v0, "pkgName":Ljava/lang/String;
    move/from16 v22, v10

    move v10, v7

    move-object v7, v8

    .line 464
    .end local v7    # "displayId":I
    .local v10, "displayId":I
    .local v22, "startStatus":I
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;->sendTrigger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 465
    const-string v2, "SpeechVideoModel"

    const-string v6, "send ThirdAppTriggerNode Trigger "

    invoke-static {v2, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v2

    const/4 v6, 0x0

    new-instance v7, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;

    invoke-direct {v7, v1, v10, v12, v9}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$24;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6, v10, v7}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V

    .line 466
    .end local v3    # "ttsText":Ljava/lang/String;
    .end local v4    # "okText":Ljava/lang/String;
    .end local v5    # "cancelText":Ljava/lang/String;
    .end local v12    # "innerPkgName":Ljava/lang/String;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "currentScreenMsgId":I
    .end local v15    # "otherScreenMsgId":I
    .end local v16    # "currentScreenMsg":Ljava/lang/String;
    .end local v17    # "otherScreenMsg":Ljava/lang/String;
    .end local v19    # "baseOkText":Ljava/lang/String;
    .end local v21    # "positiveBtnText":Ljava/lang/String;
    goto :goto_2

    .line 480
    .end local v18    # "object":Lorg/json/JSONObject;
    .end local v22    # "startStatus":I
    .local v0, "object":Lorg/json/JSONObject;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "displayId":I
    .local v10, "startStatus":I
    :cond_5
    move-object/from16 v18, v0

    move-object v0, v6

    move/from16 v22, v10

    move v10, v7

    .line 480
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "displayId":I
    .local v0, "pkgName":Ljava/lang/String;
    .local v10, "displayId":I
    .restart local v18    # "object":Lorg/json/JSONObject;
    .restart local v22    # "startStatus":I
    :goto_2
    return-void

    .line 482
    .end local v11    # "videoDemandCode":I
    .end local v18    # "object":Lorg/json/JSONObject;
    .end local v22    # "startStatus":I
    .local v0, "object":Lorg/json/JSONObject;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "displayId":I
    .local v10, "startStatus":I
    :cond_6
    move-object/from16 v18, v0

    move-object v0, v6

    move/from16 v22, v10

    move v10, v7

    .line 482
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "displayId":I
    .local v0, "pkgName":Ljava/lang/String;
    .local v10, "displayId":I
    .restart local v18    # "object":Lorg/json/JSONObject;
    .restart local v22    # "startStatus":I
    invoke-direct {v1, v10, v0, v9}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->executeCommand(ILjava/lang/String;Ljava/lang/String;)V

    .line 485
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v9    # "command":Ljava/lang/String;
    .end local v10    # "displayId":I
    .end local v18    # "object":Lorg/json/JSONObject;
    .end local v22    # "startStatus":I
    goto :goto_4

    .line 432
    .local v0, "object":Lorg/json/JSONObject;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "displayId":I
    .restart local v9    # "command":Ljava/lang/String;
    :cond_7
    move-object/from16 v18, v0

    move-object v0, v6

    move v10, v7

    .line 432
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "displayId":I
    .local v0, "pkgName":Ljava/lang/String;
    .restart local v10    # "displayId":I
    .restart local v18    # "object":Lorg/json/JSONObject;
    :goto_3
    const-string v2, "gui.video.app.demand"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    return-void

    .line 483
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v9    # "command":Ljava/lang/String;
    .end local v10    # "displayId":I
    .end local v18    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 487
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_8
    :goto_4
    return-void
.end method

.method public onVideoEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 232
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEnd data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$12;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$12;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->end(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 242
    :cond_0
    return-void
.end method

.method public onVideoForward(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 104
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoForward data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->forward(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onVideoNext(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 68
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoNext data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->next(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onVideoPause(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 154
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoPause data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$7;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$7;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->pause(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 164
    :cond_0
    return-void
.end method

.method public onVideoPrev(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 54
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoPrev data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->prev(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onVideoResume(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 168
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoResume data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$8;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->resume(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onVideoSearch(Ljava/lang/String;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/String;

    .line 505
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSearch data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 508
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "object":Lorg/json/JSONObject;
    const-string v1, "display_location"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 510
    .local v1, "screenId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningScenario(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 511
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getRunningScenario(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "normal_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    const-string v2, "SpeechVideoModel"

    const-string v3, "MODE DENIED return"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v2, "gui.video.search"

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    return-void

    .line 516
    :cond_0
    if-nez v1, :cond_2

    .line 517
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getCurXPilotStatus()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getAppXPilotLimitEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    const-string v2, "SpeechVideoModel"

    const-string v3, "NGP FORBID return"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v2, "gui.video.search"

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    return-void

    .line 522
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->getAppUsedLimitEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->get()Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/policy/XAppStartManager;->isInPGearLevel()Z

    move-result v2

    if-nez v2, :cond_2

    .line 523
    const-string v2, "SpeechVideoModel"

    const-string v3, "GEAR LIMITED return"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v2, "gui.video.search"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    return-void

    .line 528
    :cond_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isScreenOpened(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 529
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setScreenOpened(I)I

    move-result v2

    .line 530
    .local v2, "result":I
    const-string v3, "SpeechVideoModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCREEN LOCKED return result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-nez v2, :cond_3

    .line 532
    const-string v3, "gui.video.app.demand"

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->replyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    return-void

    .line 536
    .end local v2    # "result":I
    :cond_3
    const-string v2, "command"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "command":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 538
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 539
    .local v3, "commandObject":Lorg/json/JSONObject;
    const-string v4, "name"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 540
    .local v7, "showName":Ljava/lang/String;
    const-string v4, "artist_name"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 541
    .local v8, "artistName":Ljava/lang/String;
    const-string v4, "category"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 542
    .local v9, "categoryName":Ljava/lang/String;
    const-string v4, "genre"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 543
    .local v10, "genreName":Ljava/lang/String;
    const-string v4, "area"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 544
    .local v11, "areaName":Ljava/lang/String;
    const-string v4, "raw"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 545
    .local v12, "raw":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->get()Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    move-result-object v6

    new-instance v13, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$26;

    invoke-direct {v13, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$26;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;I)V

    invoke-virtual/range {v6 .. v13}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->queryMediaSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "screenId":I
    .end local v2    # "command":Ljava/lang/String;
    .end local v3    # "commandObject":Lorg/json/JSONObject;
    .end local v7    # "showName":Ljava/lang/String;
    .end local v8    # "artistName":Ljava/lang/String;
    .end local v9    # "categoryName":Ljava/lang/String;
    .end local v10    # "genreName":Ljava/lang/String;
    .end local v11    # "areaName":Ljava/lang/String;
    .end local v12    # "raw":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 567
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_0
    return-void
.end method

.method public onVideoSet(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 82
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSet data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "value"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 88
    .local v2, "videoSet":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v3

    new-instance v4, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$3;

    invoke-direct {v4, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->set(Ljava/lang/String;ILcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "videoSet":I
    :cond_0
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoSettime(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 132
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSetTime data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "time"

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 138
    .local v2, "videoSetTime":D
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$6;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$6;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->setTime(Ljava/lang/String;DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "videoSetTime":D
    :cond_0
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoSkipAll(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 407
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSkipAll data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$23;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$23;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->skipAllModeSet(Ljava/lang/String;ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 417
    :cond_0
    return-void
.end method

.method public onVideoSkipBegin(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 355
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSkipBegin data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$20;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$20;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->skipBegin(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 365
    :cond_0
    return-void
.end method

.method public onVideoSkipEnd(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 369
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSkipEnd data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$21;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$21;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->skipEnd(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onVideoSpeedDown(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 196
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSpeedDown data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$10;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$10;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->speedDown(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onVideoSpeedSet(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .line 210
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSpeedSet data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "package_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "speed"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 216
    .local v2, "videoSpeedSet":D
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$11;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$11;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->speedSet(Ljava/lang/String;DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "videoSpeedSet":D
    :cond_0
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 228
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoSpeedUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 182
    const-string v0, "SpeechVideoModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSpeedUp data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->getPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$9;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel$9;-><init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->speedUp(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 192
    :cond_0
    return-void
.end method

.method public subscribe()V
    .locals 2

    .line 47
    const-string v0, "SpeechVideoModel"

    const-string v1, "subscribe SpeechVideoModel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-class v0, Lcom/xiaopeng/speech/protocol/node/video/VideoNode;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 49
    const-class v0, Lcom/xiaopeng/speech/protocol/node/app/ThirdAppTriggerNode;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechVideoModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 50
    return-void
.end method
