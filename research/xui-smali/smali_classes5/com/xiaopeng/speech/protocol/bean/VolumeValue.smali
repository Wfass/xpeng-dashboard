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
    .param p0, "data"    # Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;-><init>()V

    .line 21
    .local v0, "volume":Lcom/xiaopeng/speech/protocol/bean/VolumeValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "stream_type"

    const-string v3, "3"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "streamType":Ljava/lang/String;
    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/utils/StringUtil;->isDecimalNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v3, "3"

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->streamType:I

    .line 24
    const-string v3, "change_value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/protocol/bean/AdjustValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v2    # "streamType":Ljava/lang/String;
    goto :goto_1

    .line 25
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
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
    .param p1, "adjustValue"    # Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    .line 46
    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .line 37
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->streamType:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeValue{streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->streamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjustValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/bean/VolumeValue;->adjustValue:Lcom/xiaopeng/speech/protocol/bean/AdjustValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
