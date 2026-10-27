.class Lzipkin2/internal/Proto3Fields$BytesField;
.super Lzipkin2/internal/Proto3Fields$LengthDelimitedField;
.source "Proto3Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Proto3Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BytesField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/internal/Proto3Fields$LengthDelimitedField<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "key"    # I

    .line 141
    invoke-direct {p0, p1}, Lzipkin2/internal/Proto3Fields$LengthDelimitedField;-><init>(I)V

    .line 142
    return-void
.end method


# virtual methods
.method bridge synthetic readValue(Lzipkin2/internal/Buffer;I)Ljava/lang/Object;
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$BytesField;->readValue(Lzipkin2/internal/Buffer;I)[B

    move-result-object p1

    return-object p1
.end method

.method readValue(Lzipkin2/internal/Buffer;I)[B
    .locals 4
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "length"    # I

    .line 153
    new-array v0, p2, [B

    .line 154
    .local v0, "result":[B
    invoke-virtual {p1}, Lzipkin2/internal/Buffer;->toByteArray()[B

    move-result-object v1

    iget v2, p1, Lzipkin2/internal/Buffer;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v1, p1, Lzipkin2/internal/Buffer;->pos:I

    add-int/2addr v1, p2

    iput v1, p1, Lzipkin2/internal/Buffer;->pos:I

    .line 156
    return-object v0
.end method

.method bridge synthetic sizeOfValue(Ljava/lang/Object;)I
    .locals 0

    .line 139
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lzipkin2/internal/Proto3Fields$BytesField;->sizeOfValue([B)I

    move-result p1

    return p1
.end method

.method sizeOfValue([B)I
    .locals 1
    .param p1, "bytes"    # [B

    .line 145
    array-length v0, p1

    return v0
.end method

.method bridge synthetic writeValue(Lzipkin2/internal/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Proto3Fields$BytesField;->writeValue(Lzipkin2/internal/Buffer;[B)V

    return-void
.end method

.method writeValue(Lzipkin2/internal/Buffer;[B)V
    .locals 0
    .param p1, "b"    # Lzipkin2/internal/Buffer;
    .param p2, "bytes"    # [B

    .line 149
    invoke-virtual {p1, p2}, Lzipkin2/internal/Buffer;->write([B)Lzipkin2/internal/Buffer;

    .line 150
    return-void
.end method
