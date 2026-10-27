.class public Lorg/apache/commons/codec/digest/Md5Crypt;
.super Ljava/lang/Object;
.source "Md5Crypt.java"


# static fields
.field static final APR1_PREFIX:Ljava/lang/String; = "$apr1$"

.field private static final BLOCKSIZE:I = 0x10

.field static final MD5_PREFIX:Ljava/lang/String; = "$1$"

.field private static final ROUNDS:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apr1Crypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # Ljava/lang/String;

    .line 142
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;

    .line 164
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([B)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_0

    const-string v0, "$apr1$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_0
    const-string v0, "$apr1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static apr1Crypt([BLjava/util/Random;)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "random"    # Ljava/util/Random;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$apr1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1, p1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->apr1Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([B)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;

    .line 230
    const-string v0, "$1$"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Crypt([BLjava/lang/String;Ljava/lang/String;Ljava/util/Random;)Ljava/lang/String;
    .locals 19
    .param p0, "keyBytes"    # [B
    .param p1, "salt"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/util/Random;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 283
    array-length v3, v0

    .line 287
    .local v3, "keyLen":I
    const/16 v4, 0x8

    const/4 v5, 0x1

    if-nez v1, :cond_0

    .line 288
    move-object/from16 v6, p3

    invoke-static {v4, v6}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v7

    .local v7, "saltString":Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v7    # "saltString":Ljava/lang/String;
    :cond_0
    move-object/from16 v6, p3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "$"

    const-string v9, "\\$"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "([\\.\\/a-zA-Z0-9]{1,8}).*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 291
    .local v7, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 292
    .local v8, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 295
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 297
    .end local v8    # "m":Ljava/util/regex/Matcher;
    .local v7, "saltString":Ljava/lang/String;
    :goto_0
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 299
    .local v8, "saltBytes":[B
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v9

    .line 304
    .local v9, "ctx":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 309
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 314
    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 319
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v10

    .line 320
    .local v10, "ctx1":Ljava/security/MessageDigest;
    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 321
    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 322
    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 323
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 324
    .local v11, "finalb":[B
    move v12, v3

    .line 325
    .local v12, "ii":I
    :goto_1
    const/16 v13, 0x10

    const/4 v14, 0x0

    if-lez v12, :cond_2

    .line 326
    if-le v12, v13, :cond_1

    goto :goto_2

    :cond_1
    move v13, v12

    :goto_2
    invoke-virtual {v9, v11, v14, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 327
    add-int/lit8 v12, v12, -0x10

    goto :goto_1

    .line 333
    :cond_2
    invoke-static {v11, v14}, Ljava/util/Arrays;->fill([BB)V

    .line 338
    move v12, v3

    .line 339
    move v15, v12

    move v12, v14

    .line 340
    .local v12, "j":I
    .local v15, "ii":I
    :goto_3
    if-lez v15, :cond_4

    .line 341
    and-int/lit8 v4, v15, 0x1

    if-ne v4, v5, :cond_3

    .line 342
    aget-byte v4, v11, v14

    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_4

    .line 344
    :cond_3
    aget-byte v4, v0, v14

    invoke-virtual {v9, v4}, Ljava/security/MessageDigest;->update(B)V

    .line 346
    :goto_4
    shr-int/lit8 v15, v15, 0x1

    .line 339
    const/16 v4, 0x8

    goto :goto_3

    .line 352
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "$"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .local v4, "passwd":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 359
    .end local v11    # "finalb":[B
    .local v5, "finalb":[B
    move-object v11, v5

    move v5, v14

    .local v5, "i":I
    .restart local v11    # "finalb":[B
    :goto_5
    const/16 v13, 0x3e8

    if-ge v5, v13, :cond_9

    .line 360
    invoke-static {}, Lorg/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v10

    .line 361
    and-int/lit8 v13, v5, 0x1

    if-eqz v13, :cond_5

    .line 362
    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_6

    .line 364
    :cond_5
    const/16 v13, 0x10

    invoke-virtual {v10, v11, v14, v13}, Ljava/security/MessageDigest;->update([BII)V

    .line 367
    :goto_6
    rem-int/lit8 v13, v5, 0x3

    if-eqz v13, :cond_6

    .line 368
    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 371
    :cond_6
    rem-int/lit8 v13, v5, 0x7

    if-eqz v13, :cond_7

    .line 372
    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 375
    :cond_7
    and-int/lit8 v13, v5, 0x1

    if-eqz v13, :cond_8

    .line 376
    const/16 v13, 0x10

    invoke-virtual {v10, v11, v14, v13}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_7

    .line 378
    :cond_8
    const/16 v13, 0x10

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 380
    :goto_7
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 359
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 386
    .end local v5    # "i":I
    :cond_9
    aget-byte v5, v11, v14

    const/4 v13, 0x6

    aget-byte v13, v11, v13

    const/16 v17, 0xc

    aget-byte v14, v11, v17

    const/4 v2, 0x4

    invoke-static {v5, v13, v14, v2, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 387
    const/4 v5, 0x1

    aget-byte v5, v11, v5

    const/4 v13, 0x7

    aget-byte v13, v11, v13

    const/16 v14, 0xd

    aget-byte v14, v11, v14

    invoke-static {v5, v13, v14, v2, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 388
    const/4 v5, 0x2

    aget-byte v13, v11, v5

    const/16 v14, 0x8

    aget-byte v14, v11, v14

    const/16 v16, 0xe

    aget-byte v5, v11, v16

    invoke-static {v13, v14, v5, v2, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 389
    const/4 v5, 0x3

    aget-byte v5, v11, v5

    const/16 v13, 0x9

    aget-byte v13, v11, v13

    const/16 v14, 0xf

    aget-byte v14, v11, v14

    invoke-static {v5, v13, v14, v2, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 390
    aget-byte v5, v11, v2

    const/16 v13, 0xa

    aget-byte v13, v11, v13

    const/4 v14, 0x5

    aget-byte v14, v11, v14

    invoke-static {v5, v13, v14, v2, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 391
    const/16 v2, 0xb

    aget-byte v2, v11, v2

    const/4 v5, 0x0

    const/4 v13, 0x2

    invoke-static {v5, v5, v2, v13, v4}, Lorg/apache/commons/codec/digest/B64;->b64from24bit(BBBILjava/lang/StringBuilder;)V

    .line 397
    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 398
    invoke-virtual {v10}, Ljava/security/MessageDigest;->reset()V

    .line 399
    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 400
    invoke-static {v8, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 401
    invoke-static {v11, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 293
    .end local v4    # "passwd":Ljava/lang/StringBuilder;
    .end local v9    # "ctx":Ljava/security/MessageDigest;
    .end local v10    # "ctx1":Ljava/security/MessageDigest;
    .end local v11    # "finalb":[B
    .end local v12    # "j":I
    .end local v15    # "ii":I
    .local v7, "p":Ljava/util/regex/Pattern;
    .local v8, "m":Ljava/util/regex/Matcher;
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid salt value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static md5Crypt([BLjava/util/Random;)Ljava/lang/String;
    .locals 2
    .param p0, "keyBytes"    # [B
    .param p1, "random"    # Ljava/util/Random;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$1$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1, p1}, Lorg/apache/commons/codec/digest/B64;->getRandomSalt(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/codec/digest/Md5Crypt;->md5Crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
