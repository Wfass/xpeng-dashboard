.class final Lzipkin2/internal/Proto3Fields;
.super Ljava/lang/Object;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/Proto3Fields$Fixed32Field;,
        Lzipkin2/internal/Proto3Fields$BooleanField;,
        Lzipkin2/internal/Proto3Fields$VarintField;,
        Lzipkin2/internal/Proto3Fields$Fixed64Field;,
        Lzipkin2/internal/Proto3Fields$Utf8Field;,
        Lzipkin2/internal/Proto3Fields$HexField;,
        Lzipkin2/internal/Proto3Fields$BytesField;,
        Lzipkin2/internal/Proto3Fields$LengthDelimitedField;,
        Lzipkin2/internal/Proto3Fields$Field;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    .line 311
    invoke-static {p0}, Lzipkin2/internal/Buffer;->varintSizeInBytes(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lzipkin2/internal/Buffer;I)V
    .locals 3

    .line 315
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->e()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated: length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > bytes remaining "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->e()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
