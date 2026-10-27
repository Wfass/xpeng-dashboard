.class public Lcom/acrcloud/rec/ACRCloudClient;
.super Ljava/lang/Object;
.source "ACRCloudClient.java"

# interfaces
.implements Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;
.implements Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;,
        Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;,
        Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;
    }
.end annotation


# static fields
.field public static final RADIO_METADATA:I = 0x3eb

.field private static final RADIO_SEARCH_ACTION:Ljava/lang/String; = "/v1/car-radios/search"

.field private static RADIO_SEARCH_HOST:Ljava/lang/String; = null

.field public static final RECOG_FINISH:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "ACRCloudClient"

.field public static final VOLUME_CHANGED:I = 0x3ea

.field private static volatile mIsLogin:Z


# instance fields
.field private volatile isAutoRecognizeing:Z

.field private volatile isPreRecord:Z

.field private volatile isRecognizeing:Z

.field private mACRCloudId:Ljava/lang/String;

.field private volatile mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

.field private mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field private mAutoRecognizeIntervalMS:I

.field private volatile mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field public mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;

.field private mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

.field private volatile mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "cn-api.acrcloud.com"

    sput-object v0, Lcom/acrcloud/rec/ACRCloudClient;->RADIO_SEARCH_HOST:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/acrcloud/rec/ACRCloudClient;->mIsLogin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 46
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 47
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    .line 48
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 49
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    .line 51
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->isPreRecord:Z

    .line 57
    iput-boolean v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z

    .line 58
    iput-boolean v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->isAutoRecognizeing:Z

    .line 59
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeIntervalMS:I

    .line 65
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Lcom/acrcloud/rec/ACRCloudClient$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/acrcloud/rec/ACRCloudClient$1;-><init>(Lcom/acrcloud/rec/ACRCloudClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/acrcloud/rec/ACRCloudClient;)Lcom/acrcloud/rec/ACRCloudConfig;
    .locals 1
    .param p0, "x0"    # Lcom/acrcloud/rec/ACRCloudClient;

    .line 37
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    return-object v0
.end method

.method static synthetic access$100(Lcom/acrcloud/rec/ACRCloudClient;ILjava/util/Map;)Z
    .locals 1
    .param p0, "x0"    # Lcom/acrcloud/rec/ACRCloudClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/acrcloud/rec/ACRCloudClient;->doRecognize(ILjava/util/Map;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/acrcloud/rec/ACRCloudClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/acrcloud/rec/ACRCloudClient;

    .line 37
    iget v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeIntervalMS:I

    return v0
.end method

