.class Lorg/chromium/net/impl/CronetBidirectionalStream$3;
.super Ljava/lang/Object;
.source "CronetBidirectionalStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetBidirectionalStream;->onResponseTrailersReceived([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/x$a;

.field final synthetic b:Lorg/chromium/net/impl/CronetBidirectionalStream;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/x$a;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iput-object p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->a:Lorg/chromium/net/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 600
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 601
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    monitor-exit v0

    return-void

    .line 604
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->e(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$a;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    .line 607
    invoke-static {v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->d(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/p;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->a:Lorg/chromium/net/x$a;

    .line 606
    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/impl/VersionSafeCallbacks$a;->a(Lorg/chromium/net/b;Lorg/chromium/net/x;Lorg/chromium/net/x$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 609
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream$3;->b:Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 604
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
