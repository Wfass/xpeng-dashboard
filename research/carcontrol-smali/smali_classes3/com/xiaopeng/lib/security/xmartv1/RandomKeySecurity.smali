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

    const/4 v0, 0x0

    .line 44
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public asyncSaveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "uid",
            "ids",
            "token",
            "runnable"
        }
    .end annotation

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

    return-void

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asyncSaveToken([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ids",
            "token",
            "runnable"
        }
    .end annotation

    .line 433
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$2;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void

    .line 434
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asyncSaveTokenWithListener(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "uid",
            "ids",
            "token",
            "listener"
        }
    .end annotation

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

    return-void

    .line 508
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public asyncSaveTokenWithListener([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ids",
            "token",
            "listener"
        }
    .end annotation

    .line 460
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$3;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;[Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/lib/security/ISecurityModule$ResultListener;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void

    .line 461
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildTokenData([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "data"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 364
    sget-boolean v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    .line 368
    invoke-static {p2, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    .line 370
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 371
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 376
    iget-object v4, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 377
    invoke-interface {v4}, Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;->getCurrentUid()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 379
    :goto_1
    array-length v9, p1

    const/4 v10, 0x1

    if-ge v7, v9, :cond_3

    .line 380
    aget-object v9, p1, v7

    .line 381
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 382
    aget-object v9, p1, v7

    invoke-static {v4, v9}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 384
    :cond_1
    invoke-virtual {p0, v9}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 385
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 386
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 389
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    aget-object v10, p1, v7

    invoke-virtual {v2, v10, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    aget-object v10, p1, v7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v10, v9

    add-int/2addr v8, v10

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 394
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildTokenData skipListMap = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RandomKeySecurity"

    invoke-static {v4, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v8, :cond_6

    .line 399
    :try_start_0
    array-length v1, p2

    add-int/2addr v1, v8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/16 v1, 0x26

    const/16 v7, 0x3d

    .line 402
    :goto_3
    array-length v8, p1

    if-ge v6, v8, :cond_5

    .line 403
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v10, v8, :cond_4

    goto :goto_4

    .line 406
    :cond_4
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, p1, v6

    .line 407
    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 408
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    aget-object v9, p1, v6

    .line 409
    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 411
    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 413
    :cond_6
    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 415
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildTokenData ex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v5

    :goto_5
    if-eqz p1, :cond_7

    .line 418
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 419
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    return-object v5

    .line 365
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    .line 126
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

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RandomKeySecurity"

    const-string/jumbo v2, "\u6e05\u9664\u4e2a\u6027\u5316\u5931\u8d25!"

    .line 129
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u4ec5\u7cfb\u7edf\u8fdb\u7a0b\u5141\u8bb8\u8c03\u7528\u4e2a\u6027\u5316\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "Iv",
            "data"
        }
    .end annotation

    .line 547
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 550
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public cryptoDecodeInByteArray(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "Iv",
            "data"
        }
    .end annotation

    .line 567
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p3, p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptStringWithKey([BLjava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    .line 568
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 266
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 272
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->decode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->rawContentString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 244
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 250
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodeWithIndex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "keyIndex"
        }
    .end annotation

    .line 581
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UTF-8"

    .line 587
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encode([BI)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p1

    .line 588
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->encodedString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 590
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    .line 582
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateIndividualDataForServer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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
    .locals 3

    const/4 v0, 0x0

    .line 108
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/http/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getIndividualRequestStr()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 288
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sIsInitSuccess:Z

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object p1

    .line 298
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getGeneralKeyAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->decryptGeneral([BLjava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 299
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v1

    .line 289
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public individualWithData(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RandomKeySecurity"

    .line 155
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;)V

    .line 158
    invoke-virtual {v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    .line 162
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 163
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sget v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    if-eq v1, v3, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong individual data with length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", expected "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v2

    .line 168
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    sget v3, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_NUM:I

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 169
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 170
    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/xiaopeng/lib/security/xmartv1/XmartV1Constants;->LOCAL_KEYS_PREFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;->key:Ljava/lang/String;

    .line 172
    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 171
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote security key #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->writeSecretData(Ljava/util/Map;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->store()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v2
.end method

.method public bridge synthetic init(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

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

    const-string v1, "RandomKeySecurity"

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sContext:Landroid/content/Context;

    .line 63
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

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

    move-result-object p1

    return-object p1

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "\u4ec5\u7cfb\u7edf\u8fdb\u7a0b\u5141\u8bb8\u8c03\u7528\u4e2a\u6027\u5316\u64cd\u4f5c!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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

    :try_start_0
    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    .line 210
    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityCommon;->getBuildInfoFlag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saveMCUSecurityKey(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    return-void
.end method

.method public saveToken(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "ids",
            "tokens"
        }
    .end annotation

    .line 611
    array-length v0, p2

    array-length v1, p3

    const-string v2, "RandomKeySecurity"

    if-eq v0, v1, :cond_0

    const-string p1, "Invalid tokens."

    .line 612
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 616
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 617
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 621
    aget-object v3, p2, v0

    invoke-static {p1, v3}, Lcom/xiaopeng/lib/security/SecurityCommon;->getUidIdsKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveToken key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity: token decode failed!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public saveToken([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ids",
            "tokens"
        }
    .end annotation

    .line 596
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    const-string p1, "RandomKeySecurity"

    const-string p2, "Invalid tokens."

    .line 597
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 601
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 602
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 606
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->setString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity: token decode failed!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

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

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 331
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->getGeneralKeyAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->encryptGeneral([BLjava/lang/String;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 332
    array-length v0, p2

    if-lez v0, :cond_1

    .line 333
    invoke-static {p2}, Lcom/xiaopeng/lib/security/SecurityCommon;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p2

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mSecureStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    .line 321
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUidListener(Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uidListener"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->mUidListener:Lcom/xiaopeng/lib/security/ISecurityModule$UidListener;

    return-void
.end method
