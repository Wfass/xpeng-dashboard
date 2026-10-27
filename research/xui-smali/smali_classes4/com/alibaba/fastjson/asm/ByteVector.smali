.class public Lcom/alibaba/fastjson/asm/ByteVector;
.super Ljava/lang/Object;
.source "ByteVector.java"


# instance fields
.field public data:[B

.field public length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 64
    return-void
.end method

.method private enlarge(I)V
    .locals 6
    .param p1, "size"    # I

    .line 226
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v0, v0

    const/4 v1, 0x2

    mul-int/2addr v1, v0

    .line 227
    .local v1, "length1":I
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p1

    .line 228
    .local v0, "length2":I
    if-le v1, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    new-array v2, v2, [B

    .line 229
    .local v2, "newData":[B
    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v4, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 231
    return-void
.end method


# virtual methods
.method put11(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 92
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 93
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 94
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 97
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 98
    .end local v0    # "length":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 99
    .end local v2    # "length":I
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 100
    return-object p0
.end method

.method public put12(II)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I
    .param p2, "s"    # I

    .line 131
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 132
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 133
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 136
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 137
    .end local v0    # "length":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "length":I
    ushr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 138
    .end local v2    # "length":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "length":I
    int-to-byte v3, p2

    aput-byte v3, v1, v0

    .line 139
    .end local v0    # "length":I
    iput v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 140
    return-object p0
.end method

.method public putByte(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4
    .param p1, "b"    # I

    .line 74
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 75
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 76
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    add-int/lit8 v2, v0, 0x1

    .local v2, "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v0

    .line 79
    .end local v0    # "length":I
    iput v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 80
    return-object p0
.end method

.method public putByteArray([BII)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 209
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 210
    invoke-direct {p0, p3}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 216
    return-object p0
.end method

.method public putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4
    .param p1, "i"    # I

    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 152
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 153
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 156
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 157
    .end local v0    # "length":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "length":I
    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 158
    .end local v2    # "length":I
    add-int/lit8 v2, v0, 0x1

    .restart local v2    # "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 159
    .end local v0    # "length":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 160
    .end local v2    # "length":I
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 161
    return-object p0
.end method

.method public putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 4
    .param p1, "s"    # I

    .line 111
    iget v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 112
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 113
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 116
    .local v1, "data":[B
    add-int/lit8 v2, v0, 0x1

    .local v2, "length":I
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 117
    .end local v0    # "length":I
    add-int/lit8 v0, v2, 0x1

    .restart local v0    # "length":I
    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 118
    .end local v2    # "length":I
    iput v0, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 119
    return-object p0
.end method

.method public putUTF8(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/ByteVector;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 173
    .local v0, "charLength":I
    iget v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 174
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 175
    const/4 v2, 0x2

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/alibaba/fastjson/asm/ByteVector;->enlarge(I)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/asm/ByteVector;->data:[B

    .line 184
    .local v2, "data":[B
    add-int/lit8 v3, v1, 0x1

    .local v3, "len":I
    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 185
    .end local v1    # "len":I
    add-int/lit8 v1, v3, 0x1

    .restart local v1    # "len":I
    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 186
    .end local v3    # "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 187
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 188
    .local v4, "c":C
    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    const/16 v5, 0x7f

    if-le v4, v5, :cond_2

    :cond_1
    const/16 v5, 0x4e00

    if-lt v4, v5, :cond_3

    const v5, 0x9fff

    if-gt v4, v5, :cond_3

    .line 189
    :cond_2
    add-int/lit8 v5, v1, 0x1

    .local v5, "len":I
    int-to-byte v6, v4

    aput-byte v6, v2, v1

    .line 186
    .end local v1    # "len":I
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 191
    .end local v5    # "len":I
    .restart local v1    # "len":I
    .restart local v4    # "c":C
    :cond_3
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 194
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    .line 195
    return-object p0
.end method
