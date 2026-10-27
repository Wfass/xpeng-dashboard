.class public Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
.super Ljava/lang/Object;
.source "MituWatchInquirer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchInquirerHolder;,
        Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;,
        Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_TYPE_BASE:I = 0x1

.field private static final CALLBACK_TYPE_GET_LAST_LOCATION:I = 0x4

.field private static final CALLBACK_TYPE_LOCATION_UPDATE:I = 0x3

.field private static final CALLBACK_TYPE_STATUS:I = 0x2

.field private static final ERROR_CODE_UN_AUTH:I = -0xf

.field private static final LOCATION_UPDATE_INTERVAL:I = 0x2710

.field private static final MSG_QUERY_RETRY_BASE:I = 0x1

.field private static final MSG_QUERY_RETRY_GET_POSITION:I = 0x4

.field private static final MSG_QUERY_RETRY_LOCATION_UPDATE:I = 0x3

.field private static final MSG_QUERY_RETRY_STATUS:I = 0x2

.field private static final REQUEST_RETRY_INTERVAL:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MituWatchInquirer"

.field private static final mBaseInfoApi:Ljava/lang/String; = "/api/deviceInfo"

.field private static mHttpRequestFailBit:I = 0x0

.field private static mHttpRequestRunBit:I = 0x0

.field private static mLatitude:Ljava/lang/String; = null

.field private static final mLocationGetApi:Ljava/lang/String; = "/api/loc"

.field private static final mLocationUpdateApi:Ljava/lang/String; = "/api/execLoc"

.field private static mLongitude:Ljava/lang/String; = null

.field private static final mMituBaseUrl:Ljava/lang/String; = "https://business.xunkids.com"

.field private static mPosDescription:Ljava/lang/String; = null

.field private static mPosTimeStamp:Ljava/lang/String; = null

.field private static final mStatusApi:Ljava/lang/String; = "/api/deviceStatus"

.field private static mWatchBindStatus:Ljava/lang/String;

.field private static mWatchEid:Ljava/lang/String;

.field private static mWatchHeader:Ljava/lang/String;

.field private static mWatchNickyName:Ljava/lang/String;

.field private static mWatchOpenId:Ljava/lang/String;

.field private static mWatchPhone:Ljava/lang/String;

.field private static mWatchPower:Ljava/lang/String;

.field private static mWatchPowerTimeStamp:Ljava/lang/String;

.field private static mWatchWorkStatus:Ljava/lang/String;

.field private static mXpAppid:Ljava/lang/String;

.field private static mXpAppkey:Ljava/lang/String;

.field private static updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;


# instance fields
.field private locationUpdateTick:J

