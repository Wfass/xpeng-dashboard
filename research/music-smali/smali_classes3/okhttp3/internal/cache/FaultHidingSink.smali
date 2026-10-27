.class public Lokhttp3/internal/cache/FaultHidingSink;
.super Lokio/ForwardingSink;
.source "FaultHidingSink.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private hasErrors:Z

.field private final onException:Lcas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcas<",
            "Ljava/io/IOException;",
            "Lkotlin/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/Sink;Lcas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lcas<",
            "-",
            "Ljava/io/IOException;",
            "Lkotlin/w;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onException"

    invoke-static {p2, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 26
    iput-object p2, p0, Lokhttp3/internal/cache/FaultHidingSink;->onException:Lcas;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 62
    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 63
    iget-object v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->onException:Lcas;

    invoke-interface {v1, v0}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    :try_start_0
    invoke-super {p0}, Lokio/ForwardingSink;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 51
    iget-object v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->onException:Lcas;

    invoke-interface {v1, v0}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final getOnException()Lcas;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcas<",
            "Ljava/io/IOException;",
            "Lkotlin/w;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->onException:Lcas;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->skip(J)V

    return-void

    .line 36
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    .line 39
    iget-object p2, p0, Lokhttp3/internal/cache/FaultHidingSink;->onException:Lcas;

    invoke-interface {p2, p1}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
