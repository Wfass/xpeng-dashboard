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

.field private mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

.field private sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 1

    .line 632
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

    .line 234
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    return-void
.end method

.method public asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;
    .param p3, "token"    # [Ljava/lang/String;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .line 484
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 488
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$4;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 503
    return-void

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "token"    # [Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .line 433
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$2;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 449
    return-void

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 7
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;
    .param p3, "token"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;

    .line 507
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$5;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 530
    return-void

    .line 508
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

    .line 460
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$3;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    .line 480
    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 17
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "data"    # [B

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 364
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_8

    .line 368
    const/4 v0, 0x2

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 370
    .end local p2    # "data":[B
    .local v3, "data":[B
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 371
    .local v4, "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v5, "skipListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 374
    .local v6, "extendedLength":I
    const/4 v7, 0x0

    .line 375
    .local v7, "result":Ljava/lang/String;
    const/4 v8, 0x0

    .line 376
    .local v8, "uid":Ljava/lang/String;
    iget-object v9, v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    if-eqz v9, :cond_0

    .line 377
    iget-object v9, v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    invoke-interface {v9}, Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;->getCurrentUid()Ljava/lang/String;

    move-result-object v8

    .line 379
    :cond_0
    const/4 v9, 0x0

    move v10, v6

    move v6, v9

    .local v6, "i":I
    .local v10, "extendedLength":I
    :goto_0
    array-length v11, v2

    const/4 v12, 0x1

    if-ge v6, v11, :cond_3

    .line 380
    aget-object v11, v2, v6

    .line 381
    .local v11, "key":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 382
    aget-object v13, v2, v6

    invoke-static {v8, v13}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 384
    :cond_1
    invoke-virtual {v1, v11}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 385
    .local v13, "token":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 386
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v5, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    goto :goto_1

    .line 389
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v5, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    aget-object v12, v2, v6

    invoke-virtual {v4, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    aget-object v12, v2, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v12, v14

    add-int/2addr v10, v12

    .line 379
    .end local v11    # "key":Ljava/lang/String;
    .end local v13    # "token":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    .end local v6    # "i":I
    :cond_3
    const-string v0, "RandomKeySecurity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildTokenData skipListMap = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    const/4 v0, 0x0

    move-object v6, v0

    .line 398
    .local v6, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    if-lez v10, :cond_6

    .line 399
    :try_start_0
    array-length v0, v3

    add-int/2addr v0, v10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 400
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/16 v11, 0x26

    .line 401
    .local v11, "andOpt":B
    const/16 v13, 0x3d

    .line 402
    .local v13, "equalOpt":B
    nop

    .local v9, "i":I
    :goto_2
    array-length v14, v2

    if-ge v9, v14, :cond_5

    .line 403
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-ne v12, v14, :cond_4

    .line 404
    goto :goto_3

    .line 406
    :cond_4
    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v14

    aget-object v15, v2, v9

    const-string v12, "UTF-8"

    .line 407
    invoke-virtual {v15, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 408
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v12

    aget-object v14, v2, v9

    .line 409
    invoke-virtual {v4, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "UTF-8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/4 v12, 0x1

    goto :goto_2

    .line 411
    .end local v9    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    move-object v3, v9

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "andOpt":B
    .end local v13    # "equalOpt":B
    goto :goto_4

    .line 414
    :catch_0
    move-exception v0

    goto :goto_5

    .line 413
    :cond_6
    :goto_4
    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 416
    goto :goto_6

    .line 414
    :goto_5
    nop

    .line 415
    .local v0, "ex":Ljava/lang/Exception;
    const-string v9, "RandomKeySecurity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buildTokenData ex = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 419
    invoke-virtual {v6}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v7

    .line 422
    :cond_7
    return-object v7

    .line 365
    .end local v3    # "data":[B
    .end local v4    # "tokens":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "skipListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v6    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "uid":Ljava/lang/String;
    .end local v10    # "extendedLength":I
    .restart local p2    # "data":[B
    :cond_8
    move-object/from16 v3, p2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearIndividualData()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->cleanIndividualKeys()Z

    .line 126
    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RandomKeySecurity"

    const-string v2, "\u6e05\u9664\u4e2a\u6027\u5316\u5931\u8d25!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 121
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

    .line 547
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    .line 549
    .local v0, "result":[B
    if-eqz v0, :cond_0

    .line 550
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 553
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "Iv"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 567
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p3, p1, v0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptStringWithKey([BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 266
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->decode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v1

    .line 273
    .local v1, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->rawContentString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 274
    .end local v1    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0

    .line 267
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

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 202
    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 244
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v1

    .line 251
    .local v1, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 254
    .end local v1    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 245
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

    .line 581
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 587
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, p2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([BI)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object v1

    .line 588
    .local v1, "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 591
    .end local v1    # "item":Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;
    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 582
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

    .line 194
    const-string v0, ""

    return-object v0
.end method

.method public getEncryptionType()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->TEE_RANDOM_KEY:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public getIndividualFlag()Ljava/lang/String;
    .locals 4

    .line 106
    const/4 v0, 0x0

    move-object v1, v0

    .line 108
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

    .line 110
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 112
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

    .line 140
    const-string v0, ""

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 288
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_3

    .line 292
    const-string v0, ""

    .line 293
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "savedContent":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    return-object v0

    .line 297
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v2

    .line 298
    .local v2, "sourceBytes":[B
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getGeneralKeyAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptGeneral([BLjava/lang/String;)[B

    move-result-object v3

    .line 299
    .local v3, "decryptResult":[B
    if-eqz v3, :cond_2

    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 304
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v4

    .line 306
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0

    .line 300
    :cond_2
    :goto_1
    return-object v0

    .line 289
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

    .line 155
    const-string v0, "RandomKeySecurity"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "result":Z
    new-instance v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;)V

    .line 158
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 162
    .local v1, "type":Ljava/lang/reflect/Type;
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 163
    .local v2, "list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    sget v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-eq v3, v4, :cond_0

    .line 164
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

    .line 165
    return v0

    .line 168
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    sget v4, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 169
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

    .line 170
    .local v5, "key":Ljava/lang/Integer;
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;

    .line 171
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

    .line 172
    invoke-static {v8, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 171
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
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

    .line 174
    .end local v5    # "key":Ljava/lang/Integer;
    .end local v6    # "bean":Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;
    goto :goto_0

    .line 176
    :cond_1
    invoke-static {v3}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->writeSecretData(Ljava/util/Map;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->store()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v0, 0x1

    .line 183
    .end local v3    # "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    goto :goto_1

    .line 181
    .end local v2    # "list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;>;"
    :catch_0
    move-exception v2

    .line 182
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
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

    .line 59
    const-class v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->init()Z

    move-result v1

    sput-boolean v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    .line 61
    const-string v1, "RandomKeySecurity"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sContext:Landroid/content/Context;

    .line 63
    monitor-exit v0

    .line 64
    return-object p0

    .line 63
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

    .line 75
    invoke-static {p1}, Lcom/xiaopeng/lib/security/SecurityCommon;->checkSystemUid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4ec5\u7cfb\u7edf\u8fdb\u7a0b\u5141\u8bb8\u8c03\u7528\u4e2a\u6027\u5316\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInitAndIndivSuccess()Z
    .locals 1

    .line 88
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

    .line 96
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    return v0
.end method

.method public saveIndividualFlag()V
    .locals 2

    .line 210
    :try_start_0
    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityCommon;->getBuildInfoFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 225
    return-void
.end method

.method public saveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "ids"    # [Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;

    .line 611
    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    .line 612
    const-string v0, "RandomKeySecurity"

    const-string v1, "Invalid tokens."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    return-void

    .line 616
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 617
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 621
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "key":Ljava/lang/String;
    const-string v3, "RandomKeySecurity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToken key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .restart local v1    # "token":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RandomKeySecurity: token decode failed!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 625
    .end local v0    # "i":I
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "ids"    # [Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;

    .line 596
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 597
    const-string v0, "RandomKeySecurity"

    const-string v1, "Invalid tokens."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    return-void

    .line 601
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 602
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 606
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .end local v1    # "token":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .restart local v1    # "token":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RandomKeySecurity: token decode failed!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    .end local v0    # "i":I
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 320
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_2

    .line 324
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    return-void

    .line 331
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getGeneralKeyAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptGeneral([BLjava/lang/String;)[B

    move-result-object v0

    .line 332
    .local v0, "encoded":[B
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 333
    invoke-static {v0}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "encoded":[B
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 321
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V
    .locals 0
    .param p1, "uidListener"    # Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    .line 534
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    .line 535
    return-void
.end method
