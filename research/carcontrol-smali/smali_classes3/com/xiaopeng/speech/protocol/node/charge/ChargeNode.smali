.class public Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "ChargeNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHARGE_CLTC_MILEAGE:Ljava/lang/String; = "CLTC"

.field public static final CHARGE_DYNAMIC_MILEAGE:Ljava/lang/String; = "DYNAMIC"

.field public static final CHARGE_NEDC_MILEAGE:Ljava/lang/String; = "NEDC"

.field public static final CHARGE_WLTP_MILEAGE:Ljava/lang/String; = "WLTP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method protected onChangeCltcMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 284
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 285
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v1, "CLTC"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onChangeDynamicMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 294
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 295
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v1, "DYNAMIC"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onChangeNedcMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 237
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 238
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v1, "NEDC"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onChangeWltpMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 227
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 228
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v1, "WLTP"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onChargeTrunkPowerClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 255
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 257
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 258
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChargeTrunkPower(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onChargeTrunkPowerOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 247
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 248
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChargeTrunkPower(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeFull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 157
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 158
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeFull()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModePercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 140
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "target"

    .line 141
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 143
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, p1

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 148
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModePercent(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onModePercentSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 123
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "target"

    .line 124
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 126
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, p1

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 131
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModePercentSupport(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onModeSmartClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 197
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 198
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeSmartCloseSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 187
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 188
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartCloseSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeSmartOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 217
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 218
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOff()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeSmartOffSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 207
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 208
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOffSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeSmartOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 177
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 178
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOn()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onModeSmartOnSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 167
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 168
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOnSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPortOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 33
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 34
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onPortOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPortOpenSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 23
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 24
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onPortOpenSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRestart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 73
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 74
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onRestart()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onRestartSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 63
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 64
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onRestartSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 53
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 54
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStart()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStartSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 43
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 44
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStartSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 93
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 94
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStop()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStopSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 83
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 84
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStopSupport()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUiClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 113
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 114
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onUiClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onUiOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 103
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 104
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onUiOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setDischargeLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    .line 267
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "target"

    .line 268
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 270
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, p1

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    :goto_1
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 275
    aget-object v1, v0, p1

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->setDischargeLimit(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method
