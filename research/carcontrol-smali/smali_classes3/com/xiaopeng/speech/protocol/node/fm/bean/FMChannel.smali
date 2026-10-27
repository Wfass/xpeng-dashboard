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

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;
    .locals 3

    const-string v0, "fm"

    .line 25
    new-instance v1, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;-><init>()V

    .line 28
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "name"

    .line 29
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->setFMName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->setFMRadio(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 34
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
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

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMName:Ljava/lang/String;

    return-void
.end method

.method public setFMRadio(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMRadio:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FMChannel{FMRadio=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/fm/bean/FMChannel;->mFMRadio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
