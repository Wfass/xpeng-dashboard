.class public Lcom/ta/utdid2/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 29
    nop

    .line 32
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/ta/utdid2/a/a/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/ta/utdid2/a/a/c;->i()Ljava/lang/String;

    move-result-object p0

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/ta/utdid2/a/a/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lcom/ta/utdid2/a/a/c;->h()Ljava/lang/String;

    move-result-object p0

    .line 39
    :cond_1
    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .locals 7

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-int v1, v1

    .line 14
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 15
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 16
    invoke-static {v0}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v0

    .line 17
    invoke-static {v1}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v1

    .line 18
    invoke-static {v2}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v2

    .line 19
    invoke-static {v3}, Lcom/ta/utdid2/a/a/b;->getBytes(I)[B

    move-result-object v3

    .line 20
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 21
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-static {v1, v6, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    const/16 v0, 0x8

    invoke-static {v2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    const/16 v0, 0xc

    invoke-static {v3, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/ta/utdid2/a/a/a;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 2

    .line 46
    const-string v0, "ro.aliyun.clouduuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/e;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v0, "ro.sys.aliyun.clouduuid"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ta/utdid2/a/a/e;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Lcom/ta/utdid2/a/a/c;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    return-object v0
.end method

.method private static j()Ljava/lang/String;
    .locals 5

    .line 60
    const-string v0, ""

    .line 62
    :try_start_0
    const-string v1, "com.yunos.baseservice.clouduuid.CloudUUID"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 63
    const-string v2, "getCloudUUID"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 64
    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    nop

    .line 68
    move-object v0, v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 68
    :goto_0
    return-object v0
.end method
