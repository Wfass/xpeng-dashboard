.class final Lorg/chromium/net/impl/CronetBidirectionalStream$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/impl/CronetBidirectionalStream;

.field private b:Ljava/nio/ByteBuffer;

.field private final c:Z


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;Z)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->b:Ljava/nio/ByteBuffer;

    .line 208
    iput-boolean p3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 215
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 216
    iput-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->b:Ljava/nio/ByteBuffer;

    .line 218
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    monitor-exit v1

    return-void

    .line 222
    :cond_0
    iget-boolean v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I

    .line 224
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->g(Lorg/chromium/net/impl/CronetBidirectionalStream;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    move v3, v2

    .line 226
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :try_start_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->e(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$a;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-object v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    .line 228
    invoke-static {v4}, Lorg/chromium/net/impl/CronetBidirectionalStream;->d(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/p;

    move-result-object v4

    iget-boolean v5, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->c:Z

    .line 227
    invoke-virtual {v1, v2, v4, v0, v5}, Lorg/chromium/net/impl/VersionSafeCallbacks$a;->b(Lorg/chromium/net/b;Lorg/chromium/net/x;Ljava/nio/ByteBuffer;Z)V

    if-eqz v3, :cond_2

    .line 230
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->f(Lorg/chromium/net/impl/CronetBidirectionalStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 226
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

    .line 233
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$b;->a:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method
