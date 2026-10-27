.class public Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
.super Ljava/lang/Object;
.source "RandomKeySecurity.java"

# interfaces
.implements Lcom/xiaopeng/lib/security/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;,
        Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$a;
    }
.end annotation


# static fields
.field private static pn:Z


# instance fields
.field private Vu:Landroid/content/SharedPreferences;

.field private sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static oG()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 1

    .line 532
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$a;->oH()Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;[B)Ljava/lang/String;
    .locals 8

    .line 356
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->pn:Z

    if-eqz v0, :cond_5

    .line 360
    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p2

    .line 362
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 364
    nop

    .line 365
    nop

    .line 366
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 367
    aget-object v5, p1, v3

    invoke-virtual {p0, v5}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    goto :goto_1

    .line 371
    :cond_0
    aget-object v6, p1, v3

    invoke-virtual {v1, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    aget-object v6, p1, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    .line 366
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :cond_1
    nop

    .line 377
    const/4 v0, 0x0

    if-lez v4, :cond_3

    .line 378
    :try_start_0
    array-length v3, p2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 379
    const/16 v3, 0x26

    .line 380
    const/16 v4, 0x3d

    .line 381
    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 382
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v6, p1, v2

    const-string v7, "UTF-8"

    .line 383
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 384
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v6, p1, v2

    .line 385
    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 387
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    goto :goto_3

    .line 390
    :catch_0
    move-exception p1

    goto :goto_4

    .line 389
    :cond_3
    :goto_3
    invoke-static {p2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->G([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    goto :goto_5

    .line 390
    :goto_4
    nop

    .line 391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    move-object p1, v0

    :goto_5
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 395
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->ow()Ljava/lang/String;

    move-result-object v0

    .line 398
    :cond_4
    return-object v0

    .line 357
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public aP(Z)V
    .locals 0

    .line 218
    return-void
.end method

.method public synthetic an(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->as(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ao(Landroid/content/Context;)Lcom/xiaopeng/lib/security/a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->at(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object p1

    return-object p1
.end method

.method public as(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 3
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

    sput-boolean v1, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->pn:Z

    .line 59
    const-string v1, "RandomKeySecurity"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->Vu:Landroid/content/SharedPreferences;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sContext:Landroid/content/Context;

    .line 61
    monitor-exit v0

    .line 62
    return-object p0

    .line 61
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public at(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/xiaopeng/lib/security/b;->ap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->as(Landroid/content/Context;)Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u4ec5\u7cfb\u7edf\u8fdb\u7a0b\u5141\u8bb8\u8c03\u7528\u4e2a\u6027\u5316\u64cd\u4f5c!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dE(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    const-string v0, "RandomKeySecurity"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    nop

    .line 152
    new-instance v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;-><init>(Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;)V

    invoke-virtual {v0}, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 157
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sget v2, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    if-eq v0, v2, :cond_0

    .line 158
    const-string v0, "RandomKeySecurity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong individual data with length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    return v1

    .line 162
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    sget v2, Lcom/xiaopeng/lib/security/xmartv1/a;->VT:I

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 163
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 164
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/xiaopeng/lib/security/xmartv1/a;->VU:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity$SecurityKeyBean;->key:Ljava/lang/String;

    .line 166
    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 165
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "RandomKeySecurity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote security key #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    goto :goto_0

    .line 170
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->o(Ljava/util/Map;)V

    .line 172
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->oC()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    const/4 v1, 0x1

    .line 177
    goto :goto_1

    .line 175
    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    :goto_1
    return v1
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 259
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->pn:Z

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->F([B)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->ov()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 267
    :catch_0
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    return-object v0

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 0

    .line 196
    return-void
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 281
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->pn:Z

    if-eqz v0, :cond_3

    .line 285
    const-string v0, ""

    .line 286
    iget-object v1, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->Vu:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    return-object v0

    .line 290
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/lib/security/b;->dF(Ljava/lang/String;)[B

    move-result-object p1

    .line 291
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->ou()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->c([BLjava/lang/String;)[B

    move-result-object p1

    .line 292
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    nop

    .line 302
    move-object v0, v1

    goto :goto_0

    .line 298
    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    :goto_0
    return-object v0

    .line 293
    :cond_2
    :goto_1
    return-object v0

    .line 282
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public of()Lcom/xiaopeng/lib/http/Security$EncryptionType;
    .locals 1

    .line 47
    sget-object v0, Lcom/xiaopeng/lib/http/Security$EncryptionType;->UR:Lcom/xiaopeng/lib/http/Security$EncryptionType;

    return-object v0
.end method

.method public og()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->pn:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->oA()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public oh()V
    .locals 2

    .line 204
    :try_start_0
    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-static {}, Lcom/xiaopeng/lib/security/b;->oj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/http/a;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 208
    :goto_0
    return-void
.end method

.method public oi()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/lib/security/b;->ap(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/security/xmartv1/KeyStoreHelper;->oB()Z

    .line 122
    const-string v0, "/mnt/vendor/private/sec/si_flag.dat"

    invoke-static {v0}, Lcom/xiaopeng/lib/http/a;->bn(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->Vu:Landroid/content/SharedPreferences;

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
    const-string v1, "RandomKeySecurity"

    const-string v2, "\u6e05\u9664\u4e2a\u6027\u5316\u5931\u8d25!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u4ec5\u7cfb\u7edf\u8fdb\u7a0b\u5141\u8bb8\u8c03\u7528\u4e2a\u6027\u5316\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 498
    sget-boolean v0, Lcom/xiaopeng/lib/security/xmartv1/RandomKeySecurity;->pn:Z

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x0

    .line 504
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->e([BI)Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Lcom/xiaopeng/lib/security/xmartv1/EncodingItem;->ow()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_0

    .line 506
    :catch_0
    move-exception p1

    .line 507
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    move-object p1, v0

    :goto_0
    return-object p1

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RandomKeySecurity:\u672a\u521d\u59cb\u5316!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
