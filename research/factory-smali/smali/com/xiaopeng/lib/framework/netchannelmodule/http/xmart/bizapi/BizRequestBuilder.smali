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

    .line 50
    const-string v0, "XP-Appid"

    const-string v1, "XP-Client"

    const-string v2, "XP-Client-Encoding"

    const-string v3, "XP-Client-Type"

    const-string v4, "XP-Encryption-Type"

    const-string v5, "XP-Nonce"

    const-string v6, "XP-Uid"

    const-string v7, "XP-Authorization"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sBasicBizHeaders:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    .line 67
    const-string v1, "xp_xmart_car"

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    .line 71
    sget-object v1, Lcom/xiaopeng/lib/http/Security;->TOKEN_ALL:[Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;)V
    .locals 3
    .param p1, "request"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "method"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    .line 67
    const-string v1, "xp_xmart_car"

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    .line 68
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    .line 71
    sget-object v2, Lcom/xiaopeng/lib/http/Security;->TOKEN_ALL:[Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 81
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mMethod:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    .line 82
    iput v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    .line 83
    return-void
.end method

.method private bizHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "XP-Client-Encoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "XP-Client"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "XP-Authorization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "XP-Encryption-Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "XP-Client-Type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "XP-Uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "XP-Nonce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "XP-Appid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 253
    const/4 v0, 0x0

    goto :goto_2

    .line 250
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    .line 251
    .local v0, "result":Ljava/lang/String;
    goto :goto_2

    .line 247
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 248
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_2

    .line 244
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_2
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_2

    .line 241
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_3
    const-string v0, "3"

    .line 242
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_2

    .line 238
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_4
    const-string v0, "None"

    .line 239
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_2

    .line 235
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_5
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->generateXpClient()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_2

    .line 232
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_6
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getAuthorization()Ljava/lang/String;

    move-result-object v0

    .line 233
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_2

    .line 229
    .end local v0    # "result":Ljava/lang/String;
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    .line 230
    .restart local v0    # "result":Ljava/lang/String;
    nop

    .line 253
    :goto_2
    nop

    .line 255
    return-object v0

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
    .locals 7
    .param p0, "src"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_3

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 288
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 289
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "hv":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .end local v3    # "v":I
    .end local v4    # "hv":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 284
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private generateSignature()Ljava/lang/String;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "signed":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mMethod:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "method":Ljava/lang/String;
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getRequestHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v2

    .line 306
    .local v2, "headers":Lcom/lzy/okgo/model/HttpHeaders;
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getSignParameters(Lcom/lzy/okgo/model/HttpHeaders;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "parameter":Ljava/lang/String;
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

    .line 310
    .local v4, "md5":Ljava/lang/String;
    :goto_0
    const-string v5, "HmacSHA256"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 311
    .local v5, "hmacSHA256":Ljavax/crypto/Mac;
    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 312
    .local v6, "secretBytes":[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v8, 0x0

    array-length v9, v6

    const-string v10, "HmacSHA256"

    invoke-direct {v7, v6, v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 313
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "signedOrigin":Ljava/lang/String;
    const-string v9, "BizRequestBuilder"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateSignature origin:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v8

    .line 317
    .local v8, "sha256Encode":[B
    iget v9, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    if-nez v9, :cond_1

    .line 318
    invoke-static {v8}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    goto :goto_1

    .line 320
    :cond_1
    invoke-static {v8}, Lcom/xiaopeng/lib/http/Security;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    .line 324
    .end local v4    # "md5":Ljava/lang/String;
    .end local v5    # "hmacSHA256":Ljavax/crypto/Mac;
    .end local v6    # "secretBytes":[B
    .end local v7    # "signedOrigin":Ljava/lang/String;
    .end local v8    # "sha256Encode":[B
    :goto_1
    goto :goto_2

    .line 322
    :catch_0
    move-exception v4

    .line 323
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method private generateXpClient()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 260
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v1, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "di="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getHardwareId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ve="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v2, "br=Xiaopeng;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v2, "st=1;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const-string v2, "ln=en;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAuthorization()Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 160
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 161
    return-object v1

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->generateSignature()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "xpSignature":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 166
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "xpSign"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 170
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v5    # "key":Ljava/lang/String;
    goto :goto_0

    .line 174
    :cond_1
    :try_start_0
    iget v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    if-ne v4, v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    sget-object v4, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/http/IrdetoUtils;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 177
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    sget-object v4, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sGson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/http/Security;->buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 179
    :catch_0
    move-exception v3

    .line 180
    .local v3, "exception":Ljava/lang/NullPointerException;
    const-string v4, "BizRequestBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAuthorization fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    return-object v1
.end method

.method private getHardwareId()Ljava/lang/String;
    .locals 3

    .line 355
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "hardwareId":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid hardware ID."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_1
    :goto_0
    return-object v0
.end method

.method private getNetworkType()Ljava/lang/String;
    .locals 3

    .line 338
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 339
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 340
    .local v1, "networkType":I
    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 350
    const-string v2, "UNKNOWN"

    return-object v2

    .line 346
    :pswitch_0
    const-string v2, "4G"

    return-object v2

    .line 344
    :pswitch_1
    const-string v2, "3G"

    return-object v2

    .line 342
    :pswitch_2
    const-string v2, "2G"

    return-object v2

    .line 348
    :cond_0
    const-string v2, "WIFI"

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    instance-of v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/GetRequestAdapter;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    instance-of v0, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/PostRequestAdapter;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0

    .line 334
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSignParameters(Lcom/lzy/okgo/model/HttpHeaders;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "headers"    # Lcom/lzy/okgo/model/HttpHeaders;
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzy/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 188
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 189
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 190
    .local v2, "paramKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 197
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 198
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "XP-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 199
    goto :goto_3

    .line 202
    :cond_0
    iget-object v6, p0, Lcom/lzy/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 203
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->isEngVersion()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Duplicate keys in header and parameters!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/lzy/okgo/model/HttpHeaders;->headersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 207
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 209
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 212
    .restart local v6    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 213
    goto :goto_3

    .line 216
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 217
    const/16 v7, 0x26

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .end local v6    # "value":Ljava/lang/String;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mAppId:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public body(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0
    .param p1, "jsonBody"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public build(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 4
    .param p1, "secretKey"    # Ljava/lang/String;

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants;->CAR_SECRET:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mSecretKey:Ljava/lang/String;

    .line 135
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->sBasicBizHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, "item":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->bizHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 138
    goto :goto_1

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    invoke-interface {v3, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 142
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->generateSignature()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "xpSignature":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    const-string v2, "XP-Signature"

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mMethod:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;->POST:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizConstants$METHOD;

    if-ne v1, v2, :cond_4

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const-string v1, "{}"

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mBody:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    return-object v1
.end method

.method public customTokensForAuth([Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0
    .param p1, "tokens"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mTokensForAuthorization:[Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public enableIrdetoEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 1

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    .line 92
    return-object p0
.end method

.method public enableSecurityEncoding()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 1

    .line 96
    invoke-static {}, Lcom/xiaopeng/lib/http/Security;->getActiveEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/http/Security$EncryptionType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mEncryptionType:I

    .line 97
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

    .line 101
    .local p1, "extParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mNeedAuthorizationInfo:Z

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mExtAuthorizationInfo:Ljava/util/Map;

    .line 103
    return-object p0
.end method

.method public setExtHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 1
    .param p1, "header"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    const-string v0, "XP-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 120
    :cond_0
    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/bizapi/BizRequestBuilder;->mUid:Ljava/lang/String;

    .line 113
    return-object p0
.end method
