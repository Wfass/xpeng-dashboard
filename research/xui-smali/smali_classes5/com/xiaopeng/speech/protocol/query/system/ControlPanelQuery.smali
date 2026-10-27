.class public Lcom/xiaopeng/speech/protocol/query/system/ControlPanelQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "ControlPanelQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method protected onBlueToothVolumeSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "bluetooth.volume.set"
    .end annotation

    .line 16
    const/4 v0, 0x0

    move v1, v0

    .line 18
    .local v1, "type":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 22
    .end local v2    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 23
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/ControlPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;->onBlueToothVolumeSet(I)I

    move-result v0

    return v0
.end method

.method protected onBlueToothVolumeSetValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "bluetooth.volume.set.value"
    .end annotation

    .line 28
    const/4 v0, 0x0

    move v1, v0

    .line 30
    .local v1, "value":I
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "value"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 34
    .end local v2    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/system/ControlPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;->onBlueToothVolumeSetValue(I)I

    move-result v0

    return v0
.end method
