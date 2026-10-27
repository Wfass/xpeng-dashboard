.class public final Lokio/Throttler$source$1;
.super Lokio/ForwardingSource;
.source "Throttler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Throttler;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $source:Lokio/Source;

.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Throttler;Lokio/Source;)V
    .locals 0

    iput-object p1, p0, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    iput-object p2, p0, Lokio/Throttler$source$1;->$source:Lokio/Source;

    .line 136
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v0, p0, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    invoke-virtual {v0, p2, p3}, Lokio/Throttler;->take$okio(J)J

    move-result-wide p2

    .line 140
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 142
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 143
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "interrupted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
