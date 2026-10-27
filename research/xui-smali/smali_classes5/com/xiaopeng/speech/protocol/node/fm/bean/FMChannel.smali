.class public Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;
.super Ljava/lang/Object;
.source "FMChannel.java"


# instance fields
.field private mFMName:Ljava/lang/String;

.field private mFMRadio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;
    .locals 3
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;-><init>()V

    .line 26
    .local v0, "fmChannel":Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;
    const/4 v1, 0x0

    .line 28
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 29
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->setFMName(Ljava/lang/String;)V

    .line 30
    const-string v2, "fm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const-string v2, "fm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->setFMRadio(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 33
    :catch_1
    move-exception v2

    .line 34
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 37
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    nop

    .line 38
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getFMName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMName:Ljava/lang/String;

    return-object v0
.end method

.method public getFMRadio()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMRadio:F

    return v0
.end method

.method public setFMName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setFMRadio(F)V
    .locals 0
    .param p1, "FMRadio"    # F

    .line 57
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMRadio:F

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FMChannel{FMRadio=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMRadio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
