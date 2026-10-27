.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
.super Ljava/lang/Object;
.source "BizRequestBuilder.java"


# static fields
.field private static final EMPTY_BODY:Ljava/lang/String; = ""

.field private static final NETWORK_TYPE_2G:Ljava/lang/String; = "2G"

.field private static final NETWORK_TYPE_3G:Ljava/lang/String; = "3G"

.field private static final NETWORK_TYPE_4G:Ljava/lang/String; = "4G"

.field private static final NETWORK_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field private static final TAG:Ljava/lang/String; = "BizRequestBuilder"

.field private static final sBasicBizHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGson:Lcom/google/gson/Gson;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mCarModel:Ljava/lang/String;

.field private mEncryptionType:I

.field private mExtAuthorizationInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

.field private mNeedAuthorizationInfo:Z

.field private mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

.field private mSecretKey:Ljava/lang/String;

.field private mTokensForAuthorization:[Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "XP-Appid"

    const-string v1, "XP-Client"

    const-string v2, "XP-Client-Encoding"

    const-string v3, "XP-Client-Type"

    const-string v4, "XP-Encryption-Type"

    const-string v5, "XP-Nonce"

    const-string v6, "XP-Uid"

    const-string v7, "XP-Authorization"

    .line 51
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sBasicBizHeaders:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    const-string v1, "xp_xmart_car"

    .line 68
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    const-string v1, ""

    .line 69
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    .line 72
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->TOKEN_ALL:[Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getCarModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mCarModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    const-string v1, "xp_xmart_car"

    .line 68
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    const-string v1, ""

    .line 69
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    .line 72
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->TOKEN_ALL:[Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getCarModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mCarModel:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 83
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mMethod:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    .line 84
    iput v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    return-void
.end method

.method private bizHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "XP-Client-Encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "XP-Client"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "XP-Authorization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "XP-Encryption-Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "XP-Client-Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "XP-Uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "XP-Nonce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "XP-Appid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_2

    .line 257
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    goto :goto_2

    .line 254
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 251
    :pswitch_2
    iget p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_3
    const-string p1, "3"

    goto :goto_2

    :pswitch_4
    const-string p1, "None"

    goto :goto_2

    .line 242
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->generateXpClient()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 239
    :pswitch_6
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getAuthorization()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 236
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    :goto_2
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x72136839 -> :sswitch_7
        -0x715cb346 -> :sswitch_6
        -0x65587025 -> :sswitch_5
        -0x22561759 -> :sswitch_4
        0x15d9226f -> :sswitch_3
        0x2fbafa44 -> :sswitch_2
        0x32d47860 -> :sswitch_1
        0x3e1e0840 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_3

    .line 287
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 291
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 292
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 293
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateSignature()Ljava/lang/String;
    .locals 10

    const-string v0, "UTF-8"

    const-string v1, "HmacSHA256"

    .line 307
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mMethod:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getRequestHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v3

    .line 310
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getSignParameters(Lcom/lzy/okgo/model/HttpHeaders;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    invoke-static {v4}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    :goto_0
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 315
    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 316
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v8, 0x0

    array-length v9, v6

    invoke-direct {v7, v6, v8, v9, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x26

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "BizRequestBuilder"

    .line 318
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSignature origin:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 321
    iget v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    if-nez v1, :cond_1

    .line 322
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 324
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/lib/http/Security;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 327
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method private generateXpClient()Ljava/lang/String;
    .locals 5

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "di="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ve="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "br=Xiaopeng;"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mCarModel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "st=1;"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ln="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAuthorization()Ljava/lang/String;
    .locals 6

    .line 167
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->generateSignature()Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v4, "xpSign"

    .line 173
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 176
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 177
    iget-object v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    if-ne v0, v3, :cond_2

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/http/IrdetoUtils;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/http/Security;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthorization fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BizRequestBuilder"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private getCarModel()Ljava/lang/String;
    .locals 3

    .line 367
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method private getHardwareId()Ljava/lang/String;
    .locals 2

    .line 359
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid hardware ID."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getNetworkType()Ljava/lang/String;
    .locals 2

    .line 342
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const-string v0, "UNKNOWN"

    return-object v0

    :cond_0
    const-string v0, "WIFI"

    return-object v0

    :cond_1
    const-string v0, "4G"

    return-object v0

    :cond_2
    const-string v0, "3G"

    return-object v0

    :cond_3
    const-string v0, "2G"

    return-object v0
.end method

.method private getRequestHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    instance-of v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;

    if-eqz v1, :cond_0

    .line 334
    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0

    .line 335
    :cond_0
    instance-of v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;

    if-eqz v1, :cond_1

    .line 336
    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSignParameters(Lcom/lzy/okgo/model/HttpHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzy/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 203
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 204
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "XP-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    .line 209
    :cond_0
    iget-object v5, p0, Lcom/lzy/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Duplicate keys in header and parameters!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/lzy/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 214
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 216
    :cond_3
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 223
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    const/16 v6, 0x26

    .line 224
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method public body(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public build(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 3

    if-eqz p1, :cond_0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_0
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants;->CAR_SECRET:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    .line 142
    :goto_0
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sBasicBizHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->bizHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    goto :goto_1

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->generateSignature()Ljava/lang/String;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    const-string v1, "XP-Signature"

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mMethod:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->POST:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    if-ne p1, v0, :cond_4

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "{}"

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    return-object p1
.end method

.method public customTokensForAuth([Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    return-object p0
.end method

.method public enableIrdetoEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    return-object p0
.end method

.method public enableSecurityEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 1

    .line 98
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->getActiveEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/Security$EncryptionType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    return-object p0
.end method

.method public needAuthorizationInfo(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    return-object p0
.end method

.method public setCarModel(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mCarModel:Ljava/lang/String;

    return-object p0
.end method

.method public setExtHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 1

    const-string v0, "XP-"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    :cond_0
    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    return-object p0
.end method
