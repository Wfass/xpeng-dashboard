.class Lorg/chromium/net/impl/CronetUploadDataStream$1;
.super Ljava/lang/Object;
.source "CronetUploadDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/CronetUploadDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lorg/chromium/net/impl/CronetUploadDataStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->a:Z

    return-void
.end method

.method constructor <init>(Lorg/chromium/net/impl/CronetUploadDataStream;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 52
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->a(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->b(Lorg/chromium/net/impl/CronetUploadDataStream;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 54
    monitor-exit v0

    return-void

    .line 56
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetUploadDataStream;->a(Lorg/chromium/net/impl/CronetUploadDataStream;I)V

    .line 57
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->c(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 60
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetUploadDataStream;->b(Lorg/chromium/net/impl/CronetUploadDataStream;I)I

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->d(Lorg/chromium/net/impl/CronetUploadDataStream;)V

    .line 64
    sget-boolean v0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->c(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->e(Lorg/chromium/net/impl/CronetUploadDataStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$f;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v2}, Lorg/chromium/net/impl/CronetUploadDataStream;->c(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$f;->read(Lorg/chromium/net/v;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 67
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$1;->b:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->a(Lorg/chromium/net/impl/CronetUploadDataStream;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 58
    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected readData call. Buffer is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