.field private mInquireHandler:Landroid/os/Handler;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "27167660"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mXpAppid:Ljava/lang/String;

    .line 49
    const-string v0, "u8lYEE3uM04q137L"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mXpAppkey:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    .line 53
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    .line 56
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    .line 57
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchNickyName:Ljava/lang/String;

    .line 58
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchHeader:Ljava/lang/String;

    .line 59
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPhone:Ljava/lang/String;

    .line 60
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPower:Ljava/lang/String;

    .line 61
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPowerTimeStamp:Ljava/lang/String;

    .line 62
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchWorkStatus:Ljava/lang/String;

    .line 64
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLongitude:Ljava/lang/String;

    .line 65
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLatitude:Ljava/lang/String;

    .line 66
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosTimeStamp:Ljava/lang/String;

    .line 67
    const-string v1, "-1"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosDescription:Ljava/lang/String;

    .line 69
    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    .line 144
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestRunBit:I

    .line 145
    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestFailBit:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->locationUpdateTick:J

    .line 73
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mInquireHandler:Landroid/os/Handler;

    .line 280
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 281
    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 282
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .param p1, "x1"    # Landroid/os/Message;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->handleMyMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 41
    sput-object p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$172(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 41
    sget v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestRunBit:I

    and-int/2addr v0, p0

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestRunBit:I

    return v0
.end method

.method static synthetic access$272(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 41
    sget v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestFailBit:I

    and-int/2addr v0, p0

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestFailBit:I

    return v0
.end method

.method static synthetic access$276(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 41
    sget v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestFailBit:I

    or-int/2addr v0, p0

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestFailBit:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 41
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->isJSON(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # [B

    .line 41
    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->decrypt([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->retrieveBaseInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->retrieveStatusInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->retrieveUpdateLocationInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->retrieveGetLocationInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mInquireHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static decrypt([B[B)Ljava/lang/String;
    .locals 5
    .param p0, "encryptedMsg"    # [B
    .param p1, "secret"    # [B

    .line 469
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 471
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 473
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 474
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 475
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 476
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MituWatchInquirer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decrypt e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method private static encrypt(Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "secret"    # [B

    .line 504
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 505
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 506
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 507
    .local v2, "byteContent":[B
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 508
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .local v3, "result":[B
    return-object v3

    .line 510
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "byteContent":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private generatePositonData()Ljava/lang/String;
    .locals 5

    .line 788
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 790
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "long"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    const-string v1, "lat"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLatitude:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    const-string v1, "timestamp"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v1, "desc"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 795
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generatePositonData e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string/jumbo v2, "{}"

    return-object v2
.end method

.method private generatePowerData()Ljava/lang/String;
    .locals 5

    .line 802
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 804
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "power"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPower:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    const-string v1, "timestamp"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPowerTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 806
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generatePowerData e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string/jumbo v2, "{}"

    return-object v2
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .locals 1

    .line 288
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchInquirerHolder;->access$1300()Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    move-result-object v0

    return-object v0
.end method

.method private static getLogId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "merchantId"    # Ljava/lang/String;

    .line 517
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "code":Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmssSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "formatDate":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 523
    .local v2, "d":Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 524
    .local v3, "date":Ljava/lang/String;
    const-string v4, "MituWatchInquirer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLogId, date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 519
    .end local v1    # "formatDate":Ljava/text/SimpleDateFormat;
    .end local v2    # "d":Ljava/util/Date;
    .end local v3    # "date":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getNonce()Ljava/lang/String;
    .locals 10

    .line 483
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 484
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 485
    .local v1, "dos":Ljava/io/DataOutputStream;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 486
    .local v2, "random":Ljava/util/Random;
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 487
    .local v4, "a":I
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 488
    .local v3, "b":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 490
    .local v5, "c":I
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 491
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 492
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 493
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    goto :goto_0

    .line 494
    :catch_0
    move-exception v6

    .line 495
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "MituWatchInquirer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNonce e="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v6    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 498
    .local v6, "aa":[B
    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v7

    .line 499
    .local v7, "bb":[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    return-object v8
.end method

.method private static getSecret([BLjava/lang/String;)[B
    .locals 4
    .param p0, "nonce"    # [B
    .param p1, "appKey"    # Ljava/lang/String;

    .line 456
    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 457
    .local v0, "secretBytes":[B
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 458
    .local v1, "content":[B
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 459
    const/4 v2, 0x4

    invoke-static {p0, v2, v1, v3, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 460
    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 461
    .end local v0    # "secretBytes":[B
    .end local v1    # "content":[B
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MituWatchInquirer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecret e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMyMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 814
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 825
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getLastLoction(Z)V

    .line 826
    goto :goto_0

    .line 822
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->requestLocationUpdate(Z)V

    .line 823
    goto :goto_0

    .line 819
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchStatus(Z)V

    .line 820
    goto :goto_0

    .line 816
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchBaseInfo(Ljava/lang/String;Z)V

    .line 817
    nop

    .line 830
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isJSON(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 562
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .local v0, "obj":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 564
    const/4 v1, 0x1

    return v1

    .line 565
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$retrieveBaseInfo$1(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)V
    .locals 1

    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getLastLoction(Z)V

    .line 652
    return-void
.end method

.method public static synthetic lambda$updateWatchPositionInfo$0(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)V
    .locals 1

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getLastLoction(Z)V

    .line 422
    return-void
.end method

.method private notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 571
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 573
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    if-eqz v1, :cond_0

    .line 575
    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;->onStatusUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyError e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)V
    .locals 12
    .param p1, "jsonData"    # Ljava/lang/String;
    .param p2, "api"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;

    .line 530
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request,running bits=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestRunBit:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",fail bits=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestFailBit:I

    .line 531
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cur type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->access$1400(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestRunBit:I

    invoke-static {p3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->access$1400(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    sput v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mHttpRequestRunBit:I

    .line 534
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getNonce()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "eString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 536
    .local v1, "l":[B
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mXpAppkey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getSecret([BLjava/lang/String;)[B

    move-result-object v2

    .line 537
    .local v2, "secretes":[B
    invoke-static {p1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 538
    .local v3, "data":[B
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 539
    .local v4, "dataString2":Ljava/lang/String;
    const-string v5, "POST"

    sget-object v6, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mXpAppid:Ljava/lang/String;

    invoke-static {v5, p2, v6, v2, v4}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "sign":Ljava/lang/String;
    const/4 v6, 0x0

    .line 543
    .local v6, "lString":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "utf-8"

    .line 544
    invoke-static {v4, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&app_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mXpAppid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&signature="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "utf-8"

    .line 545
    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&_nonce="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "utf-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&log_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mXpAppid:Ljava/lang/String;

    .line 546
    invoke-static {v8}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getLogId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 550
    nop

    .line 552
    const-string v7, "application/x-www-form-urlencoded"

    invoke-static {v7}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v7

    invoke-static {v7, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v7

    .line 553
    .local v7, "body":Lokhttp3/RequestBody;
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://business.xunkids.com"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "Accept-Charset"

    const-string v10, "utf-8"

    invoke-virtual {v8, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    const-string v9, "Content-Encoding"

    const-string v10, "utf-8"

    .line 554
    invoke-virtual {v8, v9, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 555
    .local v8, "request":Lokhttp3/Request;
    const-string v9, "MituWatchInquirer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request url="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "https://business.xunkids.com"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",body="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p3, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;->setSecretBytes([B)V

    .line 557
    iget-object v9, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v9, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9, p3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 558
    return-void

    .line 547
    .end local v7    # "body":Lokhttp3/RequestBody;
    .end local v8    # "request":Lokhttp3/Request;
    :catch_0
    move-exception v7

    .line 548
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "MituWatchInquirer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "request fail,e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private retrieveBaseInfo(Ljava/lang/String;)V
    .locals 12
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 584
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "code"

    const/16 v2, -0x10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 586
    .local v1, "code":I
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveBaseInfo,code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-ltz v1, :cond_d

    .line 589
    const-string v2, "eid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, "watchEid":Ljava/lang/String;
    const-string v3, "nick"

    const-string v4, "-1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "name":Ljava/lang/String;
    const-string v4, "head"

    const-string v5, "-1"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "header":Ljava/lang/String;
    const-string v5, "phone"

    const-string v6, "-1"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "phone":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 595
    const-string v6, "-1"

    move-object v5, v6

    .line 597
    :cond_0
    const-string v6, "MituWatchInquirer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveBaseInfo,name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",phone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",old bind status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",header len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 597
    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v6, 0x0

    .line 601
    .local v6, "notifyObj":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 602
    .local v7, "doFullQuery":Z
    const-string v8, "1"

    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 603
    if-nez v6, :cond_1

    .line 604
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v8

    .line 606
    :cond_1
    const-string v8, "bind_stat"

    const-string v9, "1"

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    const-string v8, "1"

    sput-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    .line 608
    const/4 v7, 0x1

    .line 610
    :cond_2
    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchNickyName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 611
    if-nez v6, :cond_3

    .line 612
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v8

    .line 614
    :cond_3
    const-string v8, "nickname"

    invoke-virtual {v6, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchNickyName:Ljava/lang/String;

    .line 617
    :cond_4
    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPhone:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 618
    if-nez v6, :cond_5

    .line 619
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v8

    .line 621
    :cond_5
    const-string v8, "phone"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 622
    sput-object v5, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPhone:Ljava/lang/String;

    .line 624
    :cond_6
    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchHeader:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 625
    if-nez v6, :cond_7

    .line 626
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move-object v6, v8

    .line 628
    :cond_7
    const-string/jumbo v8, "watch_head"

    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    sput-object v4, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchHeader:Ljava/lang/String;

    .line 631
    :cond_8
    if-eqz v6, :cond_9

    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    if-eqz v8, :cond_9

    .line 632
    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;->onStatusUpdate(Ljava/lang/String;)V

    .line 635
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 637
    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    .line 640
    :cond_a
    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    if-eqz v8, :cond_b

    const-string v8, "-1"

    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 641
    if-eqz v7, :cond_c

    .line 644
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getWatchStatus(Z)V

    .line 646
    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->requestLocationUpdate(Z)V

    .line 648
    invoke-virtual {p0, v8}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->getLastLoction(Z)V

    .line 650
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v8

    new-instance v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchInquirer$7cy79ch13dvCO6BEZ24V5QWzxG8;

    invoke-direct {v9, p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchInquirer$7cy79ch13dvCO6BEZ24V5QWzxG8;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)V

    const-wide/16 v10, 0x2710

    invoke-virtual {v8, v9, v10, v11}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 655
    :cond_b
    const-string v8, "MituWatchInquirer"

    const-string v9, "retrieveBaseInfo, get watch eid null"

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v8, "-1"

    sput-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    .line 658
    .end local v2    # "watchEid":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "header":Ljava/lang/String;
    .end local v5    # "phone":Ljava/lang/String;
    .end local v6    # "notifyObj":Lorg/json/JSONObject;
    .end local v7    # "doFullQuery":Z
    :cond_c
    :goto_0
    goto :goto_1

    .line 659
    :cond_d
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveBaseInfo, fail code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/16 v2, -0xf

    if-ne v2, v1, :cond_e

    .line 661
    const-string v2, "0"

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    .line 662
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->resetInfo()V

    .line 663
    const-string v2, "bind_stat"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 666
    :cond_e
    const-string v2, "-100"

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    .line 667
    const-string v2, "get_result"

    const-string v3, "-1"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :goto_1
    goto :goto_2

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MituWatchInquirer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveBaseInfo e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v1, "-100"

    sput-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    .line 674
    const-string v1, "get_result"

    const-string v2, "-1"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private retrieveGetLocationInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 740
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "code"

    const/16 v2, -0x10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 742
    .local v1, "code":I
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveGetLocationInfo,code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    if-ltz v1, :cond_5

    .line 745
    const-string v2, "timestamp"

    const-string v3, "-1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "timestamp":Ljava/lang/String;
    const-string v3, "result"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    move-object v0, v3

    .line 747
    const-string v3, "location"

    const-string v4, "-1,-1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 748
    .local v3, "location":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "locations":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 750
    .local v5, "longitude":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 751
    .local v6, "latitude":Ljava/lang/String;
    const-string v7, "desc"

    const-string v8, "-1"

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "desc":Ljava/lang/String;
    const-string v8, "MituWatchInquirer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrieveGetLocationInfo,longitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",latitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",timestamp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",desc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",old longi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLongitude:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",lati="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLatitude:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",timestamp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosTimeStamp:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",desc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v8, 0x0

    .line 757
    .local v8, "shouldNotify":Z
    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLongitude:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 758
    const/4 v8, 0x1

    .line 759
    sput-object v5, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLongitude:Ljava/lang/String;

    .line 761
    :cond_0
    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLatitude:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 762
    const/4 v8, 0x1

    .line 763
    sput-object v6, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLatitude:Ljava/lang/String;

    .line 765
    :cond_1
    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 766
    const/4 v8, 0x1

    .line 767
    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosTimeStamp:Ljava/lang/String;

    .line 769
    :cond_2
    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosDescription:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 770
    const/4 v8, 0x1

    .line 771
    sput-object v7, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosDescription:Ljava/lang/String;

    .line 773
    :cond_3
    if-eqz v8, :cond_4

    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    if-eqz v9, :cond_4

    .line 774
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v9

    .line 775
    const-string v9, "position"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->generatePositonData()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    sget-object v9, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;->onStatusUpdate(Ljava/lang/String;)V

    .line 778
    .end local v2    # "timestamp":Ljava/lang/String;
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "locations":[Ljava/lang/String;
    .end local v5    # "longitude":Ljava/lang/String;
    .end local v6    # "latitude":Ljava/lang/String;
    .end local v7    # "desc":Ljava/lang/String;
    .end local v8    # "shouldNotify":Z
    :cond_4
    goto :goto_0

    .line 779
    :cond_5
    const-string v2, "get_result"

    const-string v3, "-4"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :goto_0
    goto :goto_1

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MituWatchInquirer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveGetLocationInfo,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "get_result"

    const-string v2, "-4"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private retrieveStatusInfo(Ljava/lang/String;)V
    .locals 9
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 680
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "code"

    const/16 v2, -0x10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 682
    .local v1, "code":I
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveStatusInfo,code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    if-ltz v1, :cond_6

    .line 685
    const-string/jumbo v2, "watch_status"

    const-string v3, "0_-1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "watchStatus":Ljava/lang/String;
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object v2, v3

    .line 687
    const-string v3, "battery_level"

    const-string v5, "0_-1"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 688
    .local v3, "power":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 689
    .local v5, "powerInfo":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    .line 690
    .local v6, "powerTimeStamp":Ljava/lang/String;
    aget-object v4, v5, v4

    move-object v3, v4

    .line 691
    const-string v4, "MituWatchInquirer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveStatusInfo,work stat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",power:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",old stat:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchWorkStatus:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",power:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPower:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const/4 v4, 0x0

    .line 694
    .local v4, "notifyObj":Lorg/json/JSONObject;
    sget-object v7, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchWorkStatus:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 695
    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchWorkStatus:Ljava/lang/String;

    .line 696
    if-nez v4, :cond_0

    .line 697
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v7

    .line 699
    :cond_0
    const-string v7, "network_stat"

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 701
    :cond_1
    sget-object v7, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPower:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPowerTimeStamp:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 702
    :cond_2
    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPower:Ljava/lang/String;

    .line 703
    sput-object v6, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPowerTimeStamp:Ljava/lang/String;

    .line 704
    if-nez v4, :cond_3

    .line 705
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move-object v4, v7

    .line 707
    :cond_3
    const-string v7, "power"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->generatePowerData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 709
    :cond_4
    if-eqz v4, :cond_5

    sget-object v7, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    if-eqz v7, :cond_5

    .line 710
    sget-object v7, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;->onStatusUpdate(Ljava/lang/String;)V

    .line 712
    .end local v2    # "watchStatus":Ljava/lang/String;
    .end local v3    # "power":Ljava/lang/String;
    .end local v4    # "notifyObj":Lorg/json/JSONObject;
    .end local v5    # "powerInfo":[Ljava/lang/String;
    .end local v6    # "powerTimeStamp":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 713
    :cond_6
    const-string v2, "get_result"

    const-string v3, "-2"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :goto_0
    goto :goto_1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MituWatchInquirer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveStatusInfo,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v1, "get_result"

    const-string v2, "-2"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private retrieveUpdateLocationInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 723
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 724
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "code"

    const/16 v2, -0x10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 725
    .local v1, "code":I
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrieveUpdateLocationInfo,code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    if-ltz v1, :cond_0

    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "code":I
    goto :goto_0

    .line 730
    .restart local v0    # "obj":Lorg/json/JSONObject;
    .restart local v1    # "code":I
    :cond_0
    const-string v2, "get_result"

    const-string v3, "-3"

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v0    # "obj":Lorg/json/JSONObject;
    .end local v1    # "code":I
    :goto_0
    goto :goto_1

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MituWatchInquirer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retrieveUpdateLocationInfo,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v1, "get_result"

    const-string v2, "-3"

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->notifyKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "secret"    # [B
    .param p4, "data"    # Ljava/lang/String;

    .line 447
    const-string v0, "%s&%s&app_id=%s&data=%s&%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    new-instance v2, Ljava/lang/String;

    .line 448
    invoke-static {p3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 447
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha1(Ljava/lang/String;)[B

    move-result-object v1

    .line 451
    .local v1, "signature":[B
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public declared-synchronized getLastLoction(Z)V
    .locals 6
    .param p1, "retry"    # Z

    monitor-enter p0

    .line 367
    :try_start_0
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastLoction,retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "MituWatchInquirer"

    const-string v1, "getLastLoction,openid is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 373
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "-1"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 378
    :cond_1
    const-string v0, "/api/loc"

    .line 379
    .local v0, "api":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_2
    const-string v2, "openId"

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v2, "eid"

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    goto :goto_0

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "MituWatchInquirer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBaseInfo e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;IZ)V

    invoke-direct {p0, v2, v0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->request(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 374
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    :try_start_4
    const-string v0, "MituWatchInquirer"

    const-string v1, "getLastLoction,eid is null or invalid"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 366
    .end local p1    # "retry":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    throw p1
.end method

.method public declared-synchronized getWatchBaseInfo(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "retry"    # Z

    monitor-enter p0

    .line 292
    :try_start_0
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWatchBaseInfo,retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "/api/deviceInfo"

    .line 294
    .local v0, "api":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 295
    .local v1, "obj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 296
    sput-object p1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :try_start_1
    const-string v2, "openId"

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "MituWatchInquirer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBaseInfo e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4, p2}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;IZ)V

    invoke-direct {p0, v2, v0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->request(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 298
    :cond_0
    :try_start_3
    const-string v2, "MituWatchInquirer"

    const-string v3, "getBaseInfo,openId is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 291
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local p1    # "openId":Ljava/lang/String;
    .end local p2    # "retry":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    throw p1
.end method

.method public getWatchInfo()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",openid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWatchStatus(Z)V
    .locals 6
    .param p1, "retry"    # Z

    monitor-enter p0

    .line 310
    :try_start_0
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWatchStatus,retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 312
    const-string v0, "MituWatchInquirer"

    const-string v1, "getWatchStatus,openid is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "-1"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 321
    :cond_1
    const-string v0, "/api/deviceStatus"

    .line 322
    .local v0, "api":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_2
    const-string v2, "openId"

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v2, "eid"

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "MituWatchInquirer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBaseInfo e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;IZ)V

    invoke-direct {p0, v2, v0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->request(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 317
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    :try_start_4
    const-string v0, "MituWatchInquirer"

    const-string v1, "getWatchStatus,eid is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 309
    .end local p1    # "retry":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    throw p1
.end method

.method public declared-synchronized requestLocationUpdate(Z)V
    .locals 6
    .param p1, "retry"    # Z

    monitor-enter p0

    .line 334
    :try_start_0
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLocationUpdate,retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->locationUpdateTick:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->locationUpdateTick:J

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->locationUpdateTick:J

    sub-long/2addr v0, v2

    .line 339
    .local v0, "delta":J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 340
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLocationUpdate,delta tick="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    .line 344
    .end local v0    # "delta":J
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 345
    const-string v0, "MituWatchInquirer"

    const-string v1, "requestLocationUpdate,openid is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 349
    :cond_2
    :try_start_2
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "-1"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 354
    :cond_3
    const-string v0, "/api/execLoc"

    .line 355
    .local v0, "api":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_3
    const-string v2, "openId"

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    const-string v2, "eid"

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    goto :goto_1

    .line 360
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "MituWatchInquirer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBaseInfo e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;IZ)V

    invoke-direct {p0, v2, v0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->request(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituHttpCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 350
    .end local v0    # "api":Ljava/lang/String;
    .end local v1    # "obj":Lorg/json/JSONObject;
    :cond_4
    :goto_2
    :try_start_5
    const-string v0, "MituWatchInquirer"

    const-string v1, "requestLocationUpdate,eid is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 333
    .end local p1    # "retry":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    throw p1
.end method

.method public declared-synchronized resetInfo()V
    .locals 2

    monitor-enter p0

    .line 430
    :try_start_0
    const-string v0, "MituWatchInquirer"

    const-string v1, "reset watch info"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    .line 432
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    .line 433
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    .line 434
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchNickyName:Ljava/lang/String;

    .line 435
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchHeader:Ljava/lang/String;

    .line 436
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPhone:Ljava/lang/String;

    .line 437
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPower:Ljava/lang/String;

    .line 438
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPowerTimeStamp:Ljava/lang/String;

    .line 439
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchWorkStatus:Ljava/lang/String;

    .line 440
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLongitude:Ljava/lang/String;

    .line 441
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mLatitude:Ljava/lang/String;

    .line 442
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosTimeStamp:Ljava/lang/String;

    .line 443
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mPosDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    monitor-exit p0

    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    throw v0
.end method

.method public setUpdateListener(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    .line 391
    sput-object p1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->updateListener:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$MituWatchUpdateListener;

    .line 392
    return-void
.end method

.method public updateDeviceInfo(Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;

    .line 399
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    .line 400
    .local v0, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 401
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 402
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/iot/devices/MituWatchDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 404
    :cond_0
    const-string v1, "bind_stat"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchBindStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v1, "watch_head"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchHeader:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v1, "nickname"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchNickyName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v1, "phone"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchPhone:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "position"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->generatePositonData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v1, "power"

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->generatePowerData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v1, "network_stat"

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchWorkStatus:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-void
.end method

.method public updateWatchPositionInfo()V
    .locals 6

    .line 414
    const-string v0, "MituWatchInquirer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWatchInfo,idO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",idE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "-1"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchOpenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->mWatchEid:Ljava/lang/String;

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->locationUpdateTick:J

    sub-long/2addr v0, v2

    .line 418
    .local v0, "delta":J
    const-wide/16 v2, 0x2710

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 419
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->requestLocationUpdate(Z)V

    .line 420
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchInquirer$EKoRzyNrPtAjnp2AJ_-8Leflc2c;

    invoke-direct {v5, p0}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/-$$Lambda$MituWatchInquirer$EKoRzyNrPtAjnp2AJ_-8Leflc2c;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;)V

    invoke-virtual {v4, v5, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 424
    :cond_0
    const-string v2, "MituWatchInquirer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWatchInfo too much,delta ms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    .end local v0    # "delta":J
    :cond_1
    :goto_0
    return-void
.end method
