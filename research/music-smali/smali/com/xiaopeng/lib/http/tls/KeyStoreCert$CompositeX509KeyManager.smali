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

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;->keyStore:Ljava/security/KeyStore;

    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    const-string p1, "client"

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    const-string p1, "server"

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 310
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;->keyStore:Ljava/security/KeyStore;

    const-string v0, "client"

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 315
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    check-cast p1, Ljava/security/cert/X509Certificate;

    aput-object p1, v0, v1

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const-string p1, "client"

    .line 287
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    const/4 p1, 0x0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;->keyStore:Ljava/security/KeyStore;

    const-string v1, "client"

    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    const-string p1, "server"

    .line 297
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
