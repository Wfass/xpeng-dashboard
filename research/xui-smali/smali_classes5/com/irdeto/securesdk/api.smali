.class Lcom/irdeto/securesdk/api;
.super Ljava/lang/Object;
.source "api.java"


# static fields
.field private static final DEBUG_SHARED_LIB_PATH:Ljava/lang/String; = "/mnt/sdcard/irdeto"

.field private static final TAG:Ljava/lang/String; = "securesdk"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedSoPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/irdeto/securesdk/core/O000000o;->O000000o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/mnt/sdcard/irdeto"

    const-string v1, "(libirmsdk_)(\\d+\\.\\d+\\.\\d+)(_.+)*(\\.so)"

    invoke-static {v0, v1}, Lcom/irdeto/securesdk/core/O000000o;->O000000o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "/mnt/sdcard/irdeto"

    return-object p0

    :cond_1
    sget v0, Lcom/irdeto/android/sdk/R$string;->shared_lib_path:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isfCleanup()I
    .locals 1

    invoke-static {}, Lcom/irdeto/securesdk/api;->nisfCleanup()I

    move-result v0

    return v0
.end method

.method public static isfCryptoOperate(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/irdeto/securesdk/api;->nisfCryptoOperate(Ljava/lang/String;Ljava/lang/String;[B[BLcom/irdeto/securesdk/Feedback;)[B

    move-result-object p0

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O000OOo:Lcom/irdeto/securesdk/O000000o;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw p0
.end method

.method public static isfDecrypt(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    const-string v0, "AES-DIR"

    new-instance v1, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v1}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/irdeto/securesdk/api;->nisfDecrypt(Ljava/lang/String;Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)[B

    move-result-object p0

    iget v0, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O000OOo:Lcom/irdeto/securesdk/O000000o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;Ljava/lang/String;)V

    throw p0
.end method

.method public static isfGenerateOpaqueData(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->nisfGenerateOpaqueData(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isfGetMCUSecurityAsset(Lcom/irdeto/securesdk/Feedback;)[B
    .locals 0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->nisfGetMCUSecurityAsset(Lcom/irdeto/securesdk/Feedback;)[B

    move-result-object p0

    return-object p0
.end method

.method public static isfGetProvisionRequest(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->nisfGetProvisionRequest(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isfInitialize()I
    .locals 1

    invoke-static {}, Lcom/irdeto/securesdk/api;->nisfInitialize()I

    move-result v0

    return v0
.end method

.method public static isfMsgPack([B)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ""

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    :try_start_0
    invoke-static {p0}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->encryptData([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/irdeto/securesdk/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/irdeto/securesdk/CryptoException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object p0, v1

    return-object p0
.end method

.method public static isfProvisionResponse(Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/api;->nisfProvisionResponse(Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)V

    return-void
.end method

.method public static isfProvisioned(Lcom/irdeto/securesdk/Feedback;)Z
    .locals 0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->nisfProvisioned(Lcom/irdeto/securesdk/Feedback;)Z

    move-result p0

    return p0
.end method

.method public static isfSecureStoreReload()I
    .locals 1

    invoke-static {}, Lcom/irdeto/securesdk/api;->nisfSecureStoreReload()I

    move-result v0

    return v0
.end method

.method public static isfSetIndivStorePath(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/irdeto/securesdk/api;->nisfSetStorePath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isfSipcDecrypt(Lcom/irdeto/securesdk/ISFSecureEvent;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/irdeto/securesdk/ISFSecureEvent;->classId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p0, v0}, Lcom/irdeto/securesdk/api;->navIsfSipcDecrypt(Lcom/irdeto/securesdk/ISFSecureEvent;Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object p0

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/O000000o/O000000o/O0000OOo;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O0000OOo;-><init>()V

    :try_start_1
    invoke-virtual {v0, p0, v1}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O000Oo0o:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O000OoO0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O000OOoo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfSipcEncrypt(Ljava/lang/Object;)Lcom/irdeto/securesdk/ISFSecureEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lcom/O000000o/O000000o/O0000OOo;

    invoke-direct {v1}, Lcom/O000000o/O000000o/O0000OOo;-><init>()V

    invoke-virtual {v1, p0}, Lcom/O000000o/O000000o/O0000OOo;->O00000Oo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, v0}, Lcom/irdeto/securesdk/api;->navIsfSipcEncrypt(Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)Lcom/irdeto/securesdk/ISFSecureEvent;

    move-result-object v1

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    iget v2, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v0, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/irdeto/securesdk/ISFSecureEvent;->classId:Ljava/lang/String;

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O000Oo0O:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O000OOoo:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :catch_0
    move-exception p0

    const-string p0, "securesdk"

    const-string v0, "GSON err."

    invoke-static {p0, v0}, Lcom/irdeto/securesdk/core/O000000o;->O00000o0(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object v0, Lcom/irdeto/securesdk/O000000o;->O000Oo0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, v0}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0
.end method

.method public static isfSipcInitialize(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/ISFException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/api;->navIsfSipcInitialize(Ljava/lang/String;Z)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O00000o0:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/irdeto/securesdk/ISFException;

    sget-object p1, Lcom/irdeto/securesdk/O000000o;->O000Oo00:Lcom/irdeto/securesdk/O000000o;

    invoke-direct {p0, p1}, Lcom/irdeto/securesdk/ISFException;-><init>(Lcom/irdeto/securesdk/O000000o;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static isfSipcInitialized()Z
    .locals 1

    invoke-static {}, Lcom/irdeto/securesdk/api;->navIsfSipcInitialized()Z

    move-result v0

    return v0
.end method

.method public static isfStoreGet(Ljava/lang/String;Lcom/irdeto/securesdk/FileIndex;Lcom/irdeto/securesdk/Feedback;)[B
    .locals 0

    invoke-virtual {p1}, Lcom/irdeto/securesdk/FileIndex;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/api;->nisfStoreGet(Ljava/lang/String;ILcom/irdeto/securesdk/Feedback;)[B

    move-result-object p0

    return-object p0
.end method

.method public static isfTokenOperate([Ljava/lang/String;[BLcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/api;->nisfTokenOperate([Ljava/lang/String;[BLcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isfTokenSave([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/irdeto/securesdk/api;->nisfTokenSave([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static native navIsfSipcDecrypt(Lcom/irdeto/securesdk/ISFSecureEvent;Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
.end method

.method private static native navIsfSipcEncrypt(Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)Lcom/irdeto/securesdk/ISFSecureEvent;
.end method

.method private static native navIsfSipcInitialize(Ljava/lang/String;Z)I
.end method

.method private static native navIsfSipcInitialized()Z
.end method

.method private static native nisfCleanup()I
.end method

.method private static native nisfCryptoOperate(Ljava/lang/String;Ljava/lang/String;[B[BLcom/irdeto/securesdk/Feedback;)[B
.end method

.method private static native nisfDecrypt(Ljava/lang/String;Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)[B
.end method

.method private static native nisfGenerateOpaqueData(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
.end method

.method private static native nisfGetMCUSecurityAsset(Lcom/irdeto/securesdk/Feedback;)[B
.end method

.method private static native nisfGetProvisionRequest(Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
.end method

.method private static native nisfInitialize()I
.end method

.method private static native nisfMsgPack([B)[B
.end method

.method private static native nisfProvisionResponse(Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)V
.end method

.method private static native nisfProvisioned(Lcom/irdeto/securesdk/Feedback;)Z
.end method

.method private static native nisfSecureStoreReload()I
.end method

.method private static native nisfSetStorePath(Ljava/lang/String;)I
.end method

.method private static native nisfStoreGet(Ljava/lang/String;ILcom/irdeto/securesdk/Feedback;)[B
.end method

.method private static native nisfTokenOperate([Ljava/lang/String;[BLcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
.end method

.method private static native nisfTokenSave([Ljava/lang/String;[Ljava/lang/String;)I
.end method
