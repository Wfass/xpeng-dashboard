.class public Lcom/alibaba/fastjson/asm/Label;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final FORWARD_REFERENCE_HANDLE_MASK:I = 0xfffffff

.field static final FORWARD_REFERENCE_TYPE_MASK:I = -0x10000000

.field static final FORWARD_REFERENCE_TYPE_SHORT:I = 0x10000000

.field static final FORWARD_REFERENCE_TYPE_WIDE:I = 0x20000000


# instance fields
.field inputStackTop:I

.field next:Lcom/alibaba/fastjson/asm/Label;

.field outputStackMax:I

.field position:I

.field private referenceCount:I

.field private srcAndRefPositions:[I

.field status:I

.field successor:Lcom/alibaba/fastjson/asm/Label;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    return-void
.end method

.method private addReference(III)V
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "referencePosition"    # I
    .param p3, "referenceType"    # I

    .line 196
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 197
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 199
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 200
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 201
    .local v0, "a":[I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iput-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    .line 204
    .end local v0    # "a":[I
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    aput p1, v0, v1

    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    or-int v2, p2, p3

    aput v2, v0, v1

    .line 206
    return-void
.end method


# virtual methods
.method put(Lcom/alibaba/fastjson/asm/MethodWriter;Lcom/alibaba/fastjson/asm/ByteVector;IZ)V
    .locals 3
    .param p1, "owner"    # Lcom/alibaba/fastjson/asm/MethodWriter;
    .param p2, "out"    # Lcom/alibaba/fastjson/asm/ByteVector;
    .param p3, "source"    # I
    .param p4, "wideOffset"    # Z

    .line 169
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 170
    const/4 v0, -0x1

    if-eqz p4, :cond_0

    .line 171
    iget v1, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/high16 v2, 0x20000000

    invoke-direct {p0, p3, v1, v2}, Lcom/alibaba/fastjson/asm/Label;->addReference(III)V

    .line 172
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0

    .line 174
    :cond_0
    iget v1, p2, Lcom/alibaba/fastjson/asm/ByteVector;->length:I

    const/high16 v2, 0x10000000

    invoke-direct {p0, p3, v1, v2}, Lcom/alibaba/fastjson/asm/Label;->addReference(III)V

    .line 175
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0

    .line 178
    :cond_1
    if-eqz p4, :cond_2

    .line 179
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putInt(I)Lcom/alibaba/fastjson/asm/ByteVector;

    goto :goto_0

    .line 181
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/asm/ByteVector;->putShort(I)Lcom/alibaba/fastjson/asm/ByteVector;

    .line 184
    :goto_0
    return-void
.end method

.method resolve(Lcom/alibaba/fastjson/asm/MethodWriter;I[B)V
    .locals 7
    .param p1, "owner"    # Lcom/alibaba/fastjson/asm/MethodWriter;
    .param p2, "position"    # I
    .param p3, "data"    # [B

    .line 224
    iget v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/asm/Label;->status:I

    .line 225
    iput p2, p0, Lcom/alibaba/fastjson/asm/Label;->position:I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/asm/Label;->referenceCount:I

    if-ge v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    aget v0, v1, v0

    .line 229
    .local v0, "source":I
    iget-object v1, p0, Lcom/alibaba/fastjson/asm/Label;->srcAndRefPositions:[I

    add-int/lit8 v3, v2, 0x1

    .local v3, "i":I
    aget v1, v1, v2

    .line 230
    .end local v2    # "i":I
    .local v1, "reference":I
    const v2, 0xfffffff

    and-int/2addr v2, v1

    .line 231
    .local v2, "handle":I
    sub-int v4, p2, v0

    .line 232
    .local v4, "offset":I
    const/high16 v5, -0x10000000

    and-int/2addr v5, v1

    const/high16 v6, 0x10000000

    if-ne v5, v6, :cond_0

    .line 233
    add-int/lit8 v5, v2, 0x1

    .local v5, "handle":I
    ushr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 234
    .end local v2    # "handle":I
    int-to-byte v2, v4

    aput-byte v2, p3, v5

    goto :goto_1

    .line 236
    .end local v5    # "handle":I
    .restart local v2    # "handle":I
    :cond_0
    add-int/lit8 v5, v2, 0x1

    .restart local v5    # "handle":I
    ushr-int/lit8 v6, v4, 0x18

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 237
    .end local v2    # "handle":I
    add-int/lit8 v2, v5, 0x1

    .restart local v2    # "handle":I
    ushr-int/lit8 v6, v4, 0x10

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 238
    .end local v5    # "handle":I
    add-int/lit8 v5, v2, 0x1

    .restart local v5    # "handle":I
    ushr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v2

    .line 239
    .end local v2    # "handle":I
    int-to-byte v2, v4

    aput-byte v2, p3, v5

    .line 241
    .end local v0    # "source":I
    .end local v1    # "reference":I
    .end local v4    # "offset":I
    .end local v5    # "handle":I
    :goto_1
    nop

    .line 226
    move v0, v3

    goto :goto_0

    .line 242
    .end local v3    # "i":I
    .local v0, "i":I
    :cond_1
    return-void
.end method
