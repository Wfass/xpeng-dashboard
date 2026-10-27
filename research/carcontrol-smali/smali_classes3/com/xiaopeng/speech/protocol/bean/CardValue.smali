.class public Lcom/xiaopeng/speech/protocol/bean/CardValue;
.super Ljava/lang/Object;
.source "CardValue.java"


# instance fields
.field private acDriverTemp:D

.field private acSeatHeatingLv:I

.field private acSeatVentilateLv:I

.field private acWindLv:I

.field private atmosphereBrightness:I

.field private atmosphereColor:I

.field private icmBrightness:I

.field private screenBrightness:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonForAcSeatHeating(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 2

    .line 126
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 128
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 129
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatHeatingLv:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static fromJsonForAcSeatVentilate(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 2

    .line 143
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 145
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 146
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatVentilateLv:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static fromJsonForAcTemp(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 3

    .line 58
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 60
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 61
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acDriverTemp:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static fromJsonForAcWindLv(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 2

    .line 75
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 77
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 78
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acWindLv:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static fromJsonForAtmosphereBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 2

    .line 92
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 94
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 95
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static fromJsonForAtmosphereColor(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 2

    .line 109
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 111
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 112
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static fromJsonForIcmBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 2

    .line 177
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 179
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 180
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->icmBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static fromJsonForScreenBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 2

    .line 160
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 162
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "current"

    .line 163
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->screenBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAcDriverTemp()D
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acDriverTemp:D

    return-wide v0
.end method

.method public getAcSeatHeatingLv()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatHeatingLv:I

    return v0
.end method

.method public getAcSeatVentilateLv()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatVentilateLv:I

    return v0
.end method

.method public getAcWindLv()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acWindLv:I

    return v0
.end method

.method public getAtmosphereBrightness()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereBrightness:I

    return v0
.end method

.method public getAtmosphereColor()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereColor:I

    return v0
.end method

.method public getIcmBrightness()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->icmBrightness:I

    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->screenBrightness:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardValue{acWindLv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acDriverTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acWindLv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acWindLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", atmosphereBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", atmosphereColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acSeatHeatingLv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatHeatingLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acSeatVentilateLv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatVentilateLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->screenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icmBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->icmBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
