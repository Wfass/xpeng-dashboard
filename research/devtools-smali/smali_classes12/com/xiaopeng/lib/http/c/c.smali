.class public Lcom/xiaopeng/lib/http/c/c;
.super Ljava/lang/Object;
.source "KeyStoreCert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/c/c$a;,
        Lcom/xiaopeng/lib/http/c/c$b;
    }
.end annotation


# direct methods
.method public static eb()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 77
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    .line 78
    new-instance v1, Lcom/xiaopeng/lib/http/c/c$b;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/c/c$b;-><init>()V

    .line 79
    const-string v2, "KeyStoreCert"

    const-string v3, "getX509TrustManager from  Android  Q "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v1

    .line 82
    :cond_0
    const-string v1, "KeyStoreCert"

    const-string v2, "getX509TrustManager from  Android  P "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "XpengAndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 85
    new-instance v2, Lcom/xiaopeng/lib/http/c/c$b;

    invoke-direct {v2, v1}, Lcom/xiaopeng/lib/http/c/c$b;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 88
    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    return-object v0
.end method

.method public static od()Ljavax/net/ssl/SSLSocketFactory;
    .locals 7

    .line 46
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 47
    const-string v2, "XpengAndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 49
    nop

    .line 51
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-le v3, v4, :cond_0

    .line 52
    new-instance v3, Lcom/xiaopeng/lib/http/c/c$b;

    invoke-direct {v3}, Lcom/xiaopeng/lib/http/c/c$b;-><init>()V

    goto :goto_0

    .line 54
    :cond_0
    new-instance v3, Lcom/xiaopeng/lib/http/c/c$b;

    invoke-direct {v3, v2}, Lcom/xiaopeng/lib/http/c/c$b;-><init>(Ljava/security/KeyStore;)V

    .line 57
    :goto_0
    const/4 v4, 0x1

    new-array v5, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 58
    new-array v3, v4, [Ljavax/net/ssl/KeyManager;

    new-instance v4, Lcom/xiaopeng/lib/http/c/c$a;

    invoke-direct {v4, v2}, Lcom/xiaopeng/lib/http/c/c$a;-><init>(Ljava/security/KeyStore;)V

    aput-object v4, v3, v6

    .line 60
    invoke-virtual {v1, v3, v5, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 62
    new-instance v2, Lcom/xiaopeng/lib/http/c/e$b;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/xiaopeng/lib/http/c/e$b;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 63
    :catch_0
    move-exception v1

    .line 64
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    return-object v0
.end method