.method static synthetic access$300(Lcom/acrcloud/rec/ACRCloudClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/acrcloud/rec/ACRCloudClient;

    .line 37
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/acrcloud/rec/ACRCloudClient;->RADIO_SEARCH_HOST:Ljava/lang/String;

    return-object v0
.end method

.method private check()Ljava/lang/String;
    .locals 4

    .line 627
    const-string v0, ""

    .line 629
    .local v0, "id":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/acrcloud/rec/ACRCloudClient;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    const-string v2, "acrcloud"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 634
    .local v1, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 635
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 636
    :cond_1
    invoke-direct {p0}, Lcom/acrcloud/rec/ACRCloudClient;->getACRCloudId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 637
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 638
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "id"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 639
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1    # "mySharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 645
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static createClientFingerprint([BIII)[B
    .locals 8
    .param p0, "buffer"    # [B
    .param p1, "bufferLen"    # I
    .param p2, "sampleRate"    # I
    .param p3, "nChannels"    # I

    .line 362
    sget-object v0, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->LARGE:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    invoke-virtual {v0}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v6

    const/16 v5, 0x64

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createFingerprint([BIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static createClientFingerprint([BIIILcom/acrcloud/rec/ACRCloudConfig$ResampleType;Z)[B
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "bufferLen"    # I
    .param p2, "sampleRate"    # I
    .param p3, "nChannels"    # I
    .param p4, "resampleType"    # Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;
    .param p5, "isFixOptimizing"    # Z

    .line 366
    invoke-virtual {p4}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v5

    const/16 v4, 0x64

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createFingerprint([BIIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static createHummingClientFingerprint([BIII)[B
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "bufferLen"    # I
    .param p2, "sampleRate"    # I
    .param p3, "nChannels"    # I

    .line 370
    sget-object v0, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->LARGE:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    invoke-virtual {v0}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createHummingFingerprint([BIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static createHummingClientFingerprint([BIIILcom/acrcloud/rec/ACRCloudConfig$ResampleType;Z)[B
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "bufferLen"    # I
    .param p2, "sampleRate"    # I
    .param p3, "nChannels"    # I
    .param p4, "resampleType"    # Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;
    .param p5, "isFixOptimizing"    # Z

    .line 374
    invoke-virtual {p4}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->createHummingFingerprint([BIIIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized doRecognize(ILjava/util/Map;)Z
    .locals 10
    .param p1, "recType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .local p2, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 249
    monitor-exit p0

    return v2

    .line 251
    :cond_1
    :try_start_1
    iput-boolean v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z

    .line 253
    if-nez p2, :cond_2

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p2, v0

    .line 256
    :cond_2
    const-string v0, "dk"

    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "platform"

    invoke-direct {p0}, Lcom/acrcloud/rec/ACRCloudClient;->getPlatform()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    if-eqz v0, :cond_6

    .line 259
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    invoke-interface {v0}, Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 261
    const-string v3, "device_id"

    invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_3
    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    invoke-interface {v3}, Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;->getGPS()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "gps":Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 265
    const-string v4, "gps"

    invoke-interface {p2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_4
    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    invoke-interface {v4}, Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;->getRadioFrequency()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "freq":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 269
    const-string v5, "freq"

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_5
    iget-object v5, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v5, v5, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    invoke-interface {v5}, Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;->getDeviceModel()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "device_model":Ljava/lang/String;
    if-eqz v5, :cond_6

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 273
    const-string v6, "device_model"

    invoke-interface {p2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v0    # "deviceId":Ljava/lang/String;
    .end local v3    # "gps":Ljava/lang/String;
    .end local v4    # "freq":Ljava/lang/String;
    .end local v5    # "device_model":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 278
    .local v0, "config":Lcom/acrcloud/rec/ACRCloudConfig;
    if-ne p1, v2, :cond_7

    .line 279
    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 283
    :cond_7
    :try_start_2
    new-instance v3, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;

    invoke-direct {v3, v0}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;)V

    iput-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 284
    new-instance v9, Lcom/acrcloud/rec/worker/ACRCloudWorker;

    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    iget-object v5, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    move-object v3, v9

    move-object v6, v0

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/acrcloud/rec/worker/ACRCloudWorker;-><init>(Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;Lcom/acrcloud/rec/ACRCloudConfig;Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;Ljava/util/Map;)V

    iput-object v9, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    .line 286
    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    invoke-virtual {v3}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    nop

    .line 293
    monitor-exit p0

    return v2

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    monitor-exit p0

    return v1

    .line 245
    .end local v0    # "config":Lcom/acrcloud/rec/ACRCloudConfig;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_8
    :goto_0
    monitor-exit p0

    return v1

    .line 243
    .end local p1    # "recType":I
    .end local p2    # "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/acrcloud/rec/ACRCloudClient;
    throw p1
.end method

.method private getACRCloudId()Ljava/lang/String;
    .locals 9

    .line 596
    const-string v0, ""

    .line 598
    .local v0, "uuid":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/acrcloud/rec/ACRCloudClient;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 599
    if-eqz v0, :cond_0

    .line 600
    return-object v0

    .line 602
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 605
    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 609
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 610
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 611
    .local v2, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 612
    .local v3, "hex":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v2, v5

    .line 613
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 614
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_1
    and-int/lit16 v7, v6, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 618
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 619
    .end local v1    # "md5":Ljava/security/MessageDigest;
    .end local v2    # "hash":[B
    .end local v3    # "hex":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    .end local v1    # "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method private getLocalIpAddress()Ljava/net/InetAddress;
    .locals 5

    .line 556
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 557
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 558
    .local v1, "intf":Ljava/net/NetworkInterface;
    nop

    .line 559
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 560
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 561
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    .line 562
    return-object v3

    .line 564
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    :cond_0
    goto :goto_1

    .line 565
    .end local v1    # "intf":Ljava/net/NetworkInterface;
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    goto :goto_0

    .line 568
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    goto :goto_2

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 569
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 9

    .line 573
    const-string v0, ""

    .line 575
    .local v0, "strMacAddr":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/acrcloud/rec/ACRCloudClient;->getLocalIpAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 576
    .local v1, "ip":Ljava/net/InetAddress;
    if-nez v1, :cond_0

    .line 577
    return-object v0

    .line 579
    :cond_0
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 580
    .local v2, "b":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 582
    if-eqz v5, :cond_1

    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 584
    :cond_1
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    .end local v6    # "str":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 587
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 589
    .end local v1    # "ip":Ljava/net/InetAddress;
    .end local v2    # "b":[B
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_2

    .line 588
    :catch_0
    move-exception v1

    .line 591
    :goto_2
    return-object v0
.end method

.method private getPlatform()Ljava/lang/String;
    .locals 4

    .line 649
    const-string v0, "android"

    .line 651
    .local v0, "platform":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "other":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 655
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    if-eqz v2, :cond_0

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 660
    .end local v1    # "other":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 661
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private login()V
    .locals 6

    .line 665
    const/4 v0, 0x0

    move v1, v0

    .line 667
    .local v1, "loginNum":I
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    const-string v4, "acrcloud"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 668
    .local v3, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "login_num"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v1, v4

    .line 669
    const/4 v4, 0x2

    if-le v1, v4, :cond_0

    .line 670
    sput-boolean v2, Lcom/acrcloud/rec/ACRCloudClient;->mIsLogin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    .end local v3    # "mySharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    goto :goto_0

    .line 672
    :catch_0
    move-exception v3

    .line 673
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 676
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v3, "ACRCloudClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Login: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-boolean v3, Lcom/acrcloud/rec/ACRCloudClient;->mIsLogin:Z

    if-eqz v3, :cond_1

    .line 679
    return-void

    .line 681
    :cond_1
    sput-boolean v2, Lcom/acrcloud/rec/ACRCloudClient;->mIsLogin:Z

    .line 684
    :try_start_1
    new-instance v3, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;

    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-direct {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;)V

    .line 685
    .local v3, "loginAsyncTask":Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;
    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    if-eqz v4, :cond_3

    .line 686
    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v4, v4, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    invoke-interface {v4}, Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 687
    .local v4, "deviceId":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 688
    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {v3, v2}, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 690
    :cond_2
    new-array v2, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    aput-object v5, v2, v0

    invoke-virtual {v3, v2}, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 692
    .end local v4    # "deviceId":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 693
    :cond_3
    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {v3, v2}, Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    .end local v3    # "loginAsyncTask":Lcom/acrcloud/rec/utils/ACRCloudDeviceLoginAsyncTask;
    :goto_2
    goto :goto_3

    .line 695
    :catch_1
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 698
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public static resample([BIII)[B
    .locals 3
    .param p0, "pcmBuffer"    # [B
    .param p1, "pcmBufferLen"    # I
    .param p2, "sampleRate"    # I
    .param p3, "nChannels"    # I

    .line 378
    const-string v0, "ACRCloudClient"

    const-string v1, "start resample"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->resample([BIIII)[B

    move-result-object v0

    .line 385
    .local v0, "reBuffer":[B
    const-string v1, "ACRCloudClient"

    const-string v2, "end resample"

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-object v0

    .line 380
    .end local v0    # "reBuffer":[B
    :cond_1
    :goto_0
    const-string v0, "ACRCloudClient"

    const-string v1, "end resample: parameter error"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method public static resample([BIIILcom/acrcloud/rec/ACRCloudConfig$ResampleType;)[B
    .locals 3
    .param p0, "pcmBuffer"    # [B
    .param p1, "pcmBufferLen"    # I
    .param p2, "sampleRate"    # I
    .param p3, "nChannels"    # I
    .param p4, "reType"    # Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    .line 390
    const-string v0, "ACRCloudClient"

    const-string v1, "start resample"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p4}, Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;->ordinal()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/acrcloud/rec/engine/ACRCloudUniversalEngine;->resample([BIIII)[B

    move-result-object v0

    .line 397
    .local v0, "reBuffer":[B
    const-string v1, "ACRCloudClient"

    const-string v2, "end resample"

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-object v0

    .line 392
    .end local v0    # "reBuffer":[B
    :cond_1
    :goto_0
    const-string v0, "ACRCloudClient"

    const-string v1, "end resample: parameter error"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 441
    :try_start_0
    const-string v0, "ACRCloudClient"

    const-string v1, "cancel recognize"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z

    .line 445
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    invoke-virtual {v0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->reqCancel()V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    .line 449
    :cond_0
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isPreRecord:Z

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->release()V

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_2
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public cancelAutoRecognize()V
    .locals 2

    .line 207
    :try_start_0
    const-string v0, "ACRCloudClient"

    const-string v1, "cancel auto recognize"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    invoke-virtual {v0}, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->cancel()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isAutoRecognizeing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public initWithConfig(Lcom/acrcloud/rec/ACRCloudConfig;)Z
    .locals 4
    .param p1, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 112
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 113
    return v0

    .line 116
    :cond_0
    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    sget-object v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    if-eq v1, v2, :cond_1

    .line 117
    const-string v1, "ACRCloudClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config.audioRecordSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->source:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    iput-object p1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 122
    invoke-virtual {p1}, Lcom/acrcloud/rec/ACRCloudConfig;->clone()Lcom/acrcloud/rec/ACRCloudConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 124
    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->accessKeyAuto:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->accessKeyAuto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->accessKeyAuto:Ljava/lang/String;

    iput-object v2, v1, Lcom/acrcloud/rec/ACRCloudConfig;->accessKey:Ljava/lang/String;

    .line 127
    :cond_2
    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecretAuto:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecretAuto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 128
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecretAuto:Ljava/lang/String;

    iput-object v2, v1, Lcom/acrcloud/rec/ACRCloudConfig;->accessSecret:Ljava/lang/String;

    .line 130
    :cond_3
    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->hostAuto:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->hostAuto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->hostAuto:Ljava/lang/String;

    iput-object v2, v1, Lcom/acrcloud/rec/ACRCloudConfig;->host:Ljava/lang/String;

    .line 134
    :cond_4
    iget v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->autoRecognizeIntervalMS:I

    if-lez v1, :cond_5

    .line 135
    iget v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->autoRecognizeIntervalMS:I

    iput v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeIntervalMS:I

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/acrcloud/rec/ACRCloudClient;->check()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/acrcloud/rec/ACRCloudClient;->login()V

    .line 142
    iget-boolean v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z

    if-eqz v1, :cond_6

    .line 143
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudClient;->cancel()V

    .line 146
    :cond_6
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    if-eqz v1, :cond_7

    .line 147
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v1}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->release()V

    .line 148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    .line 151
    :cond_7
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    sget-object v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->RECORDER_USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->userRecorderEngine:Lcom/acrcloud/rec/record/IACRCloudRecorder;

    if-nez v1, :cond_8

    .line 153
    const-string v1, "ACRCloudClient"

    const-string v2, "this.mConfig.userRecorderEngine == null"

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return v0

    .line 157
    :cond_8
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    if-ne v0, v1, :cond_9

    .line 158
    new-instance v0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;

    invoke-direct {v0, p1, p0}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;)V

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    goto :goto_0

    .line 160
    :cond_9
    new-instance v0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-direct {v0, p1, p0}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;)V

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    .line 163
    :goto_0
    iget-object v0, p1, Lcom/acrcloud/rec/ACRCloudConfig;->imageHost:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, ""

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->imageHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 164
    iget-object v0, p1, Lcom/acrcloud/rec/ACRCloudConfig;->imageHost:Ljava/lang/String;

    sput-object v0, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->IMAGE_HOST:Ljava/lang/String;

    .line 166
    :cond_a
    iget-object v0, p1, Lcom/acrcloud/rec/ACRCloudConfig;->radioMetadataSearchHost:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, ""

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->radioMetadataSearchHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 167
    iget-object v0, p1, Lcom/acrcloud/rec/ACRCloudConfig;->radioMetadataSearchHost:Ljava/lang/String;

    sput-object v0, Lcom/acrcloud/rec/ACRCloudClient;->RADIO_SEARCH_HOST:Ljava/lang/String;

    .line 170
    :cond_b
    const-string v0, "ACRCloudClient"

    sget-object v1, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->IMAGE_HOST:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "ACRCloudClient"

    sget-object v1, Lcom/acrcloud/rec/ACRCloudClient;->RADIO_SEARCH_HOST:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudPartnerDeviceInfo:Lcom/acrcloud/rec/IACRCloudPartnerDeviceInfo;

    if-nez v0, :cond_c

    .line 174
    const-string v0, "ACRCloudClient"

    const-string v1, "this.mConfig.acrCloudPartnerDeviceInfo == null"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_c
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v0, v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->reservedRecordBufferMS:I

    if-lez v0, :cond_d

    .line 178
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudClient;->startPreRecord()V

    .line 181
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onResult(Lcom/acrcloud/rec/ACRCloudResult;)V
    .locals 3
    .param p1, "results"    # Lcom/acrcloud/rec/ACRCloudResult;

    .line 480
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudClient;->cancel()V

    .line 482
    new-instance v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;

    invoke-direct {v0, p0}, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;-><init>(Lcom/acrcloud/rec/ACRCloudClient;)V

    .line 483
    .local v0, "aMsg":Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
    iput-object p1, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mParams:Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mCallback:Ljava/lang/Object;

    .line 486
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 487
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 491
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    return-void
.end method

.method public onStartRecognize(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 496
    .local p1, "initParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    const-string v0, "auto_interval_ms"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    const-string v0, "auto_interval_ms"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 498
    .local v0, "autoIntervalMS":I
    if-lez v0, :cond_0

    .line 499
    iput v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeIntervalMS:I

    .line 500
    const-string v1, "ACRCloudClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update auto_interval_ms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeIntervalMS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .end local v0    # "autoIntervalMS":I
    :cond_0
    return-void
.end method

.method public onVolumeChanged(D)V
    .locals 3
    .param p1, "volume"    # D

    .line 463
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z

    if-nez v0, :cond_0

    .line 464
    return-void

    .line 467
    :cond_0
    new-instance v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;

    invoke-direct {v0, p0}, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;-><init>(Lcom/acrcloud/rec/ACRCloudClient;)V

    .line 468
    .local v0, "aMsg":Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mParams:Ljava/lang/Object;

    .line 469
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

    iput-object v1, v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudMessage;->mCallback:Ljava/lang/Object;

    .line 471
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 472
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    const/16 v2, 0x3ea

    iput v2, v1, Landroid/os/Message;->what:I

    .line 475
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    return-void
.end method

.method public putAudioData([B)Z
    .locals 3
    .param p1, "buffer"    # [B

    .line 506
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    if-nez v0, :cond_0

    goto :goto_1

    .line 511
    :cond_0
    move v0, v2

    .line 513
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v1, p1}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->putAudioData([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 516
    goto :goto_0

    .line 514
    :catch_0
    move-exception v1

    .line 515
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0

    .line 508
    .end local v0    # "ret":Z
    :cond_1
    :goto_1
    return v2
.end method

.method public recognize([BIII)Ljava/lang/String;
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "bufferLen"    # I
    .param p3, "sampleRate"    # I
    .param p4, "nChannels"    # I

    .line 311
    new-instance v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;

    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-direct {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;)V

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 313
    move-object v0, p1

    .line 314
    .local v0, "pcm":[B
    const/16 v1, 0x1f40

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    .line 315
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/acrcloud/rec/ACRCloudClient;->resample([BIII)[B

    move-result-object v0

    .line 316
    if-nez v0, :cond_1

    .line 317
    const/16 v1, 0x7d8

    invoke-static {v1}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 320
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v1, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "dk"

    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    array-length v4, v0

    const/4 v6, 0x1

    sget-object v7, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->AUDIO:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    move-object v3, v0

    move-object v5, v1

    invoke-interface/range {v2 .. v7}, Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;->recognize([BILjava/util/Map;ZLcom/acrcloud/rec/ACRCloudConfig$RecognizerType;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public recognize([BIIILcom/acrcloud/rec/ACRCloudConfig$RecognizerType;)Ljava/lang/String;
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "bufferLen"    # I
    .param p3, "sampleRate"    # I
    .param p4, "nChannels"    # I
    .param p5, "recType"    # Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    .line 327
    new-instance v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;

    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-direct {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;)V

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 329
    move-object v0, p1

    .line 330
    .local v0, "pcm":[B
    const/16 v1, 0x1f40

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    invoke-static {p1, p2, p3, p4, v1}, Lcom/acrcloud/rec/ACRCloudClient;->resample([BIIILcom/acrcloud/rec/ACRCloudConfig$ResampleType;)[B

    move-result-object v0

    .line 332
    if-nez v0, :cond_1

    .line 333
    const/16 v1, 0x7d8

    invoke-static {v1}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 336
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v1, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "dk"

    iget-object v3, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    array-length v4, v0

    const/4 v6, 0x1

    move-object v3, v0

    move-object v5, v1

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;->recognize([BILjava/util/Map;ZLcom/acrcloud/rec/ACRCloudConfig$RecognizerType;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public recognize([BIIILcom/acrcloud/rec/ACRCloudConfig$RecognizerType;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "bufferLen"    # I
    .param p3, "sampleRate"    # I
    .param p4, "nChannels"    # I
    .param p5, "recType"    # Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 343
    .local p6, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;

    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-direct {v0, v1}, Lcom/acrcloud/rec/recognizer/ACRCloudRecognizerRemoteImpl;-><init>(Lcom/acrcloud/rec/ACRCloudConfig;)V

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 345
    move-object v0, p1

    .line 346
    .local v0, "pcm":[B
    const/16 v1, 0x1f40

    if-ne p3, v1, :cond_0

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->resampleType:Lcom/acrcloud/rec/ACRCloudConfig$ResampleType;

    invoke-static {p1, p2, p3, p4, v1}, Lcom/acrcloud/rec/ACRCloudClient;->resample([BIIILcom/acrcloud/rec/ACRCloudConfig$ResampleType;)[B

    move-result-object v0

    .line 348
    if-nez v0, :cond_1

    .line 349
    const/16 v1, 0x7d8

    invoke-static {v1}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 353
    :cond_1
    if-nez p6, :cond_2

    .line 354
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object p6, v1

    .line 356
    :cond_2
    const-string v1, "dk"

    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mACRCloudId:Ljava/lang/String;

    invoke-interface {p6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    array-length v4, v0

    const/4 v6, 0x1

    move-object v3, v0

    move-object v5, p6

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;->recognize([BILjava/util/Map;ZLcom/acrcloud/rec/ACRCloudConfig$RecognizerType;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public release()V
    .locals 2

    .line 523
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudClient;->cancel()V

    .line 524
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 525
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudClient;->stopPreRecord()V

    .line 526
    iget-boolean v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->isAutoRecognizeing:Z

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudClient;->cancelAutoRecognize()V

    .line 528
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->isAutoRecognizeing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    goto :goto_0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v1}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->release()V

    .line 537
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 541
    :cond_1
    goto :goto_1

    .line 539
    :catch_1
    move-exception v1

    .line 540
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 544
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_2

    .line 545
    iget-object v1, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 546
    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 550
    :cond_2
    goto :goto_2

    .line 548
    :catch_2
    move-exception v0

    .line 549
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public requestRadioMetadataAsyn(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/acrcloud/rec/ACRCloudConfig$RadioType;Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;)Z
    .locals 9
    .param p1, "gpsLat"    # Ljava/lang/String;
    .param p2, "gpsLng"    # Ljava/lang/String;
    .param p4, "radioType"    # Lcom/acrcloud/rec/ACRCloudConfig$RadioType;
    .param p5, "radioMetadataListener"    # Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/acrcloud/rec/ACRCloudConfig$RadioType;",
            "Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;",
            ")Z"
        }
    .end annotation

    .line 221
    .local p3, "freq":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 222
    const-string v1, "ACRCloudClient"

    const-string v2, "config.acrCloudPartnerDeviceInfo==null, acrcloudRadioMetadataListener==null"

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return v0

    .line 226
    :cond_0
    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    .line 227
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/acrcloud/rec/ACRCloudClient$RadioMetadataAsynTask;-><init>(Lcom/acrcloud/rec/ACRCloudClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/acrcloud/rec/ACRCloudConfig$RadioType;Lcom/acrcloud/rec/IACRCloudRadioMetadataListener;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 239
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_4
    :goto_0
    const-string v1, "ACRCloudClient"

    const-string v2, "Params Error"

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return v0
.end method

.method public reset()V
    .locals 2

    .line 435
    const-string v0, "ACRCloudClient"

    const-string v1, "reset recognize"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/acrcloud/rec/ACRCloudClient;->cancel()V

    .line 437
    return-void
.end method

.method public runAutoRecognize()Z
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 186
    return v1

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isAutoRecognizeing:Z

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_1
    :try_start_0
    new-instance v0, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    invoke-direct {v0, p0}, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;-><init>(Lcom/acrcloud/rec/ACRCloudClient;)V

    iput-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    .line 195
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    invoke-virtual {v0}, Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    nop

    .line 202
    return v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAutoRecognizeTimer:Lcom/acrcloud/rec/ACRCloudClient$ACRCloudAutoRecognizeThread;

    .line 199
    return v1
.end method

.method public startPreRecord()V
    .locals 2

    .line 403
    :try_start_0
    const-string v0, "ACRCloudClient"

    const-string v1, "start pre record"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->init()V

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isPreRecord:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 409
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startRecognize()Z
    .locals 2

    .line 297
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/acrcloud/rec/ACRCloudClient;->doRecognize(ILjava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public startRecognize(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 304
    .local p1, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isRecognizeing:Z

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/acrcloud/rec/ACRCloudClient;->doRecognize(ILjava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public stopPreRecord()V
    .locals 2

    .line 413
    :try_start_0
    const-string v0, "ACRCloudClient"

    const-string v1, "stop pre record"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isPreRecord:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->release()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->isPreRecord:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public stopRecordToRecognize()V
    .locals 2

    .line 425
    :try_start_0
    const-string v0, "ACRCloudClient"

    const-string v1, "stop record to recognize"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/acrcloud/rec/ACRCloudClient;->mWorker:Lcom/acrcloud/rec/worker/ACRCloudWorker;

    invoke-virtual {v0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->reqStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_0
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
