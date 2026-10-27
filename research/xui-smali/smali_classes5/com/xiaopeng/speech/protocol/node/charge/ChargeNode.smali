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

    .line 16
    return-void
.end method


# virtual methods
.method protected onChangeCltcMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.change.cltc.mileage"
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 285
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v3, "CLTC"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onChangeDynamicMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.change.dynamic.mileage"
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 295
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v3, "DYNAMIC"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onChangeNedcMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.change.nedc.mileage"
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 236
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 238
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v3, "NEDC"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onChangeWltpMileageMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.change.wltp.mileage"
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 228
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const-string v3, "WLTP"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChangeMileageMode(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onChargeTrunkPowerClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.trankpower.power.off"
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 256
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 258
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChargeTrunkPower(Z)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onChargeTrunkPowerOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.trankpower.power.on"
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 246
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 247
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 248
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onChargeTrunkPower(Z)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeFull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.mode.full"
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 156
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 158
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeFull()V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModePercent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.mode.percent"
    .end annotation

    .line 138
    const/4 v0, 0x0

    move v1, v0

    .line 140
    .local v1, "target":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "target"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 144
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 147
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 148
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModePercent(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onModePercentSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    move v1, v0

    .line 123
    .local v1, "target":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "target"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 127
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 130
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 131
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModePercentSupport(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeSmartClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.mode.smart.close"
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 196
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 198
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartClose()V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeSmartCloseSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 188
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartCloseSupport()V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeSmartOff(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.mode.smart.off"
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 217
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 218
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOff()V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeSmartOffSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 208
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOffSupport()V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeSmartOn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.mode.smart.on"
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 178
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOn()V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onModeSmartOnSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 168
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onModeSmartOnSupport()V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPortOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.port.open"
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 34
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onPortOpen()V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPortOpenSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 23
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 24
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onPortOpenSupport()V

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRestart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.restart"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onRestart()V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onRestartSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 64
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onRestartSupport()V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.start"
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 54
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStart()V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onStartSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 44
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStartSupport()V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.stop"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 94
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStop()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onStopSupport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 84
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onStopSupport()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onUiClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.ui.close"
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 114
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onUiClose()V

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onUiOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.ui.open"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 104
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->onUiOpen()V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected setDischargeLimit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://charge.discharge.limit.value.set"
    .end annotation

    .line 265
    const/4 v0, 0x0

    move v1, v0

    .line 267
    .local v1, "target":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "target"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 271
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/charge/ChargeNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 273
    .local v2, "listenerList":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 274
    nop

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 275
    aget-object v3, v2, v0

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/charge/ChargeListener;->setDischargeLimit(I)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
