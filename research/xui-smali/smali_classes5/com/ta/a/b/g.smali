.class Lcom/ta/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static a:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/a/b/g;->a:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    const-class v0, Lcom/ta/a/b/g;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/ta/a/b/g;->a:[Ljavax/net/ssl/TrustManager;

    if-nez v1, :cond_0

    .line 22
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/ta/a/b/g;

    invoke-direct {v3}, Lcom/ta/a/b/g;-><init>()V

    aput-object v3, v1, v2

    sput-object v1, Lcom/ta/a/b/g;->a:[Ljavax/net/ssl/TrustManager;

    .line 25
    :cond_0
    sget-object v1, Lcom/ta/a/b/g;->a:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 35
    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    .line 39
    nop

    .line 41
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 42
    const/4 v1, 0x0

    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    nop

    .line 49
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 50
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 52
    :try_start_1
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    nop

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    nop

    .line 55
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 56
    instance-of v2, v1, Ljava/security/cert/CertificateExpiredException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v2, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 58
    :cond_1
    :goto_2
    return-void

    .line 62
    :cond_2
    throw v0

    .line 66
    :cond_3
    return-void

    .line 45
    :catch_1
    move-exception v0

    .line 46
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :catch_2
    move-exception v0

    .line 44
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 36
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
