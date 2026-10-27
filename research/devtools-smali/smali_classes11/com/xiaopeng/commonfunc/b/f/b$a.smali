.class Lcom/xiaopeng/commonfunc/b/f/b$a;
.super Ljava/lang/Object;
.source "CertVerifyModel.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/b/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic oq:Lcom/xiaopeng/commonfunc/b/f/b;

.field private final or:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private final os:Ljava/util/List;
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
.method public constructor <init>(Lcom/xiaopeng/commonfunc/b/f/b;Ljava/lang/String;)V
    .locals 4

    .line 240
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->oq:Lcom/xiaopeng/commonfunc/b/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->ot:Z

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->or:Ljava/util/List;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->os:Ljava/util/List;

    .line 245
    :try_start_0
    const-string v0, "bks"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 246
    nop

    .line 247
    const-string v1, "CertVerifyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get root cert content from file mRootCertPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/f/b;->a(Lcom/xiaopeng/commonfunc/b/f/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/f/b;->b(Lcom/xiaopeng/commonfunc/b/f/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/f/b;->a(Lcom/xiaopeng/commonfunc/b/f/b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v1, p2, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-static {v1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/f/b;->a(Lcom/xiaopeng/commonfunc/b/f/b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 257
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 259
    :try_start_1
    const-string v1, "chengzi"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_2

    .line 269
    :catch_0
    move-exception p1

    goto :goto_1

    .line 267
    :catchall_0
    move-exception p2

    goto :goto_4

    .line 264
    :catch_1
    move-exception v1

    .line 265
    :try_start_3
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_2

    .line 269
    :catch_2
    move-exception p1

    .line 270
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_3

    .line 262
    :catch_3
    move-exception v1

    .line 263
    :try_start_6
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 268
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_2

    .line 269
    :catch_4
    move-exception p1

    goto :goto_1

    .line 260
    :catch_5
    move-exception v1

    .line 261
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 268
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 271
    :goto_2
    goto :goto_6

    .line 269
    :catch_6
    move-exception p1

    goto :goto_1

    .line 272
    :goto_3
    goto :goto_6

    .line 267
    :goto_4
    nop

    .line 268
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 271
    goto :goto_5

    .line 269
    :catch_7
    move-exception p1

    .line 270
    :try_start_b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    :goto_5
    throw p2

    .line 275
    :cond_2
    :goto_6
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    .line 276
    :goto_7
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 277
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 278
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_3

    .line 279
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->os:Ljava/util/List;

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->ot:Z

    .line 282
    :cond_3
    goto :goto_7

    .line 284
    :cond_4
    const-string p1, "X509"

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 285
    invoke-virtual {p1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 287
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    .line 288
    if-eqz p1, :cond_6

    .line 289
    array-length v0, p1

    :goto_8
    if-ge p2, v0, :cond_6

    aget-object v1, p1, p2

    .line 290
    instance-of v2, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_5

    .line 291
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->or:Ljava/util/List;

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 289
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 297
    :cond_6
    goto :goto_9

    .line 295
    :catch_8
    move-exception p1

    .line 296
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :goto_9
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

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->or:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 304
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    return-void

    .line 306
    :catch_0
    move-exception v1

    .line 309
    goto :goto_0

    .line 310
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "None of the TrustManagers trust this client certificate chain"

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

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->or:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 317
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    return-void

    .line 319
    :catch_0
    move-exception v1

    .line 322
    goto :goto_0

    .line 323
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "None of the TrustManagers trust this server certificate chain"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ec()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->ot:Z

    return v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/b$a;->os:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
