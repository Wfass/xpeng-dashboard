.class public Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
.super Ljava/lang/Object;
.source "RandomKeySecurity.java"

# interfaces
.implements Lcom/xiaopeng/lib/security/ISecurityModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;,
        Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$Holder;
    }
.end annotation


# static fields
.field private static final INDIV_FLAG_FILE_NAME:Ljava/lang/String; = "si_flag.dat"

.field private static final NLSS_FILE_PATH:Ljava/lang/String; = "/mnt/vendor/private/sec/"

.field private static final TAG:Ljava/lang/String; = "RandomKeySecurity"

.field private static sIsInitSuccess:Z


# instance fields
.field private mSecureStore:Landroid/content/SharedPreferences;

.field private sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 1

    .line 532
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$Holder;->access$000()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    return-void
.end method

.method public asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 409
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 413
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$2;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 425
    return-void

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 2
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    .line 435
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$3;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 455
    return-void

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "data"    # [B

    .line 356
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_5

    .line 360
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    .line 362
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 364
    .local v1, "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 365
    .local v2, "extendedLength":I
    const/4 v3, 0x0

    .line 366
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .local v2, "i":I
    .local v5, "extendedLength":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_1

    .line 367
    aget-object v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, "token":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 369
    goto :goto_1

    .line 371
    :cond_0
    aget-object v7, p1, v2

    invoke-virtual {v1, v7, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 366
    .end local v6    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 377
    .local v0, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    if-lez v5, :cond_3

    .line 378
    :try_start_0
    array-length v2, p2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 379
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    const/16 v6, 0x26

    .line 380
    .local v6, "andOpt":B
    const/16 v7, 0x3d

    .line 381
    .local v7, "equalOpt":B
    nop

    .local v4, "i":I
    :goto_2
    array-length v8, p1

    if-ge v4, v8, :cond_2

    .line 382
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, p1, v4

    const-string v10, "UTF-8"

    .line 383
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 384
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, p1, v4

    .line 385
    invoke-virtual {v1, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 387
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    move-object p2, v4

    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "andOpt":B
    .end local v7    # "equalOpt":B
    goto :goto_3

    .line 390
    :catch_0
    move-exception v2

    goto :goto_4

    .line 389
    :cond_3
    :goto_3
    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 392
    goto :goto_5

    .line 390
    :goto_4
    nop

    .line 391
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {v0}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 395
    invoke-virtual {v0}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v3

    .line 398
    :cond_4
    return-object v3

    .line 357
    .end local v0    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    .end local v1    # "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "result":Ljava/lang/String;
    .end local v5    # "extendedLength":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearIndividualData()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->cleanIndividualKeys()Z

    .line 122
    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RandomKeySecurity"

    const-string v2, "\u6e05\u9664\u4e2a\u6027\u5316\u5931\u8d25!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4ec5\u7cfb\u7edf\u8fdb\u7a0b\u5141\u8bb8\u8c03\u7528\u4e2a\u6027\u5316\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 466
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 468
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 469
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 472
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 485
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p3, p1, v0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptStringWithKey([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 486
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 259
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->decode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v1

    .line 266
    .local v1, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->rawContentString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 267
    .end local v1    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    :catch_0
    move-exception v1

    .line 268
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0

    .line 260
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteString(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 343
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 196
    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 237
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v1

    .line 244
    .local v1, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 247
    .end local v1    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 238
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodeWithIndex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "keyIndex"    # I

    .line 498
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([BI)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v1

    .line 505
    .local v1, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 508
    .end local v1    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 499
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateIndividualDataForServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    const-string v0, ""

    return-object v0
.end method

.method public getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->TEE_RANDOM_KEY:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public getIndividualFlag()Ljava/lang/String;
    .locals 4

    .line 102
    const/4 v0, 0x0

    move-object v1, v0

    .line 104
    .local v1, "flag":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 106
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 108
    :goto_0
    return-object v1
.end method

.method public getIndividualRequestStr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    const-string v0, ""

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 281
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_3

    .line 285
    const-string v0, ""

    .line 286
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "savedContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    return-object v0

    .line 290
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 291
    .local v2, "sourceBytes":[B
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getGeneralKeyAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptGeneral([BLjava/lang/String;)[B

    move-result-object v3

    .line 292
    .local v3, "decryptResult":[B
    if-eqz v3, :cond_2

    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v4

    .line 299
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 293
    :cond_2
    :goto_1
    return-object v0

    .line 282
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "savedContent":Ljava/lang/String;
    .end local v2    # "sourceBytes":[B
    .end local v3    # "decryptResult":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public individualWithData(Ljava/lang/String;)Z
    .locals 10
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    const-string v0, "RandomKeySecurity"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "result":Z
    new-instance v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;)V

    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 156
    .local v1, "type":Ljava/lang/reflect/Type;
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 157
    .local v2, "list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    sget v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-eq v3, v4, :cond_0

    .line 158
    const-string v3, "RandomKeySecurity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong individual data with length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    return v0

    .line 162
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    sget v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 163
    .local v3, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 164
    .local v5, "key":Ljava/lang/Integer;
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;

    .line 165
    .local v6, "bean":Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;->key:Ljava/lang/String;

    const/4 v9, 0x0

    .line 166
    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 165
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v7, "RandomKeySecurity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrote security key #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .end local v5    # "key":Ljava/lang/Integer;
    .end local v6    # "bean":Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;
    goto :goto_0

    .line 170
    :cond_1
    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->writeSecretData(Ljava/util/Map;)V

    .line 172
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->store()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v0, 0x1

    .line 177
    .end local v3    # "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    goto :goto_1

    .line 175
    .end local v2    # "list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;>;"
    :catch_0
    move-exception v2

    .line 176
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public bridge synthetic init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const-class v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->init()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    .line 59
    const-string v1, "RandomKeySecurity"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sContext:Landroid/content/Context;

    .line 61
    monitor-exit v0

    .line 62
    return-object p0

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object p1

    return-object p1
.end method

.method public initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4ec5\u7cfb\u7edf\u8fdb\u7a0b\u5141\u8bb8\u8c03\u7528\u4e2a\u6027\u5316\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInitAndIndivSuccess()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->hasValidIndividualKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitSuccess()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public saveIndividualFlag()V
    .locals 2

    .line 204
    :try_start_0
    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityCommon;->getBuildInfoFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 218
    return-void
.end method

.method public saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;

    .line 513
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 514
    const-string v0, "RandomKeySecurity"

    const-string v1, "Invalid tokens."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 519
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 523
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .end local v1    # "token":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    .restart local v1    # "token":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RandomKeySecurity: token decode failed!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    .end local v0    # "i":I
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 313
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_2

    .line 317
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    return-void

    .line 324
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getGeneralKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptGeneral([BLjava/lang/String;)[B

    move-result-object v0

    .line 325
    .local v0, "encoded":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 326
    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "encoded":[B
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 332
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
