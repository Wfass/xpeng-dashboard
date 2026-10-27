.class abstract Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;
.super Lzipkin2/internal/Proto3Fields$LengthDelimitedField;
.source "Proto3ZipkinFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3ZipkinFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SpanBuilderField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 108
    .local p0, "this":Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;, "Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField<TT;>;"
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    .line 109
    return-void
.end method


# virtual methods
.method abstract readLengthPrefixAndValue(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z
.end method

.method final readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 1
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "I)TT;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField;, "Lzipkin2/internal/Proto3ZipkinFields$SpanBuilderField<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
