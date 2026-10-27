.class public final Lokio/-GzipSinkExtensions;
.super Ljava/lang/Object;
.source "GzipSink.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final gzip(Lokio/Sink;)Lokio/GzipSink;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lokio/GzipSink;

    invoke-direct {v0, p0}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    return-object v0
.end method
