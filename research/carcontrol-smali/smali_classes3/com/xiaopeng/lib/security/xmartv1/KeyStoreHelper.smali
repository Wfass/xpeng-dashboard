.class public final Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;
.super Ljava/lang/Object;
.source "KeyStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;
    }
.end annotation


# static fields
.field private static KEY_STORE_PATH:Ljava/lang/String; = null

.field private static PASSWORD:Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = "KeyStoreHelper"

.field private static sKeyStore:Ljava/security/KeyStore;

.field private static sSecretKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field

.field private static sUsedDefaultKeyStore:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "changeit"

    .line 50
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    const-string v0, "/private/sec/XpengAndroidKeyStore"

    .line 51
    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanIndividualKeys()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore was not initialized!"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 122
    :cond_0
    :goto_0
    :try_start_0
    sget v0, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v1, v0, :cond_2

    .line 123
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 129
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 130
    throw v0
.end method

.method public static decryptGeneral([BLjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "keyAlias"
        }
    .end annotation

    const/4 v0, 0x0

    .line 269
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 274
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptInternal([BLjavax/crypto/SecretKey;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static decryptInternal([BLjavax/crypto/SecretKey;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "secretKey"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 285
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    .line 291
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 292
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->FIXED_IV:[B

    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 294
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    sget-object p1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 297
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static decryptString([BLjava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "keyAlias",
            "iv"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 183
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decryptStringWithKey([BLjava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "key",
            "iv"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 201
    array-length v0, p0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 210
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decryptWithByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "keyAlias",
            "iv"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "keyAlias",
            "iv"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 252
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "secretKey",
            "iv"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 312
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    .line 319
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 320
    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 321
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 323
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/CipherInputStream;->read()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    int-to-byte p2, p2

    .line 326
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [B

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    .line 331
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 334
    sget-object p1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public static encryptGeneral([BLjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "keyAlias"
        }
    .end annotation

    const/4 v0, 0x0

    .line 392
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 397
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 399
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static encryptInternal([BLjavax/crypto/SecretKey;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "secretKey"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 444
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    .line 449
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 450
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->FIXED_IV:[B

    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 452
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 454
    sget-object p1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 455
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static encryptInternal([BLjavax/crypto/SecretKey;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "secretKey",
            "iv"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 414
    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    .line 422
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 423
    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 425
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 428
    invoke-virtual {p2, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 429
    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 431
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 432
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 434
    sget-object p1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 435
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static encryptString([BLjava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "keyAlias",
            "iv"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 348
    array-length v1, p0

    if-eqz v1, :cond_2

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 362
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 364
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static encryptWithKey([BLjava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "key",
            "iv"
        }
    .end annotation

    .line 378
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 379
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iv"
        }
    .end annotation

    .line 576
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 578
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    return-object v0

    .line 580
    :cond_0
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object v0
.end method

.method private static getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyAlias"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 462
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 463
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found the key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 467
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 473
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    .line 475
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 476
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v0, :cond_2

    .line 479
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load secret key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 483
    :cond_2
    sget-object p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cost time:\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static hasValidIndividualKeys()Z
    .locals 5

    .line 88
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore was not initialized!"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_0
    move v0, v1

    .line 94
    :goto_0
    :try_start_0
    sget v2, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v0, v2, :cond_2

    .line 95
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 101
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    if-nez v1, :cond_3

    .line 106
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v0

    const/16 v2, 0x1770

    const-string v3, "no valid individual keys"

    invoke-interface {v0, v2, v3}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    :cond_3
    return v1
.end method

.method public static init()Z
    .locals 4

    .line 62
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->loadWithXmartKeyStore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v0

    const/16 v1, 0x1771

    const-string v2, "failed to init xmart keystore"

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->loadWithDefaultKeyStore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v1

    const/16 v2, 0x1772

    const-string v3, "failed to init default keystore"

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    :cond_1
    return v0
.end method

.method private static loadWithDefaultKeyStore()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 534
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    sput-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    .line 536
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 538
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    .line 540
    :cond_0
    :try_start_2
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 544
    :goto_0
    :try_start_3
    sput-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 548
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 546
    :goto_1
    :try_start_4
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load default key store, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 548
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    move v0, v2

    :goto_2
    return v0

    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static loadWithXmartKeyStore()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "XpengAndroidKeyStore"

    .line 519
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    .line 520
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    .line 522
    :try_start_1
    sput-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 524
    :goto_0
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load key store, reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method private static saveKeyStoreToFile()Z
    .locals 4

    const/4 v0, 0x0

    .line 559
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 560
    :try_start_1
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 564
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public static store()V
    .locals 1

    .line 405
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->saveKeyStoreToFile()Z

    :cond_0
    return-void
.end method

.method public static writeSecretData(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedSecrets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->init()Z

    .line 146
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 155
    new-instance v0, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v1, "GCM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const-string v1, "NoPadding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 163
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 165
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 169
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2, v4, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_2
    return-void

    .line 147
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Illegal security keys!!!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
