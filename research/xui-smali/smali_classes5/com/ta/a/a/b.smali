.class public Lcom/ta/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string p0, ""

    return-object p0

    .line 18
    :cond_0
    const-string v0, ""

    .line 20
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ta/a/c/e;->b([B)[B

    move-result-object p0

    .line 21
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/ta/utdid2/a/a/a;->encode([BI)[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    nop

    .line 25
    move-object v0, v1

    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-object v0
.end method
