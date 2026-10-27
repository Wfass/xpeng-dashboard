.class public Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
.super Ljava/lang/Object;
.source "ACRCloudResponse.java"


# static fields
.field public static IMAGE_ACTION:Ljava/lang/String;

.field public static IMAGE_HOST:Ljava/lang/String;


# instance fields
.field private autoIntervalMS:I

.field private eKey:Ljava/lang/String;

.field private engineType:I

.field private extFingerprint:[B

.field private fpTime:I

.field private humFingerprint:[B

.field private offsetCorrectValue:J

.field private result:Ljava/lang/String;

.field private resultType:I

.field private serviceType:I

.field private statusCode:I

.field private statusMsg:Ljava/lang/String;

.field private statusVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "api.acrcloud.com"

    sput-object v0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->IMAGE_HOST:Ljava/lang/String;

    .line 11
    const-string v0, "/v1/metadata/image/%s.jpg"

    sput-object v0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->IMAGE_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusCode:I

    .line 14
    const-string v1, "Success"

    iput-object v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusMsg:Ljava/lang/String;

    .line 15
    const-string v1, "1.0"

    iput-object v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusVersion:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->fpTime:I

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->eKey:Ljava/lang/String;

    .line 20
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->result:Ljava/lang/String;

    .line 22
    iput v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->serviceType:I

    .line 24
    iput v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->resultType:I

    .line 26
    iput v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->engineType:I

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->extFingerprint:[B

    .line 29
    iput-object v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->humFingerprint:[B

    .line 31
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->offsetCorrectValue:J

    .line 33
    iput v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->autoIntervalMS:I

    return-void
.end method


# virtual methods
.method public getAutoIntervalMS()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->autoIntervalMS:I

    return v0
.end method

.method public getEngineType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->engineType:I

    return v0
.end method

.method public getExtFingerprint()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->extFingerprint:[B

    return-object v0
.end method

.method public getFpTime()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->fpTime:I

    return v0
.end method

.method public getHumFingerprint()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->humFingerprint:[B

    return-object v0
.end method

.method public getOffsetCorrectValue()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->offsetCorrectValue:J

    return-wide v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->resultType:I

    return v0
.end method

.method public getServiceType()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->serviceType:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusCode:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusVersion()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusVersion:Ljava/lang/String;

    return-object v0
.end method

.method public geteKey()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->eKey:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 16
    .param p1, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/acrcloud/rec/utils/ACRCloudException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 141
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p1

    :try_start_1
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "resp":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 144
    .local v3, "aStatus":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setStatusCode(I)V

    .line 145
    const-string v4, "msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setStatusMsg(Ljava/lang/String;)V

    .line 146
    const-string v4, "version"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setStatusVersion(Ljava/lang/String;)V

    .line 148
    const-string v4, "fp_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    const-string v4, "fp_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setFpTime(I)V

    .line 152
    :cond_0
    const-string v4, "engine_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    const-string v4, "engine_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setEngineType(I)V

    .line 156
    :cond_1
    const-string v4, "auto_interval_ms"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    const-string v4, "auto_interval_ms"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setAutoIntervalMS(I)V

    .line 160
    :cond_2
    const-string v4, "ekey"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    const-string v4, "ekey"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->seteKey(Ljava/lang/String;)V

    .line 163
    :cond_3
    const-string v4, "service_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 164
    const-string v4, "service_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setServiceType(I)V

    .line 166
    :cond_4
    const-string v4, "result_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    const-string v4, "result_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setResultType(I)V

    .line 170
    :cond_5
    const-string v4, "metadata"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 171
    const-string v4, "metadata"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 173
    .local v4, "metadataRoot":Lorg/json/JSONObject;
    iget-wide v5, v1, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->offsetCorrectValue:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-lez v5, :cond_8

    const-string v5, "custom_files"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 174
    const-string v5, "custom_files"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 175
    .local v5, "customFiles":Lorg/json/JSONArray;
    nop

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 176
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 177
    .local v7, "jt":Lorg/json/JSONObject;
    const-string v8, "play_offset_ms"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 178
    const-string v8, "play_offset_ms"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 179
    .local v8, "oldOffset":I
    const-string v9, "play_offset_ms"

    int-to-long v10, v8

    iget-wide v12, v1, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->offsetCorrectValue:J

    add-long/2addr v10, v12

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 175
    .end local v7    # "jt":Lorg/json/JSONObject;
    .end local v8    # "oldOffset":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 182
    .end local v5    # "customFiles":Lorg/json/JSONArray;
    .end local v6    # "i":I
    :cond_7
    goto/16 :goto_2

    :cond_8
    const-string v5, "music"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 183
    const-string v5, "music"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 184
    .local v5, "music":Lorg/json/JSONArray;
    move v9, v6

    .local v9, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 185
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 186
    .local v10, "jt":Lorg/json/JSONObject;
    iget-wide v11, v1, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->offsetCorrectValue:J

    cmp-long v11, v11, v7

    if-lez v11, :cond_9

    const-string v11, "play_offset_ms"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 187
    const-string v11, "play_offset_ms"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 188
    .local v11, "oldOffset":I
    const-string v12, "play_offset_ms"

    int-to-long v13, v11

    iget-wide v7, v1, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->offsetCorrectValue:J

    add-long/2addr v13, v7

    invoke-virtual {v10, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    .end local v11    # "oldOffset":I
    :cond_9
    const-string v7, "album"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 191
    const-string v7, "album"

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 192
    .local v7, "tAlbum":Lorg/json/JSONObject;
    const-string v8, "image"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 193
    const-string v8, "image"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "oldImage":Ljava/lang/String;
    if-eqz v8, :cond_a

    const-string v11, ""

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "http"

    const/4 v12, 0x4

    .line 195
    invoke-virtual {v8, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 196
    const-string v11, "image"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "https://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->IMAGE_HOST:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->IMAGE_ACTION:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v8, v13, v6

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    .end local v7    # "tAlbum":Lorg/json/JSONObject;
    .end local v8    # "oldImage":Ljava/lang/String;
    .end local v10    # "jt":Lorg/json/JSONObject;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_1

    .line 203
    .end local v5    # "music":Lorg/json/JSONArray;
    .end local v9    # "i":I
    :cond_b
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 206
    .end local v4    # "metadataRoot":Lorg/json/JSONObject;
    .end local p1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :cond_c
    iput-object v2, v1, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->result:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    .end local v0    # "resp":Lorg/json/JSONObject;
    .end local v3    # "aStatus":Lorg/json/JSONObject;
    nop

    .line 212
    return-void

    .line 208
    .end local v2    # "result":Ljava/lang/String;
    .restart local p1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    .line 209
    .end local p1    # "result":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "result":Ljava/lang/String;
    :goto_3
    new-instance v3, Lcom/acrcloud/rec/utils/ACRCloudException;

    const/16 v4, 0x7d2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; src result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    .line 210
    .local v3, "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v3
.end method

.method public setAutoIntervalMS(I)V
    .locals 0
    .param p1, "autoIntervalMS"    # I

    .line 136
    iput p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->autoIntervalMS:I

    .line 137
    return-void
.end method

.method public setEngineType(I)V
    .locals 0
    .param p1, "engineType"    # I

    .line 72
    iput p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->engineType:I

    .line 73
    return-void
.end method

.method public setExtFingerprint([B)V
    .locals 0
    .param p1, "extFingerprint"    # [B

    .line 40
    iput-object p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->extFingerprint:[B

    .line 41
    return-void
.end method

.method public setFpTime(I)V
    .locals 0
    .param p1, "fpTime"    # I

    .line 96
    iput p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->fpTime:I

    .line 97
    return-void
.end method

.method public setHumFingerprint([B)V
    .locals 0
    .param p1, "humFingerprint"    # [B

    .line 48
    iput-object p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->humFingerprint:[B

    .line 49
    return-void
.end method

.method public setOffsetCorrectValue(J)V
    .locals 0
    .param p1, "offset"    # J

    .line 56
    iput-wide p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->offsetCorrectValue:J

    .line 57
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->result:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setResultType(I)V
    .locals 0
    .param p1, "resultType"    # I

    .line 128
    iput p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->resultType:I

    .line 129
    return-void
.end method

.method public setServiceType(I)V
    .locals 0
    .param p1, "serviceType"    # I

    .line 120
    iput p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->serviceType:I

    .line 121
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 64
    iput p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusCode:I

    .line 65
    return-void
.end method

.method public setStatusMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusMsg"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusMsg:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setStatusVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusVersion"    # Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->statusVersion:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public seteKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "eKey"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->eKey:Ljava/lang/String;

    .line 105
    return-void
.end method
