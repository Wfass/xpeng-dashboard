.class public final Lcom/xiaopeng/commonfunc/utils/IoUtils;
.super Ljava/lang/Object;
.source "IoUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

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
    move-exception v0

    goto :goto_0

    .line 11
    :catch_1
    move-exception v0

    .line 12
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 17
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method
