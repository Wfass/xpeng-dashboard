.class public Lcom/xiaopeng/lib/http/tls/LocalFileCert;
.super Ljava/lang/Object;
.source "LocalFileCert.java"


# static fields
.field public static final CERT_PATH:Ljava/lang/String; = "/private/sec/xp0109.png"

.field private static final KEY_STORE_PASSWORD:Ljava/lang/String; = "chengzi"

.field private static final KEY_STORE_TRUST_PASSWORD:Ljava/lang/String; = "chengzi"

.field private static final KEY_STORE_TRUST_PATH:Ljava/lang/String; = "index_kstp.html"

.field private static final KEY_STORE_TYPE_BKS:Ljava/lang/String; = "bks"

.field private static final KEY_STORE_TYPE_P12:Ljava/lang/String; = "PKCS12"

.field private static final TAG:Ljava/lang/String; = "LocalFileCert"

.field private static sKeyManagers:[Ljavax/net/ssl/KeyManager;

.field private static sTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getKeyManagers(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 88
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 93
    :try_start_1
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    const-string p0, "LocalFileCert"

    const-string v3, "get cert content from file"

    .line 94
    invoke-static {p0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance p0, Ljava/io/File;

    const-string v3, "/private/sec/xp0109.png"

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "LocalFileCert"

    const-string v3, "get cert content from SystemDelegate"

    .line 97
    invoke-static {p0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const-class p0, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    .line 99
    invoke-static {p0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p0

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    invoke-interface {p0, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    .line 100
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;->getCertificate()Ljava/lang/String;

    move-result-object p0

    .line 102
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PKCS12"

    .line 105
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 107
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string p0, "chengzi"

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 111
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    :goto_2
    :try_start_5
    const-string p0, "X509"

    .line 119
    invoke-static {p0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    const-string v2, "chengzi"

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 121
    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    monitor-exit v0

    return-object p0

    .line 114
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    :catch_2
    :try_start_7
    throw p0

    .line 124
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v2, "certContent can\'t be empty"

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    move-exception p0

    :try_start_8
    const-string v2, "LocalFileCert"

    const-string v3, "getKeyManagers error!"

    .line 127
    invoke-static {v2, v3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 130
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    :try_start_0
    const-string v0, "TLSv1.2"

    .line 135
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 136
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getKeyManagers(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 138
    new-instance p0, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 140
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v0

    const/16 v1, 0x1776

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-class v0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 53
    monitor-exit v0

    return-object v1

    :cond_0
    const/16 v1, 0x1775

    :try_start_1
    const-string v2, "bks"

    .line 57
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "index_kstp.html"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "chengzi"

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v3

    .line 64
    :try_start_4
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    :goto_1
    :try_start_5
    const-string p0, "X509"

    .line 73
    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 76
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    monitor-exit v0

    return-object p0

    .line 68
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 70
    :catch_2
    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    move-exception p0

    .line 79
    :try_start_8
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 p0, 0x0

    .line 83
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 158
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 159
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 160
    check-cast v2, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
