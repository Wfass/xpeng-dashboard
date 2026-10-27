.class Lzipkin2/internal/Proto3Fields$Field;
.super Ljava/lang/Object;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Field"
.end annotation


# instance fields
.field final fieldNumber:I

.field final key:I

.field final wireType:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    .line 47
    invoke-direct {p0, v0, v1, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(III)V

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lzipkin2/internal/Proto3Fields$Field;->fieldNumber:I

    .line 52
    iput p2, p0, Lzipkin2/internal/Proto3Fields$Field;->wireType:I

    .line 53
    iput p3, p0, Lzipkin2/internal/Proto3Fields$Field;->key:I

    return-void
.end method

.method static fieldNumber(II)I
    .locals 2

    ushr-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_0

    return p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed: fieldNumber was zero at byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static skipValue(Lzipkin2/internal/Buffer;I)Z
    .locals 4

    .line 72
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 85
    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->skip(I)Z

    move-result p0

    return p0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed: invalid wireType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " at byte "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->skip(I)Z

    move-result p0

    return p0

    :cond_2
    const/16 p1, 0x8

    .line 80
    invoke-virtual {p0, p1}, Lzipkin2/internal/Buffer;->skip(I)Z

    move-result p0

    return p0

    :cond_3
    const/4 p1, 0x0

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 76
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->readByte()B

    move-result v3

    if-ltz v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return p1
.end method

.method static wireType(II)I
    .locals 3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed: invalid wireType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " at byte "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method
