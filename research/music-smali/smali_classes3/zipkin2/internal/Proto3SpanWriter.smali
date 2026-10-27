.class final Lzipkin2/internal/Proto3SpanWriter;
.super Ljava/lang/Object;
.source "Proto3SpanWriter.java"

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


# static fields
.field static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [B

    sput-object v0, Lzipkin2/internal/Proto3SpanWriter;->a:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;[BI)I"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    new-instance v2, Lzipkin2/internal/Buffer;

    invoke-direct {v2, p2, p3}, Lzipkin2/internal/Buffer;-><init>([BI)V

    :goto_0
    if-ge v1, v0, :cond_1

    .line 78
    sget-object p2, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;

    invoke-virtual {p2, v2, v3}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget p1, v2, Lzipkin2/internal/Buffer;->a:I

    sub-int/2addr p1, p3

    return p1
.end method

.method a(Lzipkin2/Span;ILzipkin2/internal/Buffer;)V
    .locals 1

    .line 67
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    iget v0, v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->d:I

    invoke-virtual {p3, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 68
    invoke-virtual {p3, p2}, Lzipkin2/internal/Buffer;->a(I)V

    .line 69
    sget-object p2, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {p2, p3, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/internal/Buffer;Lzipkin2/Span;)V

    return-void
.end method

.method a(Lzipkin2/Span;)[B
    .locals 3

    .line 59
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/Span;)I

    move-result v0

    .line 60
    new-instance v1, Lzipkin2/internal/Buffer;

    invoke-static {v0}, Lzipkin2/internal/Proto3Fields;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Lzipkin2/internal/Proto3SpanWriter;->a(Lzipkin2/Span;ILzipkin2/internal/Buffer;)V

    .line 62
    invoke-virtual {v1}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sizeInBytes(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3SpanWriter;->sizeInBytes(Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public sizeInBytes(Lzipkin2/Span;)I
    .locals 1

    .line 28
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lzipkin2/internal/Buffer;)V
    .locals 0

    .line 23
    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3SpanWriter;->write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V

    return-void
.end method

.method public write(Lzipkin2/Span;Lzipkin2/internal/Buffer;)V
    .locals 1

    .line 32
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v0, p2, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->b(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    return-void
.end method

.method public writeList(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)[B"
        }
    .end annotation

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object p1, Lzipkin2/internal/Proto3SpanWriter;->a:[B

    return-object p1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 43
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzipkin2/Span;

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3SpanWriter;->a(Lzipkin2/Span;)[B

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    new-array v1, v0, [I

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 48
    sget-object v5, Lzipkin2/internal/Proto3ZipkinFields;->b:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/Span;

    invoke-virtual {v5, v6}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->a(Lzipkin2/Span;)I

    move-result v5

    aput v5, v1, v3

    .line 49
    invoke-static {v5}, Lzipkin2/internal/Proto3Fields;->a(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    :cond_2
    new-instance v3, Lzipkin2/internal/Buffer;

    invoke-direct {v3, v4}, Lzipkin2/internal/Buffer;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_3

    .line 53
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/Span;

    aget v5, v1, v2

    invoke-virtual {p0, v4, v5, v3}, Lzipkin2/internal/Proto3SpanWriter;->a(Lzipkin2/Span;ILzipkin2/internal/Buffer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v3}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
