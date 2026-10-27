.class final Lorg/chromium/net/impl/CronetBidirectionalStream$a;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetBidirectionalStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field b:Z

.field final synthetic c:Lorg/chromium/net/impl/CronetBidirectionalStream;


# virtual methods
.method public run()V
    .locals 6

    .line 175
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 176
    iput-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->a:Ljava/nio/ByteBuffer;

    .line 178
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    monitor-exit v1

    return-void

    .line 182
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I

    .line 184
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->c(Lorg/chromium/net/impl/CronetBidirectionalStream;)I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    move v3, v2

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I

    .line 188
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->e(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$a;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-object v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    .line 190
    invoke-static {v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->d(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/p;

    move-result-object v4

    iget-boolean v5, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->b:Z

    .line 189
    invoke-virtual {v1, v2, v4, v0, v5}, Lorg/chromium/net/impl/VersionSafeCallbacks$a;->a(Lorg/chromium/net/b;Lorg/chromium/net/x;Ljava/nio/ByteBuffer;Z)V

    if-eqz v3, :cond_3

    .line 192
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->f(Lorg/chromium/net/impl/CronetBidirectionalStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 188
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->c:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method
