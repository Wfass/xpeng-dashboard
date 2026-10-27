.class Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
.super Ljava/lang/Object;
.source "KeyStoreCert.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/tls/KeyStoreCert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeX509TrustManager"
.end annotation


# instance fields
.field private certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private hasValidCert:Z

.field private keyStore:Ljava/security/KeyStore;

.field private final trustManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    .line 132
    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    const-string v0, "KeyStoreCert"

    const-string v2, "init Android Q  CompositeX509TrustManager "

    .line 177
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    :try_start_0
    const-string v0, "BKS"

    .line 183
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 184
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/system/etc/index_kstp.html"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v3, "chengzi"

    .line 185
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 186
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 188
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 189
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 191
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 193
    iput-boolean v3, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    goto :goto_0

    :cond_1
    const-string v2, "X509"

    .line 197
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 200
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 203
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyStore"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    .line 132
    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    const-string v2, "KeyStoreCert"

    const-string v3, "init Android P  CompositeX509TrustManager "

    .line 136
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    .line 143
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v0, 0x4

    const-string v3, "ca"

    const-string v4, "client"

    const-string v5, "server"

    const-string v6, "alias"

    .line 146
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_1

    .line 147
    aget-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 150
    instance-of v7, v6, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_0

    .line 151
    invoke-virtual {v2, v5, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    const/4 v5, 0x1

    .line 152
    iput-boolean v5, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 155
    :try_start_2
    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "X509"

    .line 159
    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 160
    invoke-virtual {p1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 162
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 164
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 165
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chain",
            "authType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 217
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 223
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "None of the TrustManagers trust this certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chain",
            "authType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 230
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 236
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "None of the TrustManagers trust this certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 7

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "KeyStoreCert"

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-le v0, v3, :cond_0

    const-string v0, "getAcceptedIssuers from ANdroid Q "

    .line 243
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    :cond_0
    const-string v0, "getAcceptedIssuers from ANdroid P "

    .line 246
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    const-string v3, "ca"

    const-string v4, "client"

    const-string v5, "server"

    const-string v6, "alias"

    .line 248
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 249
    aget-object v5, v3, v4

    .line 252
    :try_start_0
    iget-object v6, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 253
    instance-of v6, v5, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_1

    .line 254
    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    .line 257
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    .line 260
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isHasValidCert()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    return v0
.end method
