.class final Lorg/chromium/net/impl/CronetUrlRequest$a;
.super Ljava/lang/Object;
.source "CronetUrlRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lorg/chromium/net/impl/CronetUrlRequest;


# direct methods
.method private constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/CronetUrlRequest$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest$a;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->d()V

    .line 119
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->a:Ljava/nio/ByteBuffer;

    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetUrlRequest;->b(Lorg/chromium/net/impl/CronetUrlRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    monitor-exit v1

    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z

    .line 128
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUrlRequest;->d(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$g;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    iget-object v3, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v3}, Lorg/chromium/net/impl/CronetUrlRequest;->c(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/p;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$g;->onReadCompleted(Lorg/chromium/net/w;Lorg/chromium/net/x;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 128
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

    .line 131
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest$a;->b:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
