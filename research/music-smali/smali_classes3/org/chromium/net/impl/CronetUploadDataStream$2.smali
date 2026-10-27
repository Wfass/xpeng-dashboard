.class Lorg/chromium/net/impl/CronetUploadDataStream$2;
.super Ljava/lang/Object;
.source "CronetUploadDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/impl/CronetUploadDataStream;->rewind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/chromium/net/impl/CronetUploadDataStream;


# direct methods
.method constructor <init>(Lorg/chromium/net/impl/CronetUploadDataStream;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 140
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->a(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->b(Lorg/chromium/net/impl/CronetUploadDataStream;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 142
    monitor-exit v0

    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetUploadDataStream;->a(Lorg/chromium/net/impl/CronetUploadDataStream;I)V

    .line 145
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetUploadDataStream;->b(Lorg/chromium/net/impl/CronetUploadDataStream;I)I

    .line 146
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->d(Lorg/chromium/net/impl/CronetUploadDataStream;)V

    .line 149
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->e(Lorg/chromium/net/impl/CronetUploadDataStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$f;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$f;->rewind(Lorg/chromium/net/v;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream$2;->a:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-static {v1, v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->a(Lorg/chromium/net/impl/CronetUploadDataStream;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 146
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
