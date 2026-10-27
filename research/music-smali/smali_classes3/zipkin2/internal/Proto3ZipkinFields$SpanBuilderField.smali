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

    .line 108
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    return-void
.end method


# virtual methods
.method abstract a(Lzipkin2/internal/Buffer;Lzipkin2/Span$Builder;)Z
.end method

.method final b(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/Buffer;",
            "I)TT;"
        }
    .end annotation

    .line 112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
