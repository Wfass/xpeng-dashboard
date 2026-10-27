.class public final Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;
.super Ljava/lang/Object;
.source "KeyStoreHelper.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;
    }
.end annotation


# static fields
.field private static PASSWORD:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static VM:Ljava/lang/String;

.field private static VN:Ljava/security/KeyStore;

.field private static VO:Z

.field private static VP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "KeyStoreHelper"

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "changeit"

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/d;->dJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    .line 49
    const-string v0, "/private/sec/XpengAndroidKeyStore"

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VM:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static H([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3

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

.method private static a(Ljava/io/InputStream;Ljava/lang/String;[B)[B
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 229
    nop

    .line 230
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->dH(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 237
    if-nez p1, :cond_1

    .line 238
    return-object v0

    .line 241
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    goto :goto_0

    .line 242
    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    move-object p0, v0

    :goto_0
    return-object p0

    .line 232
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljavax/crypto/SecretKey;[B)[B
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 300
    nop

    .line 301
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_4

    .line 308
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 309
    const/4 v2, 0x2

    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->H([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 310
    new-instance p1, Ljavax/crypto/CipherInputStream;

    invoke-direct {p1, p0, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 312
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/CipherInputStream;->read()I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 315
    int-to-byte p2, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    const/4 p2, 0x0

    :goto_1
    :try_start_1
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 320
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, p1, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 324
    :cond_2
    goto :goto_3

    .line 322
    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, v0

    .line 323
    :goto_2
    sget-object p2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    :goto_3
    return-object p1

    .line 304
    :cond_3
    :goto_4
    return-object v0
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/lang/String;[B)[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 210
    nop

    .line 211
    if-eqz p0, :cond_1

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->a(Ljava/io/InputStream;Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    .line 213
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([BLjava/lang/String;[B)[B
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 336
    nop

    .line 337
    const/4 v0, 0x0

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
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->dH(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 347
    if-nez p1, :cond_1

    .line 348
    return-object v0

    .line 351
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->c([BLjavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception p0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    move-object p0, v0

    :goto_0
    return-object p0

    .line 342
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static a([BLjavax/crypto/SecretKey;)[B
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 272
    nop

    .line 274
    const/4 v0, 0x0

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
    const/4 v2, 0x2

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/a;->VX:[B

    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->H([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 283
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 284
    :catch_0
    move-exception p0

    .line 285
    sget-object p1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 286
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    move-object p0, v0

    :goto_0
    return-object p0

    .line 276
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static c([BLjava/lang/String;)[B
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 256
    nop

    .line 258
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->dH(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 259
    if-nez p1, :cond_0

    .line 260
    return-object v0

    .line 263
    :cond_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->a([BLjavax/crypto/SecretKey;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static c([BLjavax/crypto/SecretKey;[B)[B
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 401
    nop

    .line 403
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    .line 411
    :cond_0
    :try_start_0
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 412
    const/4 v2, 0x1

    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->H([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p2

    invoke-virtual {v1, v2, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 414
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    new-instance p2, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p2, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 417
    invoke-virtual {p2, p0}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 418
    invoke-virtual {p2}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 420
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    :try_start_1
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    goto :goto_1

    .line 422
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object p0, v0

    .line 423
    :goto_0
    sget-object p2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 424
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    :goto_1
    return-object p0

    .line 407
    :cond_1
    :goto_2
    return-object v0
.end method

.method private static dH(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

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

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    return-object v1

    .line 456
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 462
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 463
    if-nez v0, :cond_1

    .line 464
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 465
    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VP:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_1
    if-nez v0, :cond_2

    .line 468
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load secret key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    return-object v1

    .line 472
    :cond_2
    sget-object p0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cost time:\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-object v0
.end method

.method public static init()Z
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->oD()Z

    move-result v0

    .line 66
    if-nez v0, :cond_1

    .line 67
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->oE()Z

    move-result v0

    .line 70
    :cond_1
    return v0
.end method

.method public static o(Ljava/util/Map;)V
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
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->init()Z

    .line 135
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    if-ne v0, v1, :cond_3

    .line 142
    const/4 v0, 0x0

    .line 143
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 144
    new-instance v0, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v1, "GCM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const-string v1, "NoPadding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

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
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 154
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const-string v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 155
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 158
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    invoke-virtual {v3, v2, v4, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    return-void

    .line 136
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Illegal security keys!!!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static oA()Z
    .locals 5

    .line 78
    nop

    .line 80
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore was not initialized!"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    return v1

    .line 86
    :cond_0
    move v0, v1

    :goto_0
    :try_start_0
    sget v2, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    if-ge v0, v2, :cond_2

    .line 87
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/a;->VU:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 88
    nop

    .line 89
    goto :goto_1

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const/4 v1, 0x1

    :goto_1
    goto :goto_2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 94
    nop

    .line 97
    :goto_2
    return v1
.end method

.method public static oB()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 104
    nop

    .line 105
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "KeyStore was not initialized!"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    return v1

    .line 111
    :cond_0
    :goto_0
    :try_start_0
    sget v0, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    if-ge v1, v0, :cond_2

    .line 112
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/a;->VU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/a;->VU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    nop

    .line 120
    nop

    .line 122
    const/4 v0, 0x1

    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    throw v0
.end method

.method public static oC()V
    .locals 1

    .line 394
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VO:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->oF()Z

    .line 397
    :cond_0
    return-void
.end method

.method private static oD()Z
    .locals 6

    .line 506
    nop

    .line 508
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "XpengAndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    .line 509
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 510
    const/4 v1, 0x1

    .line 511
    :try_start_1
    sput-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VO:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 514
    nop

    .line 516
    move v0, v1

    goto :goto_1

    .line 512
    :catch_0
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_0

    :catch_1
    move-exception v1

    .line 513
    :goto_0
    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load key store, reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    :goto_1
    return v0
.end method

.method private static oE()Z
    .locals 7

    .line 520
    nop

    .line 521
    nop

    .line 523
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    sput-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    .line 525
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VM:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VM:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 527
    :try_start_1
    sget-object v1, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    sget-object v4, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    move-object v1, v3

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 534
    :catch_0
    move-exception v0

    move-object v1, v3

    goto :goto_1

    .line 529
    :cond_0
    :try_start_2
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 532
    :goto_0
    nop

    .line 533
    :try_start_3
    sput-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VO:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 537
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 538
    goto :goto_2

    .line 534
    :catch_1
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    goto :goto_1

    .line 537
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 534
    :catch_2
    move-exception v0

    .line 535
    :goto_1
    :try_start_4
    sget-object v3, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load default key store, reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 537
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 538
    nop

    .line 540
    move v0, v2

    :goto_2
    return v0

    .line 537
    :goto_3
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static oF()Z
    .locals 4

    .line 544
    nop

    .line 546
    nop

    .line 548
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VM:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 549
    :try_start_1
    sget-object v0, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->VN:Ljava/security/KeyStore;

    sget-object v2, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->PASSWORD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    const/4 v0, 0x1

    .line 553
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 554
    goto :goto_2

    .line 553
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    goto :goto_1

    .line 553
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 551
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 553
    :goto_1
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/b;->closeQuietly(Ljava/io/Closeable;)V

    .line 554
    nop

    .line 556
    const/4 v0, 0x0

    :goto_2
    return v0
.end method
