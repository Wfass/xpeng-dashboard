.class Lcom/xiaopeng/lib/http/c/c$a;
.super Ljava/lang/Object;
.source "KeyStoreCert.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final Vj:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/xiaopeng/lib/http/c/c$a;->Vj:Ljava/security/KeyStore;

    .line 258
    return-void
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 267
    const-string p1, "client"

    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 277
    const-string p1, "server"

    return-object p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 282
    nop

    .line 284
    nop

    .line 285
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/lib/http/c/c$a;->Vj:Ljava/security/KeyStore;

    const-string v0, "client"

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 290
    const/4 p1, 0x0

    goto :goto_1

    .line 289
    :goto_0
    nop

    .line 290
    :goto_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    check-cast p1, Ljava/security/cert/X509Certificate;

    aput-object p1, v0, v1

    return-object v0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    .line 262
    const-string p1, "client"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    .line 295
    nop

    .line 297
    nop

    .line 298
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/http/c/c$a;->Vj:Ljava/security/KeyStore;

    const-string v1, "client"

    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_2

    .line 302
    :catch_1
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 300
    :catch_2
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .line 306
    :goto_0
    goto :goto_2

    .line 307
    :goto_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    .line 272
    const-string p1, "server"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
