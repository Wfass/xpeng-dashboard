.class Lcom/ta/a/b/c;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static a:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    return-void
.end method

.method static declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    const-class v0, Lcom/ta/a/b/c;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/ta/a/b/c;->a:[Ljavax/net/ssl/TrustManager;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/ta/a/b/c;

    invoke-direct {v3}, Lcom/ta/a/b/c;-><init>()V

    aput-object v3, v1, v2

    sput-object v1, Lcom/ta/a/b/c;->a:[Ljavax/net/ssl/TrustManager;

    .line 33
    :cond_0
    sget-object v1, Lcom/ta/a/b/c;->a:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "checkClientTrusted1"

    aput-object v0, p1, p2

    const-string p2, "UtExtendTrustManager"

    invoke-static {p2, p1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2

    const/4 p3, 0x1

    .line 84
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "checkClientTrusted2"

    aput-object v1, p3, v0

    const-string v1, "UtExtendTrustManager"

    invoke-static {v1, p3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p3, "parameter is not used"

    if-eqz p1, :cond_1

    .line 86
    array-length v1, p1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 94
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 96
    :catch_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Certificate not valid or trusted."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    const/4 p1, 0x1

    .line 107
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "checkClientTrusted3"

    aput-object p3, p1, p2

    const-string p2, "UtExtendTrustManager"

    invoke-static {p2, p1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "checkServerTrusted1"

    aput-object v2, v0, v1

    const-string v2, "UtExtendTrustManager"

    invoke-static {v2, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 44
    array-length v0, p1

    if-lez v0, :cond_4

    :try_start_0
    const-string v0, "X509"

    .line 50
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v2, 0x0

    .line 51
    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 61
    :try_start_1
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_2

    .line 65
    instance-of v0, p2, Ljava/security/cert/CertificateExpiredException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 69
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    .line 71
    :cond_2
    throw p1

    :cond_3
    return-void

    :catch_1
    move-exception p1

    .line 55
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 53
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 45
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0

    const/4 p1, 0x1

    .line 102
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "checkServerTrusted2"

    aput-object p3, p1, p2

    const-string p2, "UtExtendTrustManager"

    invoke-static {p2, p1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0

    const/4 p1, 0x1

    .line 112
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "checkServerTrusted3"

    aput-object p3, p1, p2

    const-string p2, "UtExtendTrustManager"

    invoke-static {p2, p1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    .line 79
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
