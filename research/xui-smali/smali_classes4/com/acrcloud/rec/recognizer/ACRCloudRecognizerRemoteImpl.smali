.class public Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;
.super Ljava/lang/Object;
.source "ACRCloudRecognizerRemoteImpl.java"

# interfaces
.implements Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRCloudRecognizerRemoteImpl"


# instance fields
.field private action:Ljava/lang/String;

.field private initParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/ACRCloudConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 28
    const-string v1, "/rec?access_key="

    iput-object v1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->action:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->initParam:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 34
    return-void
.end method

.method private encryptByHMACSHA1([B[B)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B
    .param p2, "key"    # [B

    .line 258
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 259
    .local v0, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 260
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 261
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 262
    .local v2, "rawHmac":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 263
    .end local v0    # "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "mac":Ljavax/crypto/Mac;
    .end local v2    # "rawHmac":[B
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private getInitParams()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "rec_type"

    const-string v2, "recording"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "currentTime":Ljava/lang/String;
    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v3, "action"

    const-string v4, "rec_init"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-object v0
.end method

.method private getRecParams([BILjava/util/Map;I)Ljava/util/Map;
    .locals 23
    .param p1, "buffer"    # [B
    .param p2, "bufferLen"    # I
    .param p4, "engineType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .local p3, "configParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 59
    move/from16 v12, p4

    const-string v1, "ekey"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 60
    .local v13, "ekey":Ljava/lang/String;
    const-string v1, "fp_time"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 61
    .local v14, "fpTime":I
    const-string v1, "service_type"

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 63
    .local v15, "serviceType":I
    invoke-direct/range {p0 .. p0}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->getInitParams()Ljava/util/Map;

    move-result-object v9

    .line 65
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ACRCloudRecognizerRemoteImpl"

    const-string v2, "create fingerprint start"

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/16 v16, 0x0

    .line 68
    .local v16, "fpBuffer":[B
    const/16 v17, 0x0

    .line 69
    .local v17, "hummingFpBuffer":[B
    const/4 v1, 0x0

    .line 70
    .local v1, "isFix":Z
    iget-object v2, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->createFingerprintMode:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    sget-object v3, Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;->FAST:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    if-ne v2, v3, :cond_0

    .line 71
    const-string v2, "ACRCloudRecognizerRemoteImpl"

    const-string v3, "ACRCloudConfig.CreateFingerprintMode.FAST"

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x1

    .line 76
    .end local v1    # "isFix":Z
    .local v18, "isFix":Z
    :goto_0
    move/from16 v18, v1

    goto :goto_1

    .line 74
    .end local v18    # "isFix":Z
    .restart local v1    # "isFix":Z
    :cond_0
    const-string v2, "ACRCloudRecognizerRemoteImpl"

    const-string v3, "ACRCloudConfig.CreateFingerprintMode.Default"

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v1    # "isFix":Z
    .restart local v18    # "isFix":Z
    :goto_1
    const/16 v8, 0x8

    const/16 v19, 0x0

    packed-switch v12, :pswitch_data_0

    .line 138
    move-object v3, v9

    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ACRCloudRecognizerRemoteImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engine type error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-object v19

    .line 110
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_0
    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v6, v1, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v7, v1, Lcom/acrcloud/rec/ACRCloudConfig;->muteThreshold:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    .line 112
    invoke-virtual {v1}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v20

    .line 110
    move-object/from16 v1, p1

    move v2, v10

    move-object v5, v13

    move v11, v8

    move/from16 v8, v20

    move-object/from16 v21, v9

    move/from16 v9, v18

    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v21, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static/range {v1 .. v9}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createFingerprint([BIIILjava/lang/String;Ljava/lang/String;IIZ)[B

    move-result-object v7

    .line 114
    .end local v16    # "fpBuffer":[B
    .local v7, "fpBuffer":[B
    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    .line 115
    invoke-virtual {v1}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v5

    .line 114
    move-object/from16 v1, p1

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createHummingFingerprint([BIIIIZ)[B

    move-result-object v1

    .line 117
    .end local v17    # "hummingFpBuffer":[B
    .local v1, "hummingFpBuffer":[B
    const-string v2, "ACRCloudRecognizerRemoteImpl"

    const-string v3, "create fingerprint end"

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-nez v7, :cond_2

    if-nez v1, :cond_2

    .line 120
    mul-int/lit16 v2, v10, 0x3e8

    iget-object v3, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v4, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    iget-object v3, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->recMuteMaxTimeMS:I

    if-le v2, v3, :cond_1

    .line 122
    return-object v19

    .line 124
    :cond_1
    new-array v2, v11, [B

    .end local v7    # "fpBuffer":[B
    .local v2, "fpBuffer":[B
    goto :goto_2

    .line 127
    .end local v2    # "fpBuffer":[B
    .restart local v7    # "fpBuffer":[B
    :cond_2
    move-object v2, v7

    .end local v7    # "fpBuffer":[B
    .restart local v2    # "fpBuffer":[B
    :goto_2
    if-eqz v2, :cond_3

    .line 128
    const-string v3, "sample"

    move-object/from16 v9, v21

    invoke-interface {v9, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v21    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "sample_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 131
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    move-object/from16 v9, v21

    .end local v21    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_3
    if-eqz v1, :cond_4

    .line 132
    const-string v3, "sample_hum"

    invoke-interface {v9, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v3, "sample_hum_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_4
    move-object/from16 v16, v2

    goto :goto_4

    .line 97
    .end local v1    # "hummingFpBuffer":[B
    .end local v2    # "fpBuffer":[B
    .restart local v16    # "fpBuffer":[B
    .restart local v17    # "hummingFpBuffer":[B
    :pswitch_1
    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    .line 98
    invoke-virtual {v1}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v5

    .line 97
    move-object/from16 v1, p1

    move v2, v10

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createHummingFingerprint([BIIIIZ)[B

    move-result-object v1

    .line 100
    .end local v17    # "hummingFpBuffer":[B
    .restart local v1    # "hummingFpBuffer":[B
    const-string v2, "ACRCloudRecognizerRemoteImpl"

    const-string v3, "create fingerprint end"

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-nez v1, :cond_5

    .line 103
    return-object v19

    .line 105
    :cond_5
    const-string v2, "sample_hum"

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "sample_hum_bytes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    nop

    .line 142
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_4
    move-object v3, v9

    goto/16 :goto_5

    .line 79
    .end local v1    # "hummingFpBuffer":[B
    .end local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v17    # "hummingFpBuffer":[B
    :pswitch_2
    move v11, v8

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v6, v1, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v7, v1, Lcom/acrcloud/rec/ACRCloudConfig;->muteThreshold:I

    iget-object v1, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    .line 81
    invoke-virtual {v1}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v8

    .line 79
    move-object/from16 v1, p1

    move v2, v10

    move-object v5, v13

    move-object/from16 v22, v9

    move/from16 v9, v18

    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v22, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static/range {v1 .. v9}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createFingerprint([BIIILjava/lang/String;Ljava/lang/String;IIZ)[B

    move-result-object v1

    .line 82
    .end local v16    # "fpBuffer":[B
    .local v1, "fpBuffer":[B
    const-string v2, "ACRCloudRecognizerRemoteImpl"

    const-string v3, "create fingerprint end"

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-nez v1, :cond_7

    .line 85
    mul-int/lit16 v2, v10, 0x3e8

    iget-object v3, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v4, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    iget-object v3, v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->recMuteMaxTimeMS:I

    if-le v2, v3, :cond_6

    .line 87
    return-object v19

    .line 89
    :cond_6
    new-array v1, v11, [B

    .line 92
    :cond_7
    const-string v2, "sample"

    move-object/from16 v3, v22

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v22    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "sample_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    nop

    .line 142
    move-object/from16 v16, v1

    move-object/from16 v1, v17

    .end local v17    # "hummingFpBuffer":[B
    .local v1, "hummingFpBuffer":[B
    .restart local v16    # "fpBuffer":[B
    :goto_5
    const-string v2, "pcm_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "fp_time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "rec_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v2, "action"

    const-string v4, "rec"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tAction"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->host:Ljava/lang/String;

    .line 38
    .local v0, "url":Ljava/lang/String;
    const-string v1, "http"

    .line 40
    .local v1, "protocol":Ljava/lang/String;
    iget-object v2, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->protocol:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    sget-object v3, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->HTTPS:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    if-ne v2, v3, :cond_0

    .line 41
    const-string v1, "https"

    .line 44
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getUTCTimeSeconds()Ljava/lang/String;
    .locals 8

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 271
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 272
    .local v1, "zoneOffset":I
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 273
    .local v2, "dstOffset":I
    add-int v3, v1, v2

    neg-int v3, v3

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private preProcess(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 151
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 152
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 154
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "sValue":Ljava/lang/String;
    const-string v4, "ACRCloudRecognizerRemoteImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-eqz v3, :cond_0

    .line 157
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "sValue":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    return-object p1
.end method


# virtual methods
.method public recognize([BILjava/util/Map;ZLcom/acrcloud/rec/ACRCloudConfig$RecognizerType;)Ljava/lang/String;
    .locals 22
    .param p1, "buffer"    # [B
    .param p2, "bufferLen"    # I
    .param p4, "isAudio"    # Z
    .param p5, "recType"    # Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .local p3, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "isFix":Z
    :try_start_0
    iget-object v2, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->createFingerprintMode:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    sget-object v3, Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;->FAST:Lcom/acrcloud/rec/ACRCloudConfig$CreateFingerprintMode;

    if-ne v2, v3, :cond_0

    .line 282
    const-string v2, "ACRCloudRecognizerRemoteImpl"

    const-string v3, "ACRCloudConfig.CreateFingerprintMode.FAST"

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x1

    .line 286
    .end local v0    # "isFix":Z
    .local v11, "isFix":Z
    :cond_0
    move v11, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    .line 288
    .local v12, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 289
    .local v0, "fps":[B
    const/4 v2, 0x0

    .line 290
    .local v2, "humFps":[B
    const-string v3, "ACRCloudRecognizerRemoteImpl"

    const-string v4, "create fingerprint start"

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v3, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl$1;->$SwitchMap$com$acrcloud$rec$ACRCloudConfig$RecognizerType:[I

    invoke-virtual/range {p5 .. p5}, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/16 v13, 0x7d4

    packed-switch v3, :pswitch_data_0

    .line 354
    .end local v0    # "fps":[B
    .local v2, "fps":[B
    .local v3, "humFps":[B
    :cond_1
    :goto_0
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_3

    .line 325
    .end local v3    # "humFps":[B
    .restart local v0    # "fps":[B
    .local v2, "humFps":[B
    :pswitch_0
    move-object v0, v8

    .line 326
    if-eqz p4, :cond_2

    .line 327
    iget-object v3, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->muteThreshold:I

    invoke-static {v8, v9, v3, v11}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createFingerprint([BIIZ)[B

    move-result-object v3

    move-object v0, v3

    .line 329
    :cond_2
    if-eqz v0, :cond_3

    .line 330
    const-string v3, "ACRCloudRecognizerRemoteImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fps length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v3, "sample_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v3, "sample"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_3
    move-object v14, v8

    .line 337
    .end local v2    # "humFps":[B
    .local v14, "humFps":[B
    if-eqz p4, :cond_4

    .line 338
    const/16 v4, 0x1f40

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v8

    move v3, v9

    move v7, v11

    invoke-static/range {v2 .. v7}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createHummingFingerprint([BIIIIZ)[B

    move-result-object v2

    .end local v14    # "humFps":[B
    .restart local v2    # "humFps":[B
    goto :goto_1

    .line 340
    .end local v2    # "humFps":[B
    .restart local v14    # "humFps":[B
    :cond_4
    move-object v2, v14

    .end local v14    # "humFps":[B
    .restart local v2    # "humFps":[B
    :goto_1
    if-eqz v2, :cond_5

    .line 341
    const-string v3, "ACRCloudRecognizerRemoteImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "humfps length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v3, "sample_hum_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v3, "sample_hum"

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_5
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 348
    invoke-static {v13}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 309
    :pswitch_1
    move-object v14, v8

    .line 310
    .end local v2    # "humFps":[B
    .restart local v14    # "humFps":[B
    if-eqz p4, :cond_6

    .line 311
    const/16 v4, 0x1f40

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v8

    move v3, v9

    move v7, v11

    invoke-static/range {v2 .. v7}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createHummingFingerprint([BIIIIZ)[B

    move-result-object v2

    .end local v14    # "humFps":[B
    .restart local v2    # "humFps":[B
    goto :goto_2

    .line 313
    .end local v2    # "humFps":[B
    .restart local v14    # "humFps":[B
    :cond_6
    move-object v2, v14

    .end local v14    # "humFps":[B
    .restart local v2    # "humFps":[B
    :goto_2
    if-nez v2, :cond_7

    .line 314
    invoke-static {v13}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 317
    :cond_7
    const-string v3, "ACRCloudRecognizerRemoteImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hum fps length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v3, "sample_hum_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v3, "sample_hum"

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    goto/16 :goto_0

    .line 293
    :pswitch_2
    move-object v0, v8

    .line 294
    if-eqz p4, :cond_8

    .line 295
    iget-object v3, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->muteThreshold:I

    invoke-static {v8, v9, v3, v11}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createFingerprint([BIIZ)[B

    move-result-object v3

    move-object v0, v3

    .line 297
    :cond_8
    if-nez v0, :cond_9

    .line 298
    invoke-static {v13}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 301
    :cond_9
    const-string v3, "ACRCloudRecognizerRemoteImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fps length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "sample_bytes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v3, "sample"

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    goto/16 :goto_0

    .line 354
    .end local v0    # "fps":[B
    .local v2, "fps":[B
    .restart local v3    # "humFps":[B
    :goto_3
    const-string v0, "ACRCloudRecognizerRemoteImpl"

    const-string v4, "create fingerprint end"

    invoke-static {v0, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "POST"

    move-object v4, v0

    .line 357
    .local v4, "method":Ljava/lang/String;
    const-string v0, "/v1/identify"

    move-object v5, v0

    .line 358
    .local v5, "httpURL":Ljava/lang/String;
    const-string v0, "fingerprint"

    move-object v6, v0

    .line 359
    .local v6, "dataType":Ljava/lang/String;
    const-string v0, "1"

    move-object v7, v0

    .line 360
    .local v7, "sigVersion":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->getUTCTimeSeconds()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 362
    .local v13, "timestamp":Ljava/lang/String;
    invoke-direct {v1, v5}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 364
    .local v14, "reqURL":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v2

    const-string v2, "\n"

    .end local v2    # "fps":[B
    .local v15, "fps":[B
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 365
    .local v2, "sigStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object/from16 v16, v2

    iget-object v2, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .end local v2    # "sigStr":Ljava/lang/String;
    .local v16, "sigStr":Ljava/lang/String;
    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->encryptByHMACSHA1([B[B)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 367
    .local v2, "signature":Ljava/lang/String;
    const-string v0, "access_key"

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .end local v3    # "humFps":[B
    .local v17, "humFps":[B
    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-interface {v12, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "timestamp"

    invoke-interface {v12, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v0, "signature"

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v0, "data_type"

    invoke-interface {v12, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v0, "signature_version"

    invoke-interface {v12, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    if-eqz v10, :cond_a

    .line 373
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 375
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    .line 376
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-interface {v12, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    .local v20, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    nop

    .line 373
    move-object/from16 v0, v20

    goto :goto_4

    .line 380
    .end local v20    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    iget-object v0, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->requestOnceTimeoutMS:I

    invoke-static {v14, v12, v0}, Lcom/acrcloud/rec/network/ACRCloudHttpWrapper;->doPost(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 383
    .local v3, "res":Ljava/lang/String;
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_1 .. :try_end_1} :catch_2

    .line 386
    nop

    .line 388
    return-object v3

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "ex":Ljava/lang/Exception;
    move-object/from16 v21, v0

    const/16 v0, 0x7d2

    .end local v0    # "ex":Ljava/lang/Exception;
    .local v21, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v0, v3}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 393
    .end local v2    # "signature":Ljava/lang/String;
    .end local v3    # "res":Ljava/lang/String;
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "httpURL":Ljava/lang/String;
    .end local v6    # "dataType":Ljava/lang/String;
    .end local v7    # "sigVersion":Ljava/lang/String;
    .end local v11    # "isFix":Z
    .end local v12    # "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "timestamp":Ljava/lang/String;
    .end local v14    # "reqURL":Ljava/lang/String;
    .end local v15    # "fps":[B
    .end local v16    # "sigStr":Ljava/lang/String;
    .end local v17    # "humFps":[B
    .end local v21    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x7da

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 391
    .local v0, "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    invoke-virtual {v0}, Lcom/acrcloud/rec/utils/ACRCloudException;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resumeRecognize([BILjava/util/Map;Ljava/util/Map;I)Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .locals 18
    .param p1, "buffer"    # [B
    .param p2, "bufferLen"    # I
    .param p5, "engineType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/acrcloud/rec/recognizer/ACRCloudResponse;"
        }
    .end annotation

    .local p3, "configParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 206
    move/from16 v3, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 207
    .local v4, "currentTimeMS":J
    if-ltz v3, :cond_4

    const/4 v0, 0x3

    if-le v3, v0, :cond_0

    goto/16 :goto_2

    .line 213
    :cond_0
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct {v1, v6, v7, v8, v3}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->getRecParams([BILjava/util/Map;I)Ljava/util/Map;

    move-result-object v9

    .line 214
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v9, :cond_1

    .line 215
    new-instance v0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    invoke-direct {v0}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;-><init>()V

    .line 216
    .local v0, "re":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    const/16 v10, 0x7d4

    invoke-static {v10}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setResult(Ljava/lang/String;)V

    .line 217
    return-object v0

    .line 220
    .end local v0    # "re":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    :cond_1
    if-eqz v2, :cond_2

    .line 221
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 223
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 224
    .local v11, "value":Ljava/lang/String;
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {v1, v9}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->preProcess(Ljava/util/Map;)Ljava/util/Map;

    .line 229
    const-string v0, ""

    .line 230
    .local v0, "str":Ljava/lang/String;
    const/4 v10, 0x0

    .line 231
    .local v10, "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    const/4 v11, 0x0

    move-object v12, v0

    .end local v0    # "str":Ljava/lang/String;
    .local v11, "i":I
    .local v12, "str":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->retryHttpRequestNum:I

    if-ge v11, v0, :cond_3

    .line 233
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->action:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v13, v13, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "postUrl":Ljava/lang/String;
    iget-object v13, v1, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v13, v13, Lcom/acrcloud/rec/ACRCloudConfig;->requestOnceTimeoutMS:I

    invoke-static {v0, v9, v13}, Lcom/acrcloud/rec/network/ACRCloudHttpWrapper;->doPost(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v4

    .line 236
    .local v13, "offsetCorrValue":J
    const-string v15, "ACRCloudRecognizerRemoteImpl"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "postUrl":Ljava/lang/String;
    .local v16, "postUrl":Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offsetCorrValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    invoke-direct {v0}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;-><init>()V

    .line 239
    .local v0, "res":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    invoke-virtual {v0, v13, v14}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setOffsetCorrectValue(J)V

    .line 240
    invoke-virtual {v0, v12}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->parse(Ljava/lang/String;)V

    .line 242
    const-string v1, "sample"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setExtFingerprint([B)V
    :try_end_0
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    return-object v0

    .line 244
    .end local v0    # "res":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .end local v13    # "offsetCorrValue":J
    .end local v16    # "postUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lcom/acrcloud/rec/utils/ACRCloudException;
    move-object v10, v0

    .line 231
    .end local v0    # "e":Lcom/acrcloud/rec/utils/ACRCloudException;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    goto :goto_1

    .line 249
    .end local v11    # "i":I
    :cond_3
    new-instance v0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    invoke-direct {v0}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;-><init>()V

    .line 250
    .local v0, "res":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    invoke-virtual {v10}, Lcom/acrcloud/rec/utils/ACRCloudException;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setStatusCode(I)V

    .line 251
    invoke-virtual {v10}, Lcom/acrcloud/rec/utils/ACRCloudException;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setStatusMsg(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v10}, Lcom/acrcloud/rec/utils/ACRCloudException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setResult(Ljava/lang/String;)V

    .line 253
    return-object v0

    .line 208
    .end local v0    # "res":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    .end local v12    # "str":Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    new-instance v0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    invoke-direct {v0}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;-><init>()V

    .line 209
    .local v0, "re":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    const/16 v1, 0x7d6

    invoke-static {v1}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setResult(Ljava/lang/String;)V

    .line 210
    return-object v0
.end method

.method public startRecognize(Ljava/util/Map;)Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/acrcloud/rec/recognizer/ACRCloudResponse;"
        }
    .end annotation

    .line 173
    .local p1, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->getInitParams()Ljava/util/Map;

    move-result-object v0

    .line 174
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0, v0}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->preProcess(Ljava/util/Map;)Ljava/util/Map;

    .line 183
    const/4 v1, 0x0

    .line 184
    .local v1, "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->retryHttpRequestNum:I

    if-ge v2, v3, :cond_1

    .line 186
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "postUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->requestOnceTimeoutMS:I

    invoke-static {v3, v0, v4}, Lcom/acrcloud/rec/network/ACRCloudHttpWrapper;->doPost(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "str":Ljava/lang/String;
    new-instance v5, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    invoke-direct {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;-><init>()V

    .line 190
    .local v5, "res":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    invoke-virtual {v5, v4}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-object v5

    .line 192
    .end local v3    # "postUrl":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "res":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    :catch_0
    move-exception v3

    .line 193
    .local v3, "e":Lcom/acrcloud/rec/utils/ACRCloudException;
    move-object v1, v3

    .line 184
    .end local v3    # "e":Lcom/acrcloud/rec/utils/ACRCloudException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    invoke-direct {v2}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;-><init>()V

    .line 198
    .local v2, "res":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    invoke-virtual {v1}, Lcom/acrcloud/rec/utils/ACRCloudException;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setStatusCode(I)V

    .line 199
    invoke-virtual {v1}, Lcom/acrcloud/rec/utils/ACRCloudException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setStatusMsg(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1}, Lcom/acrcloud/rec/utils/ACRCloudException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->setResult(Ljava/lang/String;)V

    .line 201
    return-object v2
.end method
