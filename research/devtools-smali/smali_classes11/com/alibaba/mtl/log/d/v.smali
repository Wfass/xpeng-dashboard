.class Lcom/alibaba/mtl/log/d/v;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "UtExtendTrustManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static do:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/log/d/v;->do:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    return-void
.end method

.method static declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    const-class v0, Lcom/alibaba/mtl/log/d/v;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alibaba/mtl/log/d/v;->do:[Ljavax/net/ssl/TrustManager;

    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/mtl/log/d/v;

    invoke-direct {v3}, Lcom/alibaba/mtl/log/d/v;-><init>()V

    aput-object v3, v1, v2

    sput-object v1, Lcom/alibaba/mtl/log/d/v;->do:[Ljavax/net/ssl/TrustManager;

    .line 35
    :cond_0
    sget-object v1, Lcom/alibaba/mtl/log/d/v;->do:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 40
    const-string p1, "UtExtendTrustManager"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "checkClientTrusted1"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 86
    const-string p3, "UtExtendTrustManager"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "checkClientTrusted2"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    if-eqz p1, :cond_1

    array-length p3, p1

    if-eqz p3, :cond_1

    .line 90
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    :try_start_0
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    nop

    .line 100
    return-void

    .line 97
    :catch_0
    move-exception p1

    .line 98
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Certificate not valid or trusted."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter is not used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter is not used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 109
    const-string p1, "UtExtendTrustManager"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "checkClientTrusted3"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 45
    const-string v0, "UtExtendTrustManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkServerTrusted1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    .line 50
    nop

    .line 52
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 53
    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    nop

    .line 60
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    .line 63
    :try_start_1
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    nop

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception p1

    .line 65
    nop

    .line 66
    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_2

    .line 67
    instance-of v0, p2, Ljava/security/cert/CertificateExpiredException;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 71
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_1

    .line 69
    :cond_1
    :goto_2
    return-void

    .line 73
    :cond_2
    throw p1

    .line 77
    :cond_3
    return-void

    .line 56
    :catch_1
    move-exception p1

    .line 57
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 54
    :catch_2
    move-exception p1

    .line 55
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 47
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 104
    const-string p1, "UtExtendTrustManager"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "checkServerTrusted2"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 114
    const-string p1, "UtExtendTrustManager"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "checkServerTrusted3"

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
