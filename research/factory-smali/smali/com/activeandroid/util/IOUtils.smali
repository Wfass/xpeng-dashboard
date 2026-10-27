.class public Lcom/activeandroid/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 61
    if-nez p0, :cond_0

    .line 62
    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t close cursor."

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 40
    if-nez p0, :cond_0

    .line 41
    return-void

    .line 45
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Couldn\'t close closeable."

    invoke-static {v1, v0}, Lcom/activeandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
