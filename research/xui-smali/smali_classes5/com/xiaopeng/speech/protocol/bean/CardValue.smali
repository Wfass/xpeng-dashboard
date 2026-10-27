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
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 126
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 128
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatHeatingLv:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJsonForAcSeatVentilate(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 145
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatVentilateLv:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJsonForAcTemp(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 60
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acDriverTemp:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJsonForAcWindLv(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 77
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acWindLv:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJsonForAtmosphereBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 94
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJsonForAtmosphereColor(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 111
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJsonForIcmBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 177
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 179
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->icmBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static fromJsonForScreenBrightness(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/CardValue;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/CardValue;-><init>()V

    .line 162
    .local v0, "changeValue":Lcom/xiaopeng/speech/protocol/bean/CardValue;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "current"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->screenBrightness:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v1    # "e":Ljava/lang/Exception;
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

    iget-wide v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acDriverTemp:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", acWindLv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acWindLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", atmosphereBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", atmosphereColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->atmosphereColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", acSeatHeatingLv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatHeatingLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", acSeatVentilateLv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->acSeatVentilateLv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->screenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icmBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/speech/protocol/bean/CardValue;->icmBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
