.class Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;
.super Ljava/lang/Object;
.source "KeyStoreCert.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/tls/KeyStoreCert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeX509KeyManager"
.end annotation


# static fields
.field private static final ALIAS_client:Ljava/lang/String; = "client"

.field private static final ALIAS_server:Ljava/lang/String; = "server"


# instance fields
.field private cert:Ljava/security/cert/Certificate;

.field private final keyStore:Ljava/security/KeyStore;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;->keyStore:Ljava/security/KeyStore;

    .line 270
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 279
    const-string v0, "client"

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .line 289
    const-string v0, "server"

    return-object v0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "cert":Ljava/security/cert/Certificate;
    if-nez v0, :cond_0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;->keyStore:Ljava/security/KeyStore;

    const-string v2, "client"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/KeyStoreException;
    goto :goto_1

    .line 301
    :cond_0
    :goto_0
    nop

    .line 302
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    move-object v3, v0

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v1, v2

    return-object v1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 274
    const-string v0, "client"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    move-object v1, v0

    .line 309
    .local v1, "privateKey":Ljava/security/PrivateKey;
    if-nez v1, :cond_0

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;->keyStore:Ljava/security/KeyStore;

    const-string v3, "client"

    invoke-virtual {v2, v3, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v1    # "privateKey":Ljava/security/PrivateKey;
    .local v0, "privateKey":Ljava/security/PrivateKey;
    move-object v1, v0

    goto :goto_0

    .line 316
    .end local v0    # "privateKey":Ljava/security/PrivateKey;
    .restart local v1    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/KeyStoreException;
    goto :goto_1

    .line 314
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 312
    :catch_2
    move-exception v0

    .line 313
    .local v0, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .line 318
    .end local v0    # "e":Ljava/security/UnrecoverableKeyException;
    :cond_0
    :goto_0
    nop

    .line 319
    :goto_1
    return-object v1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .line 284
    const-string v0, "server"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
