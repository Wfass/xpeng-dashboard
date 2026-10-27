.class public Lcom/xiaopeng/speech/protocol/node/system/SystemNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "SystemNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/system/SystemListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAVI_VOICE_DATA:Ljava/lang/String; = "{\"stream_type\":9}"

.field private static final STREAM_MUSIC:Ljava/lang/String; = "3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBluetoothOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 125
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 126
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBluetoothOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBluetoothOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 135
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 136
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBluetoothOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBrightnessDownPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 393
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 394
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 396
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 397
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBrightnessSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 276
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 277
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 279
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 280
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBrightnessUpPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 254
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 255
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 257
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 258
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onHeadsetMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 615
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 618
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mode"

    .line 619
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 621
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 624
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 625
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onHeadsetMode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 320
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 322
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 323
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessDownPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 427
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 428
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 430
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 431
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessDownPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 309
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 311
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 312
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 330
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 332
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 333
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 287
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 288
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 291
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessSetPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 416
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 417
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 419
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 420
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 300
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 301
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onIcmBrightnessUpPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 405
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 406
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 408
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 409
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onIcmBrightnessUpPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenSettingPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 373
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 375
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 376
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onOpenSettingPage()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenWifiPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 383
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 385
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 386
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onOpenWifiPage()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 483
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 485
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 486
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessAutoOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 473
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 475
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 476
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessAutoOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 45
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 46
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 35
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 36
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 55
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 56
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessSetPercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 265
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p1

    .line 266
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 268
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 269
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onBrightnessSetPercent(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 458
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 460
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 461
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessStop()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenBrightnessUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 25
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 26
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenBrightnessUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenModeClean(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 95
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 96
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenModeClean()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 438
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 440
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 441
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onScreenOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 450
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 451
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onScreenOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSoundEffectField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 546
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 549
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "direction"

    .line 550
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 552
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 555
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 556
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectField(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onSoundEffectMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 563
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 566
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "mode"

    .line 567
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 569
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 572
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 573
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectMode(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onSoundEffectScene(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 580
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 583
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "scene"

    .line 584
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 586
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 589
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 590
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectScene(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onSoundEffectStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 597
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 600
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "style"

    .line 601
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 603
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 606
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 607
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onSoundEffectStyle(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onThemeModeAuto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 65
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 66
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onThemeModeAuto()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onThemeModeDay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 75
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 76
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onThemeModeDay()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onThemeModeNight(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 85
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 86
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onThemeModeNight()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 165
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 168
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 169
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeDown(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "3"

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 179
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 180
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 182
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 185
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 186
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeMax(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onVolumeMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "3"

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 196
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 197
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 199
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 202
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 203
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeMin(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onVolumeMute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "3"

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 213
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 214
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 216
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 219
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 220
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeMute(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onVolumeNotificationDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 534
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 536
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 537
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeNotificationMax(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 493
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 495
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 496
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationMax()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeNotificationMedium(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 513
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 515
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 516
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationMedium()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeNotificationMin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 503
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 505
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 506
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationMin()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeNotificationUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 523
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 525
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 526
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeNotificationUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 246
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 247
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeResume()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 157
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 158
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeSet(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVolumeUnmute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "3"

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 230
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "stream_type"

    .line 231
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 233
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 236
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 237
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_2

    :cond_0
    move-object v3, p1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeUnmute(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onVolumeUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 143
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 146
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 147
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onVolumeUp(Lcom/xiaopeng/speech/protocol/bean/VolumeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWifiOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 105
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 106
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onWifiOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWifiOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/system/SystemNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 115
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 116
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/system/SystemListener;->onWifiOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
