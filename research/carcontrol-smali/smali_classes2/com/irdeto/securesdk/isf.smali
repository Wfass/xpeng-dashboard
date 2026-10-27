.class public Lcom/irdeto/securesdk/isf;
.super Ljava/lang/Object;
.source "isf.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "securesdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static isfCryptoOperate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[a-f0-9A-F]{32}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_1

    array-length v0, p3

    rem-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    const-string v0, "IR_CRYPTO_AES_CBC_DECRYPT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/irdeto/securesdk/isf;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/irdeto/securesdk/api;->isfCryptoOperate(Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->isfDecrypt(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000oo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->encryptData([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/irdeto/securesdk/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/irdeto/securesdk/ISFException;

    sget-object v1, Lcom/irdeto/securesdk/O000000o;->O000OOoO:Lcom/irdeto/securesdk/O000000o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/irdeto/securesdk/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/irdeto/securesdk/CryptoException;->getErrorCode()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000oo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfGenerateOpaqueData()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {v0}, Lcom/irdeto/securesdk/api;->isfGenerateOpaqueData(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/irdeto/securesdk/ISFException;

    sget-object v2, Lcom/irdeto/securesdk/O000000o;->O0000o00:Lcom/irdeto/securesdk/O000000o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/irdeto/securesdk/ISFException;

    sget-object v1, Lcom/irdeto/securesdk/O000000o;->O00000oo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {v0, v1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw v0
.end method

.method public static isfGetMCUSecurityAsset()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {v0}, Lcom/irdeto/securesdk/api;->isfGetMCUSecurityAsset(Lcom/irdeto/securesdk/Feedback;)[B

    move-result-object v1

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    sget-object v3, Lcom/irdeto/securesdk/O000000o;->O000000o:Lcom/irdeto/securesdk/O000000o;

    invoke-virtual {v3}, Lcom/irdeto/securesdk/O000000o;->O000000o()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    sget-object v3, Lcom/irdeto/securesdk/O000000o;->O0000OoO:Lcom/irdeto/securesdk/O000000o;

    invoke-virtual {v3}, Lcom/irdeto/securesdk/O000000o;->O000000o()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/irdeto/securesdk/ISFException;

    sget-object v2, Lcom/irdeto/securesdk/O000000o;->O00000Oo:Lcom/irdeto/securesdk/O000000o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "%x"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static isfGetProvisionRequest()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {v0}, Lcom/irdeto/securesdk/api;->isfGetProvisionRequest(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/irdeto/securesdk/ISFException;

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-static {v2}, Lcom/irdeto/securesdk/O000000o;->O00000Oo(I)Lcom/irdeto/securesdk/O000000o;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Lcom/irdeto/securesdk/ISFException;

    sget-object v2, Lcom/irdeto/securesdk/O000000o;->O00000Oo:Lcom/irdeto/securesdk/O000000o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw v1
.end method

.method public static isfProvisionResponse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, v0}, Lcom/irdeto/securesdk/api;->isfProvisionResponse(Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)V

    iget p0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    iget v1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-static {v1}, Lcom/irdeto/securesdk/O000000o;->O00000Oo(I)Lcom/irdeto/securesdk/O000000o;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v1, Lcom/irdeto/securesdk/O000000o;->O00000Oo:Lcom/irdeto/securesdk/O000000o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw p0
.end method

.method public static isfProvisioned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {v0}, Lcom/irdeto/securesdk/api;->isfProvisioned(Lcom/irdeto/securesdk/Feedback;)Z

    move-result v0

    return v0
.end method

.method public static isfSecureStoreReload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/irdeto/securesdk/api;->isfSecureStoreReload()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/irdeto/securesdk/ISFException;

    sget-object v2, Lcom/irdeto/securesdk/O000000o;->O00000Oo:Lcom/irdeto/securesdk/O000000o;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/irdeto/securesdk/ISFException;

    sget-object v1, Lcom/irdeto/securesdk/O000000o;->O00000oo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {v0, v1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw v0
.end method

.method public static isfSipcDecrypt(Lcom/irdeto/securesdk/ISFSecureEvent;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/irdeto/securesdk/ISFSecureEvent;->classId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/irdeto/securesdk/ISFSecureEvent;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/irdeto/securesdk/ISFSecureEvent;->iv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/irdeto/securesdk/ISFSecureEvent;->keyId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->isfSipcDecrypt(Lcom/irdeto/securesdk/ISFSecureEvent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfSipcEncrypt(Ljava/lang/Object;)Lcom/irdeto/securesdk/ISFSecureEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->isfSipcEncrypt(Ljava/lang/Object;)Lcom/irdeto/securesdk/ISFSecureEvent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfSipcInitialize(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/api;->isfSipcInitialize(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfSipcInitialized()Z
    .locals 1

    invoke-static {}, Lcom/irdeto/securesdk/api;->isfSipcInitialized()Z

    move-result v0

    return v0
.end method

.method public static isfStoreDelete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const-string v0, ""

    invoke-static {v0, p0}, Lcom/irdeto/securesdk/core/SSUtils;->O000000o(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfStoreGet(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/irdeto/securesdk/core/SSUtils;->O00000Oo(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfStoreGet(Ljava/lang/String;Lcom/irdeto/securesdk/FileIndex;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/irdeto/securesdk/api;->isfStoreGet(Ljava/lang/String;Lcom/irdeto/securesdk/FileIndex;Lcom/irdeto/securesdk/Feedback;)[B

    move-result-object p0

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    sget-object v1, Lcom/irdeto/securesdk/O000000o;->O000000o:Lcom/irdeto/securesdk/O000000o;

    invoke-virtual {v1}, Lcom/irdeto/securesdk/O000000o;->O000000o()I

    move-result v1

    if-eq p1, v1, :cond_1

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    sget-object v1, Lcom/irdeto/securesdk/O000000o;->O0000OoO:Lcom/irdeto/securesdk/O000000o;

    invoke-virtual {v1}, Lcom/irdeto/securesdk/O000000o;->O000000o()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O000OoOo:Lcom/irdeto/securesdk/O000000o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "%x"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfStorePut(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/core/SSUtils;->O000000o(Ljava/lang/String;[B)V

    return-void

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfTokenOperate([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/irdeto/securesdk/api;->isfTokenOperate([Ljava/lang/String;[BLcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object p0

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O0000Ooo:Lcom/irdeto/securesdk/O000000o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000oo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfTokenSave([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    invoke-static {}, Lcom/irdeto/securesdk/isf;->isfProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/api;->isfTokenSave([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p1, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O0000Oo:Lcom/irdeto/securesdk/O000000o;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000oo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method
