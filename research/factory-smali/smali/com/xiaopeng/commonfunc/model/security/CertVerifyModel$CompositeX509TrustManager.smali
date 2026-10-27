.class Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;
.super Ljava/lang/Object;
.source "CertVerifyModel.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompositeX509TrustManager"
.end annotation


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private hasValidCert:Z

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;

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
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;Ljava/lang/String;)V
    .locals 9
    .param p2, "caCertPath"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->this$0:Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->hasValidCert:Z

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->certificates:Ljava/util/List;

    .line 245
    :try_start_0
    const-string v1, "bks"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 246
    .local v1, "tks":Ljava/security/KeyStore;
    const/4 v2, 0x0

    .line 247
    .local v2, "tsIn":Ljava/io/InputStream;
    const-string v3, "CertVerifyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get root cert content from file mRootCertPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;->access$000(Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;->access$100(Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    new-instance v3, Ljava/io/File;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;->access$000(Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v3, v0, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    .local p1, "certContent":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 252
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v3

    .line 254
    .end local p1    # "certContent":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 255
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;->access$000(Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-object v2, v3

    .line 257
    :goto_0
    if-eqz v2, :cond_2

    .line 259
    :try_start_1
    const-string p1, "chengzi"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
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
    move-exception p1

    goto :goto_4

    .line 264
    :catch_1
    move-exception p1

    .line 265
    .local p1, "e":Ljava/security/cert/CertificateException;
    :try_start_3
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    .end local p1    # "e":Ljava/security/cert/CertificateException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_2

    .line 269
    :catch_2
    move-exception p1

    .line 270
    .local p1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .end local p1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 262
    :catch_3
    move-exception p1

    .line 263
    .local p1, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_6
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 268
    .end local p1    # "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
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
    move-exception p1

    .line 261
    .local p1, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 268
    .end local p1    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
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
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 271
    goto :goto_5

    .line 269
    :catch_7
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    throw p1

    .line 275
    :cond_2
    :goto_6
    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    .line 276
    .local p1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 278
    .local v3, "certificate":Ljava/security/cert/Certificate;
    instance-of v4, v3, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_3

    .line 279
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->certificates:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->hasValidCert:Z

    .line 282
    .end local v3    # "certificate":Ljava/security/cert/Certificate;
    :cond_3
    goto :goto_7

    .line 284
    :cond_4
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 285
    .local v3, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v3, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 287
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    .line 288
    .local v4, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-eqz v4, :cond_6

    .line 289
    array-length v5, v4

    :goto_8
    if-ge v0, v5, :cond_6

    aget-object v6, v4, v0

    .line 290
    .local v6, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v7, v6, Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_5

    .line 291
    iget-object v7, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

    move-object v8, v6

    check-cast v8, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 289
    .end local v6    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 297
    .end local v1    # "tks":Ljava/security/KeyStore;
    .end local v2    # "tsIn":Ljava/io/InputStream;
    .end local v3    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v4    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    .end local p1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_6
    goto :goto_9

    .line 295
    :catch_8
    move-exception p1

    .line 296
    .local p1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_9
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

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

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
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    return-void

    .line 306
    :catch_0
    move-exception v2

    .line 309
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "None of the TrustManagers trust this client certificate chain"

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

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->trustManagers:Ljava/util/List;

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
    .local v1, "trustManager":Ljavax/net/ssl/X509TrustManager;
    :try_start_0
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    return-void

    .line 319
    :catch_0
    move-exception v2

    .line 322
    .end local v1    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    goto :goto_0

    .line 323
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "None of the TrustManagers trust this server certificate chain"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->certificates:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isHasValidCert()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/model/security/CertVerifyModel$CompositeX509TrustManager;->hasValidCert:Z

    return v0
.end method
