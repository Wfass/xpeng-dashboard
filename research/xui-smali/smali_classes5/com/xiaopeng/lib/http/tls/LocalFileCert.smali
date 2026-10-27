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
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "LocalFileCert"

    const-string v4, "get cert content from file"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v2, Ljava/io/File;

    const-string v4, "/private/sec/xp0109.png"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "certContent":Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v2    # "certContent":Ljava/lang/String;
    :cond_1
    const-string v2, "LocalFileCert"

    const-string v4, "get cert content from SystemDelegate"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const-class v2, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    .line 99
    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    invoke-interface {v2, v4}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    .line 100
    .local v2, "systemDelegate":Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;->getCertificate()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "systemDelegate":Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;
    move-object v2, v4

    .line 102
    .local v2, "certContent":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    const-string v4, "PKCS12"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 107
    .local v4, "keyStore":Ljava/security/KeyStore;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v5

    .line 109
    .local v3, "ksIn":Ljava/io/InputStream;
    :try_start_2
    const-string v5, "chengzi"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 110
    :catch_0
    move-exception v5

    .line 111
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    :goto_1
    goto :goto_2

    .line 115
    :catch_1
    move-exception v5

    .line 117
    nop

    .line 119
    :goto_2
    :try_start_6
    const-string v5, "X509"

    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .line 120
    .local v5, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const-string v6, "chengzi"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 121
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    sput-object v6, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 122
    sget-object v6, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v6

    .line 113
    .end local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :goto_3
    nop

    .line 114
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 116
    goto :goto_4

    .line 115
    :catch_2
    move-exception v6

    .line 116
    :goto_4
    :try_start_8
    throw v5

    .line 124
    .end local v3    # "ksIn":Ljava/io/InputStream;
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "certContent can\'t be empty"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 126
    .end local v2    # "certContent":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v3, "LocalFileCert"

    const-string v4, "getKeyManagers error!"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 130
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v1

    .line 86
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 135
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 136
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getKeyManagers(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 138
    new-instance v1, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 139
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v1

    const/16 v2, 0x1776

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object v1

    .line 57
    :cond_0
    const/16 v1, 0x1775

    :try_start_1
    const-string v2, "bks"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 59
    .local v2, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "index_kstp.html"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    .local v3, "tsIn":Ljava/io/InputStream;
    :try_start_2
    const-string v4, "chengzi"

    .line 62
    .local v4, "pass":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v4    # "pass":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    :goto_0
    goto :goto_1

    .line 69
    :catch_0
    move-exception v4

    .line 71
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 63
    :catch_1
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 65
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    .end local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 73
    :goto_1
    :try_start_6
    const-string v4, "X509"

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 74
    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v4, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 76
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    sput-object v5, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 77
    sget-object v5, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v5

    .line 67
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :goto_2
    nop

    .line 68
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 70
    goto :goto_3

    .line 69
    :catch_2
    move-exception v5

    .line 70
    :goto_3
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 78
    .end local v2    # "trustStore":Ljava/security/KeyStore;
    .end local v3    # "tsIn":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 79
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 83
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 51
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 157
    .local v0, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v0, :cond_1

    .line 158
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 159
    .local v3, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 160
    move-object v1, v3

    check-cast v1, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 158
    .end local v3    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
