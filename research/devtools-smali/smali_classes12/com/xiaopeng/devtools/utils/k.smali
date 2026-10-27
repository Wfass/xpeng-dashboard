.class public final Lcom/xiaopeng/devtools/utils/k;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 8
    if-eqz p0, :cond_0

    .line 10
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    goto :goto_0

    .line 11
    :catch_1
    move-exception p0

    .line 12
    throw p0

    .line 17
    :cond_0
    :goto_0
    return-void
.end method
