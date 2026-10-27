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

    return-void
.end method


# virtual methods
.method protected onBlueToothVolumeSet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p1, 0x0

    .line 18
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "type"

    .line 19
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 21
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 23
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/ControlPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;->onBlueToothVolumeSet(I)I

    move-result p1

    return p1
.end method

.method protected onBlueToothVolumeSetValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p1, 0x0

    .line 30
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 31
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 33
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/system/ControlPanelQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/system/IControlPanelCaller;->onBlueToothVolumeSetValue(I)I

    move-result p1

    return p1
.end method
