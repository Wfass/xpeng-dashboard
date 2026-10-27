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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getKeyManagers(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object v1

    .line 89
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 90
    const-string v2, "LocalFileCert"

    const-string v4, "get cert content from file"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v2, Ljava/io/File;

    const-string v4, "/private/sec/xp0109.png"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "certContent":Ljava/lang/String;
    goto :goto_0

    .line 93
    .end local v2    # "certContent":Ljava/lang/String;
    :cond_1
    const-string v2, "LocalFileCert"

    const-string v4, "get cert content from SystemDelegate"

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-class v2, Lcom/xiaopeng/system/delegate/module/SystemDelegateModuleEntry;

    .line 95
    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    invoke-interface {v2, v4}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    .line 96
    .local v2, "systemDelegate":Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;->getCertificate()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "systemDelegate":Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;
    move-object v2, v4

    .line 98
    .local v2, "certContent":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 101
    const-string v4, "PKCS12"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 103
    .local v4, "keyStore":Ljava/security/KeyStore;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v5

    .line 105
    .local v3, "ksIn":Ljava/io/InputStream;
    :try_start_2
    const-string v5, "chengzi"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    :goto_1
    goto :goto_2

    .line 111
    :catch_1
    move-exception v5

    .line 113
    nop

    .line 115
    :goto_2
    :try_start_6
    const-string v5, "X509"

    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .line 116
    .local v5, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const-string v6, "chengzi"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 117
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    sput-object v6, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;

    .line 118
    sget-object v6, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sKeyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v6

    .line 109
    .end local v5    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    :goto_3
    nop

    .line 110
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 112
    goto :goto_4

    .line 111
    :catch_2
    move-exception v6

    .line 112
    :goto_4
    :try_start_8
    throw v5

    .line 120
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

    .line 122
    .end local v2    # "certContent":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v3, "LocalFileCert"

    const-string v4, "getKeyManagers error!"

    invoke-static {v3, v4, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v1

    .line 82
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 132
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getKeyManagers(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 134
    new-instance v1, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 135
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaopeng/lib/http/tls/LocalFileCert;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object v1

    .line 55
    :cond_0
    :try_start_1
    const-string v1, "bks"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 57
    .local v1, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "index_kstp.html"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .local v2, "tsIn":Ljava/io/InputStream;
    :try_start_2
    const-string v3, "chengzi"

    .line 60
    .local v3, "pass":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v3    # "pass":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 61
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    :goto_0
    goto :goto_1

    .line 66
    :catch_1
    move-exception v3

    .line 68
    nop

    .line 70
    :goto_1
    :try_start_6
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 71
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 73
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    sput-object v4, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 74
    sget-object v4, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->sTrustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object v4

    .line 64
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :goto_2
    nop

    .line 65
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 67
    goto :goto_3

    .line 66
    :catch_2
    move-exception v4

    .line 67
    :goto_3
    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 75
    .end local v1    # "trustStore":Ljava/security/KeyStore;
    .end local v2    # "tsIn":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 79
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 49
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getTrustManagers(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 152
    .local v0, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v0, :cond_1

    .line 153
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 154
    .local v3, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    .line 155
    move-object v1, v3

    check-cast v1, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    .end local v3    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
