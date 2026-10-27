.class public final Lokio/Pipe$source$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 0

    iput-object p1, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 145
    iget-object v0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    iget-object v1, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    .line 253
    monitor-enter v0

    const/4 v2, 0x1

    .line 146
    :try_start_0
    invoke-virtual {v1, v2}, Lokio/Pipe;->setSourceClosed$okio(Z)V

    .line 147
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 148
    sget-object v1, Lkotlin/w;->a:Lkotlin/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v0

    iget-object v1, p0, Lokio/Pipe$source$1;->this$0:Lokio/Pipe;

    .line 251
    monitor-enter v0

    .line 129
    :try_start_0
    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    :goto_0
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 133
    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    .line 134
    :cond_0
    :try_start_1
    iget-object v2, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {v1}, Lokio/Pipe;->getCanceled$okio()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_2
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 139
    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit v0

    return-wide p1

    .line 130
    :cond_3
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "closed"

    .line 129
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v0

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 151
    iget-object v0, p0, Lokio/Pipe$source$1;->timeout:Lokio/Timeout;

    return-object v0
.end method
