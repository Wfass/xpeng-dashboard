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
.field static final EMPTY_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lzipkin2/internal/Proto3SpanWriter;->EMPTY_ARRAY:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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
    .param p1, "span"    # Lzipkin2/Span;

    .line 28
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->sizeInBytes(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
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
    .param p1, "value"    # Lzipkin2/Span;
    .param p2, "b"    # Lzipkin2/internal/Buffer;

    .line 32
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v0, p2, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method write(Lzipkin2/Span;)[B
    .locals 3
    .param p1, "onlySpan"    # Lzipkin2/Span;

    .line 59
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v0, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->sizeOfValue(Lzipkin2/Span;)I

    move-result v0

    .line 60
    .local v0, "sizeOfValue":I
    new-instance v1, Lzipkin2/internal/Buffer;

    invoke-static {v0}, Lzipkin2/internal/Proto3Fields;->sizeOfLengthDelimitedField(I)I

    move-result v2

    invoke-direct {v1, v2}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 61
    .local v1, "result":Lzipkin2/internal/Buffer;
    invoke-virtual {p0, p1, v0, v1}, Lzipkin2/internal/Proto3SpanWriter;->writeSpan(Lzipkin2/Span;ILzipkin2/internal/Buffer;)V

    .line 62
    invoke-virtual {v1}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method writeList(Ljava/util/List;[BI)I
    .locals 5
    .param p2, "out"    # [B
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;[BI)I"
        }
    .end annotation

    .line 73
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 74
    .local v0, "lengthOfSpans":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    new-instance v2, Lzipkin2/internal/Buffer;

    invoke-direct {v2, p2, p3}, Lzipkin2/internal/Buffer;-><init>([BI)V

    .line 77
    .local v2, "result":Lzipkin2/internal/Buffer;
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 78
    sget-object v3, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/Span;

    invoke-virtual {v3, v2, v4}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->write(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_1
    iget v1, v2, Lzipkin2/internal/Buffer;->pos:I

    sub-int/2addr v1, p3

    return v1
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
    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 42
    .local v0, "lengthOfSpans":I
    if-nez v0, :cond_0

    sget-object v1, Lzipkin2/internal/Proto3SpanWriter;->EMPTY_ARRAY:[B

    return-object v1

    .line 43
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzipkin2/Span;

    invoke-virtual {p0, v1}, Lzipkin2/internal/Proto3SpanWriter;->write(Lzipkin2/Span;)[B

    move-result-object v1

    return-object v1

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    .local v2, "sizeInBytes":I
    new-array v3, v0, [I

    .line 47
    .local v3, "sizeOfValues":[I
    move v4, v2

    move v2, v1

    .local v2, "i":I
    .local v4, "sizeInBytes":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 48
    sget-object v5, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/Span;

    invoke-virtual {v5, v6}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->sizeOfValue(Lzipkin2/Span;)I

    move-result v5

    aput v5, v3, v2

    .line 49
    .local v5, "sizeOfValue":I
    invoke-static {v5}, Lzipkin2/internal/Proto3Fields;->sizeOfLengthDelimitedField(I)I

    move-result v6

    add-int/2addr v4, v6

    .line 47
    .end local v5    # "sizeOfValue":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lzipkin2/internal/Buffer;

    invoke-direct {v2, v4}, Lzipkin2/internal/Buffer;-><init>(I)V

    .line 52
    .local v2, "result":Lzipkin2/internal/Buffer;
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Span;

    aget v6, v3, v1

    invoke-virtual {p0, v5, v6, v2}, Lzipkin2/internal/Proto3SpanWriter;->writeSpan(Lzipkin2/Span;ILzipkin2/internal/Buffer;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v2}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method writeSpan(Lzipkin2/Span;ILzipkin2/internal/Buffer;)V
    .locals 1
    .param p1, "span"    # Lzipkin2/Span;
    .param p2, "sizeOfSpan"    # I
    .param p3, "result"    # Lzipkin2/internal/Buffer;

    .line 67
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    iget v0, v0, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->key:I

    invoke-virtual {p3, v0}, Lzipkin2/internal/Buffer;->writeByte(I)Lzipkin2/internal/Buffer;

    .line 68
    invoke-virtual {p3, p2}, Lzipkin2/internal/Buffer;->writeVarint(I)V

    .line 69
    sget-object v0, Lzipkin2/internal/Proto3ZipkinFields;->SPAN:Lzipkin2/internal/Proto3ZipkinFields$SpanField;

    invoke-virtual {v0, p3, p1}, Lzipkin2/internal/Proto3ZipkinFields$SpanField;->writeValue(Lzipkin2/internal/Buffer;Lzipkin2/Span;)V

    .line 70
    return-void
.end method
