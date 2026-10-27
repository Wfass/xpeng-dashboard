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

    .line 46
    const-string v0, "KeyStoreHelper"

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "changeit"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    .line 49
    const-string v0, "/private/sec/XpengAndroidKeyStore"

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
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

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Z
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    if-nez v1, :cond_0

    .line 106
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore was not initialized!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    return v0

    .line 111
    :cond_0
    const/4 v1, 0x0

    .local v1, "no":I
    :goto_0
    :try_start_0
    sget v2, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ge v1, v2, :cond_2

    .line 112
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

    .line 113
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

    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "no":I
    :cond_2
    const/4 v0, 0x1

    .line 120
    nop

    .line 122
    return v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    throw v1
.end method

.method public static decryptGeneral([BLjava/lang/String;)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "keyAlias"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 259
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_0

    .line 260
    return-object v0

    .line 263
    :cond_0
    invoke-static {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptInternal([BLjavax/crypto/SecretKey;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 266
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
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

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 281
    .local v1, "inCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->FIXED_IV:[B

    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 283
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 287
    .end local v1    # "inCipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 286
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 276
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

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B

    move-result-object v1

    return-object v1

    .line 175
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

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 199
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2, v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2

    return-object v2

    .line 194
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

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "values":[B
    if-eqz p0, :cond_1

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStream(Ljava/io/InputStream;Ljava/lang/String;[B)[B

    move-result-object v1

    return-object v1

    .line 213
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

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "values":[B
    if-eqz p0, :cond_2

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 237
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_1

    .line 238
    return-object v0

    .line 241
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptWithStreamAndKey(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 244
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 232
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

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "values":[B
    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_3

    .line 308
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 309
    .local v1, "output":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 310
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 312
    .local v2, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v3, "decoded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "nextByte":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 315
    int-to-byte v4, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [B

    move-object v0, v4

    .line 319
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_2

    .line 320
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 324
    .end local v1    # "output":Ljavax/crypto/Cipher;
    .end local v2    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    .end local v3    # "decoded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "i":I
    .end local v5    # "nextByte":I
    :cond_2
    goto :goto_2

    .line 322
    :catch_0
    move-exception v1

    .line 323
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

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 304
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

    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "result":[B
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 382
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_0

    .line 383
    return-object v0

    .line 386
    :cond_0
    invoke-static {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 389
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
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

    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 439
    .local v1, "inCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->FIXED_IV:[B

    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 441
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 445
    .end local v1    # "inCipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 444
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 434
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

    .line 401
    const/4 v0, 0x0

    .line 403
    .local v0, "values":[B
    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 411
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 412
    .local v1, "inCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 414
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v2, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 417
    .local v3, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    invoke-virtual {v3, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 418
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 420
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v0, v4

    .line 421
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v1    # "inCipher":Ljavax/crypto/Cipher;
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 424
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 407
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

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "result":[B
    if-eqz p0, :cond_2

    array-length v1, p0

    if-eqz v1, :cond_2

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 347
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v1, :cond_1

    .line 348
    return-object v0

    .line 351
    :cond_1
    invoke-static {p0, v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;[B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 354
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 342
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

    .line 367
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 368
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p0, v0, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptInternal([BLjavax/crypto/SecretKey;[B)[B

    move-result-object v1

    return-object v1
.end method

.method private static getParamsSpec([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .param p0, "iv"    # [B

    .line 565
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 567
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    return-object v0

    .line 569
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

    .line 451
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 452
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found the key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    return-object v1

    .line 456
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 462
    .local v2, "start":J
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 463
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    if-nez v0, :cond_1

    .line 464
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 465
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sSecretKeyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_1
    if-nez v0, :cond_2

    .line 468
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load secret key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    return-object v1

    .line 472
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

    .line 473
    return-object v0
.end method

.method public static hasValidIndividualKeys()Z
    .locals 5

    .line 78
    const/4 v0, 0x1

    .line 80
    .local v0, "result":Z
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 81
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "KeyStore was not initialized!"

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    return v2

    .line 86
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

    .line 87
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

    .line 88
    const/4 v0, 0x0

    .line 89
    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "no":I
    .restart local v2    # "no":I
    goto :goto_0

    .line 95
    .end local v2    # "no":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 94
    const/4 v0, 0x0

    .line 97
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method public static init()Z
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->loadWithXmartKeyStore()Z

    move-result v0

    .line 66
    .local v0, "result":Z
    if-nez v0, :cond_1

    .line 67
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->loadWithDefaultKeyStore()Z

    move-result v0

    .line 70
    :cond_1
    return v0
.end method

.method private static loadWithDefaultKeyStore()Z
    .locals 6

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "result":Z
    const/4 v1, 0x0

    move-object v2, v1

    .line 523
    .local v2, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    sput-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    .line 525
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 527
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_0

    .line 529
    :cond_0
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 532
    :goto_0
    const/4 v0, 0x1

    .line 533
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 537
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 534
    :catch_0
    move-exception v1

    .line 535
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

    .line 537
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 538
    nop

    .line 540
    return v0

    .line 537
    :goto_2
    invoke-static {v2}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static loadWithXmartKeyStore()Z
    .locals 5

    .line 506
    const/4 v0, 0x0

    move v1, v0

    .line 508
    .local v1, "result":Z
    :try_start_0
    const-string v2, "XpengAndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    .line 509
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 510
    const/4 v1, 0x1

    .line 511
    sput-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
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

    .line 516
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private static saveKeyStoreToFile()Z
    .locals 4

    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 548
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->KEY_STORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 549
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    .line 551
    :catch_0
    move-exception v2

    .line 553
    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 554
    nop

    .line 556
    return v0
.end method

.method public static store()V
    .locals 1

    .line 394
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sUsedDefaultKeyStore:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->saveKeyStoreToFile()Z

    .line 397
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

    .line 131
    .local p0, "sharedSecrets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->init()Z

    .line 135
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-ne v0, v1, :cond_3

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "kp":Landroid/security/keystore/KeyProtection;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 144
    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 152
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

    .line 153
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 154
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 155
    .local v3, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 158
    .local v4, "skEntry":Ljava/security/KeyStore$SecretKeyEntry;
    sget-object v5, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->sKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v5, v2, v4, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 159
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "skEntry":Ljava/security/KeyStore$SecretKeyEntry;
    goto :goto_0

    .line 160
    :cond_2
    return-void

    .line 136
    .end local v0    # "kp":Landroid/security/keystore/KeyProtection;
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal security keys!!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
