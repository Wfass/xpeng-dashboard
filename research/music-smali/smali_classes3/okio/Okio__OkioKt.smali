.class final synthetic Lokio/Okio__OkioKt;
.super Ljava/lang/Object;
.source "Okio.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final blackhole()Lokio/Sink;
    .locals 1

    .line 41
    new-instance v0, Lokio/BlackholeSink;

    invoke-direct {v0}, Lokio/BlackholeSink;-><init>()V

    check-cast v0, Lokio/Sink;

    return-object v0
.end method

.method public static final buffer(Lokio/Sink;)Lokio/BufferedSink;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lokio/RealBufferedSink;

    invoke-direct {v0, p0}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public static final buffer(Lokio/Source;)Lokio/BufferedSource;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    check-cast v0, Lokio/BufferedSource;

    return-object v0
.end method

.method public static final use(Ljava/io/Closeable;Lcas;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcas<",
            "-TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-interface {p1, p0}, Lcas;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    if-nez p1, :cond_1

    goto :goto_2

    .line 65
    :cond_1
    invoke-static {p1, p0}, Lkotlin/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    move-object p0, p1

    :goto_2
    if-nez p0, :cond_2

    .line 69
    invoke-static {v0}, Lccf;->a(Ljava/lang/Object;)V

    return-object v0

    .line 68
    :cond_2
    throw p0
.end method
