.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "CarcontrolNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_PERCENT:Ljava/lang/String; = "percent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method

.method private getModeFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "mode"

    .line 1246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 1250
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1252
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 1256
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method private getPercent(Ljava/lang/String;)I
    .locals 3

    const-string v0, "percent"

    const/16 v1, 0x64

    .line 36
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method


# virtual methods
.method protected onCheckUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 663
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 664
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 666
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 667
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCloseUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 684
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 686
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 687
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCloseUserBook()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlComfortableDrivingModeClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1207
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1209
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1210
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlComfortableDrivingModeClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlComfortableDrivingModeOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1197
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1199
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1200
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlComfortableDrivingModeOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlElectricCurtainClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1187
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1189
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1190
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlSunShade(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlElectricCurtainOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1177
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 1179
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1180
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlSunShade(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlLightLanguageOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1227
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 1229
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1230
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->setLluSw(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlLightLanguageOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1217
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1219
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 1220
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->setLluSw(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlLightResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 620
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 622
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 623
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlLightResume()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlScissorLeftDoorOff()V
    .locals 3

    .line 1137
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1139
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1140
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorLeftDoorOff()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlScissorLeftDoorOn()V
    .locals 3

    .line 1117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1119
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1120
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorLeftDoorOn()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlScissorLeftDoorPause()V
    .locals 3

    .line 1157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1159
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1160
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorLeftDoorPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlScissorRightDoorOff()V
    .locals 3

    .line 1147
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1149
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1150
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorRightDoorOff()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlScissorRightDoorOn()V
    .locals 3

    .line 1127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1129
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1130
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorRightDoorOn()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlScissorRightDoorPause()V
    .locals 3

    .line 1167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1169
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1170
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorRightDoorPause()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlSeatResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 630
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 633
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 634
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlSeatResume()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlXpedalOff()V
    .locals 3

    .line 1107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1109
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1110
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlXpedalOff()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlXpedalOn()V
    .locals 3

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1099
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1100
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlXpedalOn()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnergyRecycleDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 371
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 373
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 374
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnergyRecycleHigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 333
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 334
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleHigh()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnergyRecycleLow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 343
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 344
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleLow()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnergyRecycleMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 351
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 353
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 354
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleMedia()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onEnergyRecycleUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 361
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 363
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 364
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftChargePortClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 945
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 947
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 948
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x1

    invoke-interface {v1, p2, v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLeftChargePortOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 955
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 957
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 958
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLegDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 885
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 887
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 888
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegDown(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLegHighest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 895
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 897
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 898
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegHighest(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLegLowest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 905
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 907
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 908
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegLowest(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLegUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 875
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 877
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 878
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegUp(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessDown()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1008
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1009
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessDown()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessMax()V
    .locals 3

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1019
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1020
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessMax()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessMin()V
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1029
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1030
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessMin()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 986
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 988
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 989
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    new-instance v2, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    invoke-direct {v2, p2}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessUp()V
    .locals 3

    .line 996
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 998
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 999
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessUp()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 976
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 978
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 979
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    new-instance v2, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    invoke-direct {v2, p2}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 744
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 746
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 747
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereOff(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAtmosphereOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 734
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 736
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 737
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 122
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 123
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAutoOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 112
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 113
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAutoOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightHomeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 51
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 52
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightHomeOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightHomeOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 61
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 62
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightHomeOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightLowOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 70
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 73
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightLowOff(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightLowOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 82
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 83
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightLowOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightPositionOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 102
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 103
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightPositionOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightPositionOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 92
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 93
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightPositionOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightTopAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 704
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 706
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 707
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopAutoOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightTopAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 694
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 696
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 697
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopAutoOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightTopOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 724
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 726
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 727
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLightTopOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 714
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 716
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 717
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLowVolumeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 653
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 655
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 656
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLowVolumeOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLowVolumeOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 642
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 644
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 645
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLowVolumeOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMirrorRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 152
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 153
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMirrorRearClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMirrorRearOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 162
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 163
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMirrorRearOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMirrorRearSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 754
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 756
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 757
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMirrorRearSet(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMistLightOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 132
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 133
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMistLightOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMistLightOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 142
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 143
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMistLightOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesConservationSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 472
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 474
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 475
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesConservationSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesDrivingConservation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 283
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 284
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesDrivingConservation()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesDrivingNormal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 293
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 294
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesDrivingNormal()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesDrivingSport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 273
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 274
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesDrivingSport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesSportSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 462
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 464
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 465
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSportSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesSteeringNormal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 313
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 314
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSteeringNormal()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesSteeringSoft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 303
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 304
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSteeringSoft()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModesSteeringSport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 323
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 324
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSteeringSport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 674
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 676
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 677
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onOpenUserBook()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnSeatBackrestBack()V
    .locals 3

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1059
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1060
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatBackrestBack()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnSeatBackrestForward()V
    .locals 3

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1069
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1070
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatBackrestForward()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveBack()V
    .locals 3

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1079
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1080
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveBack()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveDown()V
    .locals 3

    .line 1047
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1049
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1050
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveDown()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveForward()V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1089
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1090
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveForward()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveUp()V
    .locals 3

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1039
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1040
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveUp()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightChargePortClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 935
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 937
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 938
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRightChargePortOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 925
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 927
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 928
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatAdjust(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 609
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 610
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 612
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 613
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatAdjust(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatBackrestBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 565
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 566
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v0

    .line 567
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 569
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 570
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2, p2, v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatBackrestForemost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 599
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 601
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 602
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestForemost()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatBackrestForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 577
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 578
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 580
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 581
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatBackrestRear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 588
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 589
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 591
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 592
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 522
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 523
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 525
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 526
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 492
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 494
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 495
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveForemost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 555
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 557
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 558
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveForemost()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 533
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 534
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 536
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 537
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveHighest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 502
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 504
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 505
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveHighest()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveLowest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 512
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 514
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 515
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveLowest()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveRear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 544
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 545
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 547
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 548
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatMoveUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 482
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 484
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 485
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSeatRestore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 915
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 917
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 918
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatRestore()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTirePressureShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 965
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 967
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 968
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTirePressureShow()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTrunkClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 243
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 244
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTrunkClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTrunkOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 172
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 173
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTrunkOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onTrunkUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 824
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 826
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 827
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTrunkUnlock()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowDriverClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 182
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 183
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v0, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowDriverOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 193
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v0, v0, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowFrontClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 433
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 434
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x7

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowFrontOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 423
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 424
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x7

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowLeftRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 413
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 414
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x2

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowLeftRearOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 401
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 403
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 404
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x2

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowPassengerClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 202
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 203
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v3, v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowPassengerOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 212
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 213
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 451
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 453
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 454
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/16 v2, 0x8

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowRearOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 443
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 444
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/16 v3, 0x8

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowRightRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 391
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 394
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x3

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowRightRearOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 381
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 384
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x3

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 222
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 223
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x6

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsLeftClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 834
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 836
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 837
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x4

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsLeftOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 844
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 846
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 847
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x4

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 232
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 233
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x6

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsRightClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 854
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 856
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 858
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v2, 0x5

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsRightOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 865
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 867
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 868
    aget-object v2, p1, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x5

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsVentilateOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 263
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 264
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsVentilateOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWindowsVentilateOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 253
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 254
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsVentilateOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWiperHigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 794
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 796
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 797
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperHigh()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWiperMedium(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 804
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 806
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 807
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperMedium()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWiperSlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 784
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 786
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 787
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSlow()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWiperSpeedDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 774
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 776
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 777
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSpeedDown()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWiperSpeedUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 764
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 766
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 767
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSpeedUp()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onWiperSuperhigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 814
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 816
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 817
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSuperhigh()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setCapsuleUniversal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1237
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1239
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1240
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->setCapsuleUniversal(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
