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
    .locals 10

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    .line 119
    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    .line 164
    const-string v0, "KeyStoreCert"

    const-string v2, "init Android Q  CompositeX509TrustManager "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    .line 170
    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 171
    .local v0, "tks":Ljava/security/KeyStore;
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/system/etc/index_kstp.html"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 172
    .local v2, "tsIn":Ljava/io/InputStream;
    const-string v3, "chengzi"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 173
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 175
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .line 176
    .local v3, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 178
    .local v4, "certificate":Ljava/security/cert/Certificate;
    instance-of v5, v4, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_0

    .line 179
    iget-object v5, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    .line 182
    .end local v4    # "certificate":Ljava/security/cert/Certificate;
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    const-string v4, "X509"

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 185
    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v4, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 187
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 188
    .local v5, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v5, :cond_3

    .line 189
    array-length v6, v5

    :goto_1
    if-ge v1, v6, :cond_3

    aget-object v7, v5, v1

    .line 190
    .local v7, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v8, v7, Ljavax/net/ssl/X509TrustManager;

    if-eqz v8, :cond_2

    .line 191
    iget-object v8, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    move-object v9, v7

    check-cast v9, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v7    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 197
    .end local v0    # "tks":Ljava/security/KeyStore;
    .end local v2    # "tsIn":Ljava/io/InputStream;
    .end local v3    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v5    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_3
    goto :goto_2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 9
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    .line 119
    iput-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    .line 123
    const-string v2, "KeyStoreCert"

    const-string v3, "init Android P  CompositeX509TrustManager "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    .line 130
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 131
    .local v2, "newKeystore":Ljava/security/KeyStore;
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 133
    const-string v0, "ca"

    const-string v3, "client"

    const-string v4, "server"

    const-string v5, "alias"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "cas":[Ljava/lang/String;
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .local v5, "c":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 137
    .local v6, "certificate":Ljava/security/cert/Certificate;
    instance-of v7, v6, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_0

    .line 138
    invoke-virtual {v2, v5, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 139
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .end local v6    # "certificate":Ljava/security/cert/Certificate;
    :cond_0
    goto :goto_1

    .line 141
    :catch_0
    move-exception v6

    .line 142
    .local v6, "e":Ljava/security/KeyStoreException;
    :try_start_2
    invoke-virtual {v6}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 134
    .end local v5    # "c":Ljava/lang/String;
    .end local v6    # "e":Ljava/security/KeyStoreException;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 147
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 149
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    .line 150
    .local v4, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v4, :cond_3

    .line 151
    array-length v5, v4

    :goto_2
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 152
    .local v6, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_2

    .line 153
    iget-object v7, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    move-object v8, v6

    check-cast v8, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 151
    .end local v6    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 159
    .end local v0    # "cas":[Ljava/lang/String;
    .end local v2    # "newKeystore":Ljava/security/KeyStore;
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_3
    goto :goto_3

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 204
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 206
    :catch_0
    move-exception v2

    .line 209
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "None of the TrustManagers trust this certificate chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 217
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    return-void

    .line 219
    :catch_0
    move-exception v2

    .line 222
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "None of the TrustManagers trust this certificate chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 8

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 230
    const-string v0, "KeyStoreCert"

    const-string v2, "getAcceptedIssuers from ANdroid Q "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->certificates:Ljava/util/List;

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 233
    :cond_0
    const-string v0, "KeyStoreCert"

    const-string v2, "getAcceptedIssuers from ANdroid P "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v2, "ca"

    const-string v3, "client"

    const-string v4, "server"

    const-string v5, "alias"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "cas":[Ljava/lang/String;
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 239
    .local v5, "c":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 240
    .local v6, "certificate":Ljava/security/cert/Certificate;
    instance-of v7, v6, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_1

    .line 241
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v6    # "certificate":Ljava/security/cert/Certificate;
    :cond_1
    goto :goto_1

    .line 243
    :catch_0
    move-exception v6

    .line 244
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v5    # "c":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    :cond_2
    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public isHasValidCert()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->hasValidCert:Z

    return v0
.end method
