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

    .line 30
    return-void
.end method

.method private getModeFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 1246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    const-string v0, ""

    return-object v0

    .line 1250
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v0, "modeJson":Lorg/json/JSONObject;
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1252
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1254
    :cond_1
    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1255
    .end local v0    # "modeJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1257
    const-string v1, ""

    return-object v1
.end method

.method private getPercent(Ljava/lang/String;)I
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 34
    const/16 v0, 0x64

    .line 36
    .local v0, "percent":I
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "percent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string v2, "percent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 42
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method


# virtual methods
.method protected onCheckUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    move-result-object v1

    .line 665
    .local v1, "userBookValue":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;
    if-eqz v0, :cond_0

    .line 666
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 667
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCheckUserBook(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;)V

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onCloseUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 685
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 686
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 687
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onCloseUserBook()V

    .line 686
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlComfortableDrivingModeClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.comfortable.driving.mode.close"
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1208
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1210
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlComfortableDrivingModeClose()V

    .line 1209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1213
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlComfortableDrivingModeOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.comfortable.driving.mode.open"
    .end annotation

    .line 1197
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1198
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1200
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlComfortableDrivingModeOpen()V

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlElectricCurtainClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.electric.curtain.close"
    .end annotation

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1188
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1190
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlSunShade(II)V

    .line 1189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1193
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlElectricCurtainOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.electric.curtain.open"
    .end annotation

    .line 1177
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1178
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1179
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1180
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v1, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlSunShade(II)V

    .line 1179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1183
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlLightLanguageOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.language.off"
    .end annotation

    .line 1227
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1228
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1229
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1230
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->setLluSw(Z)V

    .line 1229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1233
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlLightLanguageOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.language.on"
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1218
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1220
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->setLluSw(Z)V

    .line 1219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1223
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlLightResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.resume"
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 621
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 623
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlLightResume()V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlScissorLeftDoorOff()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.scissor.left.door.off"
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1138
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1140
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorLeftDoorOff()V

    .line 1139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1143
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlScissorLeftDoorOn()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.scissor.left.door.on"
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1118
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1120
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorLeftDoorOn()V

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1123
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlScissorLeftDoorPause()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.scissor.left.door.pause"
    .end annotation

    .line 1157
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1158
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1160
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorLeftDoorPause()V

    .line 1159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1163
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlScissorRightDoorOff()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.scissor.right.door.off"
    .end annotation

    .line 1147
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1148
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1150
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorRightDoorOff()V

    .line 1149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1153
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlScissorRightDoorOn()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.scissor.right.door.on"
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1128
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1130
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorRightDoorOn()V

    .line 1129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlScissorRightDoorPause()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.scissor.right.door.pause"
    .end annotation

    .line 1167
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1168
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1170
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlScissorRightDoorPause()V

    .line 1169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1173
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlSeatResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.resume"
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 632
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 634
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlSeatResume()V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlXpedalOff()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.xpedal.off"
    .end annotation

    .line 1107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1108
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1110
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlXpedalOff()V

    .line 1109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1113
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlXpedalOn()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.xpedal.on"
    .end annotation

    .line 1097
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1098
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1099
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1100
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onControlXpedalOn()V

    .line 1099
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1103
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onEnergyRecycleDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.energy.recycle.down"
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 372
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 374
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleDown()V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onEnergyRecycleHigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.energy.recycle.high"
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 332
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 333
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 334
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleHigh()V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onEnergyRecycleLow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.energy.recycle.low"
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 343
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 344
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleLow()V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onEnergyRecycleMedia(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.energy.recycle.medium"
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 352
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 353
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 354
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleMedia()V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onEnergyRecycleUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.energy.recycle.up"
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 364
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onEnergyRecycleUp()V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftChargePortClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.alternating.port.off"
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 946
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 947
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 948
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    .line 947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 951
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLeftChargePortOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.alternating.port.on"
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 956
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 957
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 958
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    .line 957
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 961
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLegDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.leg.down"
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 886
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 887
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 888
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegDown(I)V

    .line 887
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLegHighest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.leg.highest"
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 896
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 897
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 898
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegHighest(I)V

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLegLowest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.leg.lowest"
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 906
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 907
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 908
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegLowest(I)V

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 911
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLegUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.leg.up"
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 876
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 877
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 878
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLegUp(I)V

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessDown()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.brightness.down"
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1007
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1008
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1009
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessDown()V

    .line 1008
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessMax()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.brightness.max"
    .end annotation

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1018
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1019
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1020
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessMax()V

    .line 1019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessMin()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.brightness.min"
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1028
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1029
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1030
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessMin()V

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1033
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.brightness.set"
    .end annotation

    .line 986
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 987
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 988
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 989
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    new-instance v3, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    invoke-direct {v3, p2}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessSet(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereBrightnessUp()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.brightness.up"
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 997
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 998
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 999
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereBrightnessUp()V

    .line 998
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1002
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.color"
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 977
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 978
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 979
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    new-instance v3, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;

    invoke-direct {v3, p2}, Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereColor(Lcom/xiaopeng/speech/protocol/bean/base/CommandValue;)V

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.off"
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 745
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 746
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 747
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereOff(I)V

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAtmosphereOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.atmosphere.on"
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 735
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 737
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAtmosphereOn()V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 740
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.auto.off"
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 123
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAutoOff()V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.auto.on"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 113
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightAutoOn()V

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightHomeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.home.off"
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 52
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightHomeOff()V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightHomeOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.home.on"
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 62
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightHomeOn()V

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightLowOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.low.off"
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;

    move-result-object v1

    .line 71
    .local v1, "controlReason":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;
    if-eqz v0, :cond_0

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 73
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightLowOff(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/ControlReason;)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightLowOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.low.on"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 83
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightLowOn()V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightPositionOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.position.off"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightPositionOff()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightPositionOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.light.position.on"
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 93
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightPositionOn()V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightTopAutoOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 705
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 706
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 707
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopAutoOff()V

    .line 706
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightTopAutoOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 695
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 696
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 697
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopAutoOn()V

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightTopOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 725
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 726
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 727
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopOff()V

    .line 726
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 730
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLightTopOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 715
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 716
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 717
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLightTopOn()V

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLowVolumeOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.low.volume.off"
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 654
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 655
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 656
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLowVolumeOff()V

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onLowVolumeOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.low.volume.on"
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 643
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 644
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 645
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onLowVolumeOn()V

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMirrorRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.mirror.rear.close"
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 153
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMirrorRearClose()V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMirrorRearOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.mirror.rear.on"
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 163
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMirrorRearOn()V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMirrorRearSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.mirror.rear.set"
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 755
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 756
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 757
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMirrorRearSet(I)V

    .line 756
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onMistLightOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.rear.mist.light.off"
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 133
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMistLightOff()V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMistLightOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.rear.mist.light.on"
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 143
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onMistLightOn()V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesConservationSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 473
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 474
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 475
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesConservationSupport()V

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesDrivingConservation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.modes.driving.conservation"
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 284
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesDrivingConservation()V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesDrivingNormal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.modes.driving.normal"
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 294
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesDrivingNormal()V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesDrivingSport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.modes.driving.sport"
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 272
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 274
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesDrivingSport()V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesSportSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 463
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 465
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSportSupport()V

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesSteeringNormal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.modes.steering.normal"
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 314
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSteeringNormal()V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesSteeringSoft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.modes.steering.soft"
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 302
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 303
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 304
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSteeringSoft()V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModesSteeringSport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.modes.steering.sport"
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 324
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onModesSteeringSport()V

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenUserBook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 675
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 676
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 677
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onOpenUserBook()V

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnSeatBackrestBack()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.psn.seat.backrest.move.back"
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1058
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1059
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1060
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatBackrestBack()V

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnSeatBackrestForward()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.psn.seat.backrest.move.forward"
    .end annotation

    .line 1067
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1068
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1069
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1070
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatBackrestForward()V

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1073
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveBack()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.psn.seat.move.back"
    .end annotation

    .line 1077
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1078
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1079
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1080
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveBack()V

    .line 1079
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveDown()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.psn.seat.move.down"
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1048
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1049
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1050
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveDown()V

    .line 1049
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1053
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveForward()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.psn.seat.move.forward"
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1088
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1089
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1090
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveForward()V

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPsnSeatMoveUp()V
    .locals 3
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.psn.seat.move.up"
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1038
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1039
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1040
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onPsnSeatMoveUp()V

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightChargePortClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.direct.port.off"
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 936
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 937
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 938
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 941
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRightChargePortOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.direct.port.on"
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 926
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 927
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 928
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onChargePortControl(II)V

    .line 927
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatAdjust(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.adjust"
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 610
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;

    move-result-object v1

    .line 611
    .local v1, "value":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;
    if-eqz v0, :cond_0

    .line 612
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 613
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatAdjust(Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/SeatValue;)V

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 616
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatBackrestBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.backrest.move.back"
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 566
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v1

    .line 567
    .local v1, "speechParam":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v2

    .line 568
    .local v2, "changeValue":Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    if-eqz v0, :cond_0

    .line 569
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 570
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v4, v2, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatBackrestForemost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.backrest.move.foremost"
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 600
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 602
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestForemost()V

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatBackrestForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.backrest.move.forward"
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 578
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v1

    .line 579
    .local v1, "changeValue":Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    if-eqz v0, :cond_0

    .line 580
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 581
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatBackrestRear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.backrest.move.rear"
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 589
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v1

    .line 590
    .local v1, "speechParam":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    if-eqz v0, :cond_0

    .line 591
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 592
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatBackrestRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.back"
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 523
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v1

    .line 524
    .local v1, "changeValue":Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    if-eqz v0, :cond_0

    .line 525
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 526
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveBack(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.down"
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 493
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 494
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 495
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveDown()V

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveForemost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.foremost"
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 556
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 557
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 558
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveForemost()V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.forward"
    .end annotation

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 534
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/ChangeValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/ChangeValue;

    move-result-object v1

    .line 535
    .local v1, "changeValue":Lcom/xiaopeng/speech/protocol/bean/ChangeValue;
    if-eqz v0, :cond_0

    .line 536
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 537
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveForward(Lcom/xiaopeng/speech/protocol/bean/ChangeValue;)V

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveHighest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.highest"
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 505
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveHighest()V

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveLowest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.lowest"
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 513
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 514
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 515
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveLowest()V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveRear(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.rear"
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 545
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/bean/SpeechParam;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/SpeechParam;

    move-result-object v1

    .line 546
    .local v1, "speechParam":Lcom/xiaopeng/speech/protocol/bean/SpeechParam;
    if-eqz v0, :cond_0

    .line 547
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 548
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveRear(Lcom/xiaopeng/speech/protocol/bean/SpeechParam;)V

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatMoveUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.move.up"
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 483
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 484
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 485
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatMoveUp()V

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onSeatRestore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.seat.restore"
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 916
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 917
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 918
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onSeatRestore()V

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTirePressureShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.query.tire.pressure"
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 966
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 967
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 968
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTirePressureShow()V

    .line 967
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 971
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTrunkClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.trunk.close"
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 244
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTrunkClose()V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTrunkOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.trunk.open"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 173
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTrunkOpen()V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onTrunkUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.trunk.unlock"
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 825
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 826
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 827
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onTrunkUnlock()V

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowDriverClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.driver.close"
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 183
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v3, v1, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowDriverOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.driver.open"
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 192
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 193
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v1, v1, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowFrontClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.front.close"
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 433
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 434
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x7

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowFrontOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.front.open"
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 423
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 424
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x7

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowLeftRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.left.rear.close"
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 413
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 414
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x2

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowLeftRearOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.left.rear.open"
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 402
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 403
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 404
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x2

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowPassengerClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.passenger.close"
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 203
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v4, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowPassengerOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.passenger.open"
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 212
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 213
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v3, v5, v1, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.rear.close"
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 452
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 453
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 454
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/16 v3, 0x8

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowRearOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.rear.open"
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 442
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 443
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 444
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/16 v4, 0x8

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 443
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowRightRearClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.right.rear.close"
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 392
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 393
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 394
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x3

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowRightRearOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.right.rear.open"
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 382
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 383
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 384
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x3

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.windows.close"
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 223
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x6

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsLeftClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.left.close"
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 835
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 837
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x4

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsLeftOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.left.open"
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 845
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 846
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 847
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x4

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 846
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 850
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.windows.open"
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 231
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 232
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 233
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x6

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 232
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsRightClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.right.close"
    .end annotation

    .line 854
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 855
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 856
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 858
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v3, 0x5

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5, v4}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 856
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsRightOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.window.right.open"
    .end annotation

    .line 865
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 866
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 867
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 868
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    const/4 v4, 0x5

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getPercent(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v1, v5}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsControl(III)V

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsVentilateOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.windows.ventilate.off"
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 263
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 264
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsVentilateOff()V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWindowsVentilateOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.windows.ventilate.on"
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 254
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWindowsVentilateOn()V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWiperHigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.wiper.high"
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 795
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 796
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 797
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperHigh()V

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWiperMedium(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.wiper.medium"
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 805
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 806
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 807
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperMedium()V

    .line 806
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWiperSlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.wiper.slow"
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 785
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 786
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 787
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSlow()V

    .line 786
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWiperSpeedDown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.wiper.speed.down"
    .end annotation

    .line 774
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 775
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 776
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 777
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSpeedDown()V

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWiperSpeedUp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.wiper.speed.up"
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 765
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 766
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 767
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSpeedUp()V

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 770
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onWiperSuperhigh(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.wiper.superhigh"
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 815
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 816
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 817
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->onWiperSuperhigh()V

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 820
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected setCapsuleUniversal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://control.capsule.universal.set"
    .end annotation

    .line 1237
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 1238
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1240
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;

    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolNode;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/carcontrol/CarcontrolListener;->setCapsuleUniversal(Ljava/lang/String;)V

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1243
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
