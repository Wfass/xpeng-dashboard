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


# static fields
.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_VARINT:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ensureLength(Lzipkin2/internal/Buffer;I)V
    .locals 3
    .param p0, "buffer"    # Lzipkin2/internal/Buffer;
    .param p1, "length"    # I

    .line 315
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 319
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Truncated: length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > bytes remaining "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static sizeOfLengthDelimitedField(I)I
    .locals 2
    .param p0, "sizeInBytes"    # I

    .line 311
    invoke-static {p0}, Lzipkin2/internal/Buffer;->varintSizeInBytes(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v1, v0

    add-int/2addr v1, p0

    return v1
.end method
