.class public Lcom/xiaopeng/commonfunc/utils/a/c;
.super Ljava/lang/Object;
.source "XmartV1IndivHelper.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/utils/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/a/c$a;
    }
.end annotation


# static fields
.field private static final pu:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "INDIV_SERVICE"

    .line 45
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/a/c;->pu:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bf(Ljava/lang/String;)[B
    .locals 3
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

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 62
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 63
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 67
    const/4 p0, 0x0

    :goto_0
    const-string v0, "XmartV1IndivHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaopeng/lib/security/b;->D([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-object p0
.end method

.method private static c([B[B)Ljava/lang/String;
    .locals 2

    .line 74
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 75
    const-string p1, "AES/ECB/PKCS5Padding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 76
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 77
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 78
    new-instance p1, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 79
    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    const/4 p0, 0x0

    return-object p0
.end method

.method public static eJ()Lcom/xiaopeng/commonfunc/utils/a/c;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/a/c$a;->eK()Lcom/xiaopeng/commonfunc/utils/a/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Z(Landroid/content/Context;)V
    .locals 2

    .line 162
    const-string v0, "XmartV1IndivHelper"

    const-string v1, "Individual actions were finished!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    const-string v1, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/xiaopeng/lib/security/a;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    const-string p1, "XmartV1IndivHelper"

    const-string p2, "Build the individual request ......"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 97
    const-string p2, "version"

    sget-byte v0, Lcom/xiaopeng/lib/security/xmartv1/a;->VV:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-class p2, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p2

    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {p2, v0}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 100
    invoke-interface {p2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/commonfunc/utils/a/c;->pu:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 101
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object p1

    .line 100
    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/xiaopeng/lib/security/a;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 0

    .line 143
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Ljava/lang/String;
    .locals 4

    .line 113
    nop

    .line 114
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p1

    .line 116
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string v1, "XmartV1IndivHelper"

    const-string v2, "Get individual info success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    const-string p1, "secreteKey"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/a/c;->bf(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/commonfunc/utils/a/c;->c([B[B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :catch_1
    move-exception p1

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const-string p1, "XmartV1IndivHelper"

    const-string v1, "Get individual info failed"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_0
    nop

    .line 131
    :goto_1
    return-object v0
.end method

.method public c(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z
    .locals 0

    .line 154
    const/4 p1, 0x1

    return p1
.end method
