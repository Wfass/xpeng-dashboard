.class public Lcom/xiaopeng/lib/http/c/d;
.super Ljava/lang/Object;
.source "LocalFileCert.java"


# static fields
.field private static Vk:[Ljavax/net/ssl/TrustManager;

.field private static Vl:[Ljavax/net/ssl/KeyManager;


# direct methods
.method private static declared-synchronized S(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;
    .locals 5

    const-class v0, Lcom/xiaopeng/lib/http/c/d;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/c/d;->Vl:[Ljavax/net/ssl/KeyManager;

    if-eqz v1, :cond_0

    .line 84
    sget-object p0, Lcom/xiaopeng/lib/http/c/d;->Vl:[Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    .line 89
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/xiaopeng/lib/security/b;->ap(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 90
    const-string p0, "LocalFileCert"

    const-string v3, "get cert content from file"

    invoke-static {p0, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance p0, Ljava/io/File;

    const-string v3, "/private/sec/xp0109.png"

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v1}, Lcom/xiaopeng/lib/http/a;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_1
    const-string p0, "LocalFileCert"

    const-string v3, "get cert content from SystemDelegate"

    invoke-static {p0, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const-class p0, Lcom/xiaopeng/system/delegate/module/a;

    .line 95
    invoke-static {p0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p0

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    invoke-interface {p0, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;

    .line 96
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/systemdelegate/ISystemDelegate;->getCertificate()Ljava/lang/String;

    move-result-object p0

    .line 98
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 103
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :try_start_2
    const-string p0, "chengzi"

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 109
    :catchall_0
    move-exception p0

    goto :goto_3

    .line 106
    :catch_0
    move-exception p0

    .line 107
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 112
    :goto_1
    goto :goto_2

    .line 111
    :catch_1
    move-exception p0

    .line 113
    nop

    .line 115
    :goto_2
    :try_start_6
    const-string p0, "X509"

    invoke-static {p0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    .line 116
    const-string v2, "chengzi"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 117
    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/http/c/d;->Vl:[Ljavax/net/ssl/KeyManager;

    .line 118
    sget-object p0, Lcom/xiaopeng/lib/http/c/d;->Vl:[Ljavax/net/ssl/KeyManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object p0

    .line 109
    :goto_3
    nop

    .line 110
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 112
    goto :goto_4

    .line 111
    :catch_2
    move-exception v2

    .line 112
    :goto_4
    :try_start_8
    throw p0

    .line 120
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v2, "certContent can\'t be empty"

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 122
    :catch_3
    move-exception p0

    .line 123
    :try_start_9
    const-string v2, "LocalFileCert"

    const-string v3, "getKeyManagers error!"

    invoke-static {v2, v3, p0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 126
    monitor-exit v0

    return-object v1

    .line 82
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static T(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 131
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 132
    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/d;->S(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/d;->al(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, p0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 134
    new-instance p0, Lcom/xiaopeng/lib/http/c/e$b;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/http/c/e$b;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized al(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;
    .locals 3

    const-class v0, Lcom/xiaopeng/lib/http/c/d;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/http/c/d;->Vk:[Ljavax/net/ssl/TrustManager;

    if-eqz v1, :cond_0

    .line 51
    sget-object p0, Lcom/xiaopeng/lib/http/c/d;->Vk:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    .line 55
    :cond_0
    :try_start_1
    const-string v1, "bks"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "index_kstp.html"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    const-string v2, "chengzi"

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 61
    :catch_0
    move-exception v2

    .line 62
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 67
    :goto_0
    goto :goto_1

    .line 66
    :catch_1
    move-exception p0

    .line 68
    nop

    .line 70
    :goto_1
    :try_start_6
    const-string p0, "X509"

    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 73
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/lib/http/c/d;->Vk:[Ljavax/net/ssl/TrustManager;

    .line 74
    sget-object p0, Lcom/xiaopeng/lib/http/c/d;->Vk:[Ljavax/net/ssl/TrustManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v0

    return-object p0

    .line 64
    :goto_2
    nop

    .line 65
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 67
    goto :goto_3

    .line 66
    :catch_2
    move-exception p0

    .line 67
    :goto_3
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 75
    :catch_3
    move-exception p0

    .line 76
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 79
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 49
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static am(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/http/c/d;->al(Landroid/content/Context;)[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    .line 152
    if-eqz p0, :cond_1

    .line 153
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 154
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 155
    check-cast v2, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    goto :goto_1

    .line 159
    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
