.class public final Lzipkin2/internal/V1JsonSpanWriter;
.super Ljava/lang/Object;
.source "V1JsonSpanWriter.java"

# interfaces
.implements Lzipkin2/internal/Buffer$Writer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lzipkin2/internal/Buffer$Writer<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lzipkin2/v1/V2SpanConverter;

.field final b:Lzipkin2/internal/V1SpanWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lzipkin2/v1/V2SpanConverter;->create()Lzipkin2/v1/V2SpanConverter;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/internal/V1JsonSpanWriter;->a:Lzipkin2/v1/V2SpanConverter;

    .line 24
    new-instance v0, Lzipkin2/internal/V1SpanWriter;

    invoke-direct {v0}, Lzipkin2/internal/V1SpanWriter;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/V1JsonSpanWriter;->b:Lzipkin2/internal/V1SpanWriter;

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/V1JsonSpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 1

    .line 28
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanWriter;->a:Lzipkin2/v1/V2SpanConverter;

    invoke-virtual {v0, p1}, Lzipkin2/v1/V2SpanConverter;->convert(Lzipkin2/Span;)Lzipkin2/v1/V1Span;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanWriter;->b:Lzipkin2/internal/V1SpanWriter;

    invoke-virtual {v0, p1}, Lzipkin2/internal/V1SpanWriter;->sizeInBytes(Lzipkin2/v1/V1Span;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    .locals 0

    .line 22
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/V1JsonSpanWriter;->write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V

    return-void
.end method

.method public write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanWriter;->a:Lzipkin2/v1/V2SpanConverter;

    invoke-virtual {v0, p1}, Lzipkin2/v1/V2SpanConverter;->convert(Lzipkin2/Span;)Lzipkin2/v1/V1Span;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lzipkin2/internal/V1JsonSpanWriter;->b:Lzipkin2/internal/V1SpanWriter;

    invoke-virtual {v0, p1, p2}, Lzipkin2/internal/V1SpanWriter;->write(Lzipkin2/v1/V1Span;Lzipkin2/internal/Buffer;)V

    return-void
.end method
