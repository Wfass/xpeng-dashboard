.class public final Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;
.super Ljava/lang/Object;
.source "KeyStoreHelper.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;
    }
.end annotation


# static fields
.field private static KEY_STORE_PATH:Ljava/lang/String;

.field private static PASSWORD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

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

    .line 48
    const-string v0, "KeyStoreHelper"

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, "changeit"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    .line 51
    const-string v0, "/private/sec/XpengAndroidKeyStore"

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "result":Z
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    if-nez v1, :cond_0

    .line 117
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore was not initialized!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    return v0

    .line 122
    :cond_0
    const/4 v1, 0x0

    .local v1, "no":I
    :goto_0
    :try_start_0
    sget v2, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v1, v2, :cond_2

    .line 123
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "no":I
    :cond_2
    const/4 v0, 0x1

    .line 131
    nop

    .line 133
    return v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 130
    throw v1
.end method

.method public static decryptGeneral([BLjava/lang/String;)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "keyAlias"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 270
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_0

    .line 271
    return-object v0

    .line 274
    :cond_0
    invoke-static {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptInternal([BLjavax/crypto/SecretKey;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 277
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static decryptInternal([BLjavax/crypto/SecretKey;)[B
    .locals 4
    .param p0, "source"    # [B
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 292
    .local v1, "inCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->FIXED_IV:[B

    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 294
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 298
    .end local v1    # "inCipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 297
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 287
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static decryptString([BLjava/lang/String;[B)[B
    .locals 2
    .param p0, "source"    # [B
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B

    move-result-object v1

    return-object v1

    .line 186
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static decryptStringWithKey([BLjava/lang/String;[B)[B
    .locals 4
    .param p0, "source"    # [B
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 210
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2

    return-object v2

    .line 205
    .end local v1    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static decryptWithByteBuffer(Ljava/nio/ByteBuffer;Ljava/lang/String;[B)[B
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "values":[B
    if-eqz p0, :cond_1

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B

    move-result-object v1

    return-object v1

    .line 224
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "values":[B
    if-eqz p0, :cond_2

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 247
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 248
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_1

    .line 249
    return-object v0

    .line 252
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 255
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 243
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "values":[B
    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_3

    .line 319
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 320
    .local v1, "output":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 321
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 323
    .local v2, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v3, "decoded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "nextByte":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 326
    int-to-byte v4, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [B

    move-object v0, v4

    .line 330
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_2

    .line 331
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 335
    .end local v1    # "output":Ljavax/crypto/Cipher;
    .end local v2    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .end local v3    # "decoded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "i":I
    .end local v5    # "nextByte":I
    :cond_2
    goto :goto_2

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 315
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static encryptGeneral([BLjava/lang/String;)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "keyAlias"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 393
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_0

    .line 394
    return-object v0

    .line 397
    :cond_0
    invoke-static {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 400
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    .line 399
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static encryptInternal([BLjavax/crypto/SecretKey;)[B
    .locals 4
    .param p0, "source"    # [B
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 450
    .local v1, "inCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->FIXED_IV:[B

    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 452
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 456
    .end local v1    # "inCipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 455
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 445
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static encryptInternal([BLjavax/crypto/SecretKey;[B)[B
    .locals 5
    .param p0, "source"    # [B
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 412
    const/4 v0, 0x0

    .line 414
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 423
    .local v1, "inCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 425
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 426
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v2, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 428
    .local v3, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    invoke-virtual {v3, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 429
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 431
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v0, v4

    .line 432
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v1    # "inCipher":Ljavax/crypto/Cipher;
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 435
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 418
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static encryptString([BLjava/lang/String;[B)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "keyAlias"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "result":[B
    if-eqz p0, :cond_2

    array-length v1, p0

    if-eqz v1, :cond_2

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 358
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_1

    .line 359
    return-object v0

    .line 362
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;[B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 365
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 353
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static encryptWithKey([BLjava/lang/String;[B)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 378
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 379
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .param p0, "iv"    # [B

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
    .locals 7
    .param p0, "keyAlias"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
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

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    return-object v1

    .line 467
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 473
    .local v2, "start":J
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 474
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v0, :cond_1

    .line 475
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 476
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_1
    if-nez v0, :cond_2

    .line 479
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load secret key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    return-object v1

    .line 483
    :cond_2
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cost time:\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-object v0
.end method

.method public static hasValidIndividualKeys()Z
    .locals 5

    .line 86
    const/4 v0, 0x1

    .line 88
    .local v0, "result":Z
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 89
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "KeyStore was not initialized!"

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    return v2

    .line 94
    :cond_0
    nop

    .local v2, "no":I
    :goto_0
    move v1, v2

    .end local v2    # "no":I
    .local v1, "no":I
    :try_start_0
    sget v2, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v1, v2, :cond_2

    .line 95
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 96
    const/4 v0, 0x0

    .line 97
    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "no":I
    .restart local v2    # "no":I
    goto :goto_0

    .line 103
    .end local v2    # "no":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    const/4 v0, 0x0

    .line 105
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    if-nez v0, :cond_3

    .line 106
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v1

    const/16 v2, 0x1770

    const-string v3, "no valid individual keys"

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 108
    :cond_3
    return v0
.end method

.method public static init()Z
    .locals 4

    .line 62
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->loadWithXmartKeyStore()Z

    move-result v0

    .line 68
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v1

    const/16 v2, 0x1771

    const-string v3, "failed to init xmart keystore"

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->loadWithDefaultKeyStore()Z

    move-result v0

    .line 73
    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v1

    const/16 v2, 0x1772

    const-string v3, "failed to init default keystore"

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 78
    :cond_1
    return v0
.end method

.method private static loadWithDefaultKeyStore()Z
    .locals 6

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "result":Z
    const/4 v1, 0x0

    move-object v2, v1

    .line 534
    .local v2, "inputStream":Ljava/io/FileInputStream;
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
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 538
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_0

    .line 540
    :cond_0
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 543
    :goto_0
    const/4 v0, 0x1

    .line 544
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 548
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 545
    :catch_0
    move-exception v1

    .line 546
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load default key store, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 549
    nop

    .line 551
    return v0

    .line 548
    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static loadWithXmartKeyStore()Z
    .locals 5

    .line 517
    const/4 v0, 0x0

    move v1, v0

    .line 519
    .local v1, "result":Z
    :try_start_0
    const-string v2, "XpengAndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    .line 520
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 521
    const/4 v1, 0x1

    .line 522
    sput-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load key store, reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private static saveKeyStoreToFile()Z
    .locals 4

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 559
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 560
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    const/4 v0, 0x1

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 562
    :catch_0
    move-exception v2

    .line 564
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 565
    nop

    .line 567
    return v0
.end method

.method public static store()V
    .locals 1

    .line 405
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->saveKeyStoreToFile()Z

    .line 408
    :cond_0
    return-void
.end method

.method public static writeSecretData(Ljava/util/Map;)V
    .locals 6
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
    .local p0, "sharedSecrets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
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

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "kp":Landroid/security/keystore/KeyProtection;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 155
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

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
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 165
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 166
    .local v3, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 169
    .local v4, "skEntry":Ljava/security/KeyStore$SecretKeyEntry;
    sget-object v5, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v2, v4, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 170
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "skEntry":Ljava/security/KeyStore$SecretKeyEntry;
    goto :goto_0

    .line 171
    :cond_2
    return-void

    .line 147
    .end local v0    # "kp":Landroid/security/keystore/KeyProtection;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal security keys!!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
