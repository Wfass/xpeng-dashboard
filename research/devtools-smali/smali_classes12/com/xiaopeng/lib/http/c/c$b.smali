.class Lcom/xiaopeng/lib/http/c/c$b;
.super Ljava/lang/Object;
.source "KeyStoreCert.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private Vj:Ljava/security/KeyStore;

.field private final or:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private ot:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->os:Ljava/util/List;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/lib/http/c/c$b;->ot:Z

    .line 104
    iput-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->Vj:Ljava/security/KeyStore;

    .line 148
    const-string v0, "KeyStoreCert"

    const-string v2, "init Android Q  CompositeX509TrustManager "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->or:Ljava/util/List;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->os:Ljava/util/List;

    .line 154
    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 155
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/system/etc/index_kstp.html"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 156
    const-string v3, "chengzi"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 157
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 159
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 160
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 162
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/xiaopeng/lib/http/c/c$b;->os:Ljava/util/List;

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/xiaopeng/lib/http/c/c$b;->ot:Z

    .line 166
    :cond_0
    goto :goto_0

    .line 168
    :cond_1
    const-string v2, "X509"

    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 171
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_3

    .line 173
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 174
    instance-of v4, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_2

    .line 175
    iget-object v4, p0, Lcom/xiaopeng/lib/http/c/c$b;->or:Ljava/util/List;

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_3
    goto :goto_2

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 8

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->os:Ljava/util/List;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/lib/http/c/c$b;->ot:Z

    .line 104
    iput-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->Vj:Ljava/security/KeyStore;

    .line 108
    const-string v2, "KeyStoreCert"

    const-string v3, "init Android P  CompositeX509TrustManager "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/lib/http/c/c$b;->or:Ljava/util/List;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/lib/http/c/c$b;->Vj:Ljava/security/KeyStore;

    .line 115
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 116
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 118
    const-string v0, "ca"

    const-string v3, "client"

    const-string v4, "server"

    const-string v5, "alias"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    .line 119
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 122
    instance-of v7, v6, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_0

    .line 123
    invoke-virtual {v2, v5, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :cond_0
    goto :goto_1

    .line 125
    :catch_0
    move-exception v5

    .line 126
    :try_start_2
    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 119
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_1
    const-string p1, "X509"

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 133
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    .line 134
    if-eqz p1, :cond_3

    .line 135
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 136
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/xiaopeng/lib/http/c/c$b;->or:Ljava/util/List;

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_3
    goto :goto_3

    .line 141
    :catch_1
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    :goto_3
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->or:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 188
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 193
    goto :goto_0

    .line 194
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "None of the TrustManagers trust this certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->or:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 201
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 206
    goto :goto_0

    .line 207
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "None of the TrustManagers trust this certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 7

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 214
    const-string v0, "KeyStoreCert"

    const-string v2, "getAcceptedIssuers from ANdroid Q "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/lib/http/c/c$b;->os:Ljava/util/List;

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0

    .line 219
    :cond_0
    const-string v0, "KeyStoreCert"

    const-string v2, "getAcceptedIssuers from ANdroid P "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    const-string v2, "ca"

    const-string v3, "client"

    const-string v4, "server"

    const-string v5, "alias"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 224
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 227
    :try_start_0
    iget-object v6, p0, Lcom/xiaopeng/lib/http/c/c$b;->Vj:Ljava/security/KeyStore;

    invoke-virtual {v6, v5}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 228
    instance-of v6, v5, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_1

    .line 229
    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    goto :goto_1

    .line 231
    :catch_0
    move-exception v5

    .line 232
    invoke-virtual {v5}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 224
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    :cond_2
    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
