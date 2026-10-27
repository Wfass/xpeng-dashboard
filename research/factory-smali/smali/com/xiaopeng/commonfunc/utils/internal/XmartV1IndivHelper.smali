.class public Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;
.super Ljava/lang/Object;
.source "XmartV1IndivHelper.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/utils/internal/IIndivInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XmartV1IndivHelper"

.field private static final URL_INDIV_SERVICE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INDIV_SERVICE"

    .line 45
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;->URL_INDIV_SERVICE:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt([B[B)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # [B
    .param p1, "password"    # [B

    .line 74
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 75
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 76
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 77
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 78
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 79
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper$Holder;->access$000()Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getMd5(Ljava/lang/String;)[B
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 59
    const-string v0, "XmartV1IndivHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, "bytes":[B
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 63
    .local v1, "digest":Ljava/security/MessageDigest;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 65
    .end local v1    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 67
    :goto_0
    const-string v1, "XmartV1IndivHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public buildIndivRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "security"    # Lcom/xiaopeng/lib/security/ISecurityModule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    const-string v0, "XmartV1IndivHelper"

    const-string v1, "Build the individual request ......"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "version"

    sget-byte v2, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->ALGORITHM_DEFAULT_REVISION:B

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 100
    .local v1, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;->URL_INDIV_SERVICE:Ljava/lang/String;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 101
    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    .line 102
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    .line 100
    return-object v2
.end method

.method public buildIndivSavingRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "security"    # Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkIndivSavingResult(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z
    .locals 1
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public getIndivDataFromResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Ljava/lang/String;
    .locals 6
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;

    move-result-object v1

    .line 116
    .local v1, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    if-eqz v1, :cond_0

    const/16 v2, 0xc8

    :try_start_0
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/server/ServerBean;->getCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 117
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/server/ServerBean;->getData()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    const-string v3, "XmartV1IndivHelper"

    const-string v4, "Get individual info success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "secreteKey"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 122
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 123
    .local v4, "bytes":[B
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;->getMd5(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;->decrypt([B[B)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 124
    return-object v0

    .line 127
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "bytes":[B
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const-string v3, "XmartV1IndivHelper"

    const-string v4, "Get individual info failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 130
    :cond_0
    nop

    .line 131
    :goto_0
    return-object v0
.end method

.method public notifyIndivFinished(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    const-string v0, "XmartV1IndivHelper"

    const-string v1, "Individual actions were finished!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
