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
    .param p1, "key"    # I

    .line 47
    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    invoke-direct {p0, v0, v1, p1}, Lzipkin2/internal/Proto3Fields$Field;-><init>(III)V

    .line 48
    return-void
.end method

.method constructor <init>(III)V
    .locals 0
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .param p3, "key"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lzipkin2/internal/Proto3Fields$Field;->fieldNumber:I

    .line 52
    iput p2, p0, Lzipkin2/internal/Proto3Fields$Field;->wireType:I

    .line 53
    iput p3, p0, Lzipkin2/internal/Proto3Fields$Field;->key:I

    .line 54
    return-void
.end method

.method static fieldNumber(II)I
    .locals 4
    .param p0, "key"    # I
    .param p1, "byteL"    # I

    .line 57
    ushr-int/lit8 v0, p0, 0x3

    .line 58
    .local v0, "fieldNumber":I
    if-eqz v0, :cond_0

    return v0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: fieldNumber was zero at byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static skipValue(Lzipkin2/internal/Buffer;I)Z
    .locals 4
    .param p0, "buffer"    # Lzipkin2/internal/Buffer;
    .param p1, "wireType"    # I

    .line 72
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->remaining()I

    move-result v0

    .line 73
    .local v0, "remaining":I
    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: invalid wireType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lzipkin2/internal/Buffer;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->readVarint32()I

    move-result v1

    .line 83
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lzipkin2/internal/Buffer;->skip(I)Z

    move-result v2

    return v2

    .line 80
    .end local v1    # "length":I
    :pswitch_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lzipkin2/internal/Buffer;->skip(I)Z

    move-result v1

    return v1

    .line 75
    :pswitch_2
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lzipkin2/internal/Buffer;->readByte()B

    move-result v3

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    return v1

    .line 75
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_1
    return v1

    .line 85
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lzipkin2/internal/Buffer;->skip(I)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static wireType(II)I
    .locals 4
    .param p0, "key"    # I
    .param p1, "byteL"    # I

    .line 63
    and-int/lit8 v0, p0, 0x7

    .line 64
    .local v0, "wireType":I
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: invalid wireType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at byte "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    :goto_0
    return v0
.end method
