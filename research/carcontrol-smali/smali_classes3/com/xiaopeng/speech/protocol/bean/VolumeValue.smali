.class public Lcom/xiaopeng/speech/protocol/bean/VolumeValue;
.super Ljava/lang/Object;
.source "VolumeValue.java"


# static fields
.field private static final STREAM_MUSIC:Ljava/lang/String; = "3"


# instance fields
.field private adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

.field private streamType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/VolumeValue;
    .locals 4

    const-string v0, "3"

    .line 18
    new-instance v1, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    invoke-direct {v1}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;-><init>()V

    .line 21
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "stream_type"

    .line 22
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v1, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->streamType:I

    const-string p0, "change_value"

    .line 24
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object p0

    iput-object p0, v1, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getAdjustValue()Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->streamType:I

    return v0
.end method

.method public setAdjustValue(Lcom/xiaopeng/speech/protocol/bean/AdjustValue;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    return-void
.end method

.method public setStreamType(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->streamType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeValue{streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adjustValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
