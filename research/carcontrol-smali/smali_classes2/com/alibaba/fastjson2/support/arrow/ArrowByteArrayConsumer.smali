.class public Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;
.super Ljava/lang/Object;
.source "ArrowByteArrayConsumer.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;


# static fields
.field static final CHUNK_SIZE:I = 0xf4240


# instance fields
.field allocator:Lorg/apache/arrow/memory/BufferAllocator;

.field blockIndex:I

.field blockRowIndex:I

.field blockSize:I

.field final committer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "[",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field root:Lorg/apache/arrow/vector/VectorSchemaRoot;

.field final rootConsumer:Ljava/util/function/ObjIntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ObjIntConsumer<",
            "Lorg/apache/arrow/vector/VectorSchemaRoot;",
            ">;"
        }
    .end annotation
.end field

.field final rowCount:I

.field final schema:Lorg/apache/arrow/vector/types/pojo/Schema;

.field valueCapacities:[I

.field final varcharValueSize:I


# direct methods
.method public constructor <init>(Lorg/apache/arrow/vector/types/pojo/Schema;ILjava/util/function/ObjIntConsumer;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/arrow/vector/types/pojo/Schema;",
            "I",
            "Ljava/util/function/ObjIntConsumer<",
            "Lorg/apache/arrow/vector/VectorSchemaRoot;",
            ">;",
            "Ljava/util/function/Consumer<",
            "[",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 24
    iput v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->varcharValueSize:I

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockIndex:I

    .line 41
    new-instance v0, Lorg/apache/arrow/memory/RootAllocator;

    invoke-direct {v0}, Lorg/apache/arrow/memory/RootAllocator;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->allocator:Lorg/apache/arrow/memory/BufferAllocator;

    .line 42
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->schema:Lorg/apache/arrow/vector/types/pojo/Schema;

    .line 43
    iput p2, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->rowCount:I

    .line 44
    iput-object p3, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->rootConsumer:Ljava/util/function/ObjIntConsumer;

    .line 45
    iput-object p4, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->committer:Ljava/util/function/Consumer;

    const p1, 0xf4240

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->allocateNew(I)V

    return-void
.end method


# virtual methods
.method public accept(II[BIILjava/nio/charset/Charset;)V
    .locals 3

    .line 106
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    invoke-virtual {p1}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getSchema()Lorg/apache/arrow/vector/types/pojo/Schema;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/arrow/vector/types/pojo/Schema;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    invoke-virtual {p1, p2}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getVector(I)Lorg/apache/arrow/vector/FieldVector;

    move-result-object p1

    if-nez p5, :cond_1

    return-void

    .line 115
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockRowIndex:I

    .line 117
    instance-of v1, p1, Lorg/apache/arrow/vector/IntVector;

    if-eqz v1, :cond_2

    .line 118
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseInt([BII)I

    move-result p2

    .line 119
    check-cast p1, Lorg/apache/arrow/vector/IntVector;

    invoke-virtual {p1, v0, p2}, Lorg/apache/arrow/vector/IntVector;->set(II)V

    return-void

    .line 123
    :cond_2
    instance-of v1, p1, Lorg/apache/arrow/vector/BigIntVector;

    if-eqz v1, :cond_3

    .line 124
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseLong([BII)J

    move-result-wide p2

    .line 125
    check-cast p1, Lorg/apache/arrow/vector/BigIntVector;

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/arrow/vector/BigIntVector;->set(IJ)V

    return-void

    .line 129
    :cond_3
    instance-of v1, p1, Lorg/apache/arrow/vector/VarCharVector;

    if-eqz v1, :cond_5

    .line 130
    check-cast p1, Lorg/apache/arrow/vector/VarCharVector;

    .line 131
    iget-object p6, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->valueCapacities:[I

    aget p6, p6, p2

    .line 132
    invoke-virtual {p1, v0}, Lorg/apache/arrow/vector/VarCharVector;->getStartOffset(I)I

    move-result v1

    add-int/2addr v1, p5

    if-lt v1, p6, :cond_4

    .line 134
    iget v1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->rowCount:I

    mul-int/lit16 v1, v1, 0x80

    invoke-static {p5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr p6, v1

    int-to-long v1, p6

    .line 135
    invoke-virtual {p1, v1, v2}, Lorg/apache/arrow/vector/VarCharVector;->reallocDataBuffer(J)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->valueCapacities:[I

    aput p6, v1, p2

    .line 138
    :cond_4
    invoke-virtual {p1, v0, p3, p4, p5}, Lorg/apache/arrow/vector/VarCharVector;->set(I[BII)V

    return-void

    .line 142
    :cond_5
    instance-of p2, p1, Lorg/apache/arrow/vector/DecimalVector;

    if-eqz p2, :cond_6

    .line 143
    check-cast p1, Lorg/apache/arrow/vector/DecimalVector;

    .line 144
    invoke-static {p1, v0, p3, p4, p5}, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->setDecimal(Lorg/apache/arrow/vector/DecimalVector;I[BII)V

    return-void

    .line 148
    :cond_6
    instance-of p2, p1, Lorg/apache/arrow/vector/Decimal256Vector;

    if-eqz p2, :cond_8

    .line 149
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object p2

    .line 150
    check-cast p1, Lorg/apache/arrow/vector/Decimal256Vector;

    .line 151
    invoke-virtual {p1}, Lorg/apache/arrow/vector/Decimal256Vector;->getScale()I

    move-result p3

    .line 152
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result p4

    if-eq p4, p3, :cond_7

    .line 153
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object p2

    .line 155
    :cond_7
    invoke-virtual {p1, v0, p2}, Lorg/apache/arrow/vector/Decimal256Vector;->set(ILjava/math/BigDecimal;)V

    return-void

    .line 159
    :cond_8
    instance-of p2, p1, Lorg/apache/arrow/vector/SmallIntVector;

    if-eqz p2, :cond_9

    .line 160
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseInt([BII)I

    move-result p2

    .line 161
    check-cast p1, Lorg/apache/arrow/vector/SmallIntVector;

    invoke-virtual {p1, v0, p2}, Lorg/apache/arrow/vector/SmallIntVector;->set(II)V

    return-void

    .line 165
    :cond_9
    instance-of p2, p1, Lorg/apache/arrow/vector/TinyIntVector;

    if-eqz p2, :cond_a

    .line 166
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseInt([BII)I

    move-result p2

    .line 167
    check-cast p1, Lorg/apache/arrow/vector/TinyIntVector;

    invoke-virtual {p1, v0, p2}, Lorg/apache/arrow/vector/TinyIntVector;->set(II)V

    return-void

    .line 171
    :cond_a
    instance-of p2, p1, Lorg/apache/arrow/vector/Float4Vector;

    if-eqz p2, :cond_b

    .line 172
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseFloat([BII)F

    move-result p2

    .line 173
    check-cast p1, Lorg/apache/arrow/vector/Float4Vector;

    invoke-virtual {p1, v0, p2}, Lorg/apache/arrow/vector/Float4Vector;->set(IF)V

    return-void

    .line 177
    :cond_b
    instance-of p2, p1, Lorg/apache/arrow/vector/Float8Vector;

    if-eqz p2, :cond_c

    .line 178
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseFloat([BII)F

    move-result p2

    .line 179
    check-cast p1, Lorg/apache/arrow/vector/Float8Vector;

    float-to-double p2, p2

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/arrow/vector/Float8Vector;->set(ID)V

    return-void

    .line 183
    :cond_c
    instance-of p2, p1, Lorg/apache/arrow/vector/DateMilliVector;

    if-eqz p2, :cond_d

    .line 184
    invoke-static {p3, p4, p5, p6}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([BIILjava/nio/charset/Charset;)J

    move-result-wide p2

    .line 185
    check-cast p1, Lorg/apache/arrow/vector/DateMilliVector;

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/arrow/vector/DateMilliVector;->set(IJ)V

    return-void

    .line 189
    :cond_d
    instance-of p2, p1, Lorg/apache/arrow/vector/TimeStampMilliVector;

    if-eqz p2, :cond_e

    .line 190
    invoke-static {p3, p4, p5, p6}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis([BIILjava/nio/charset/Charset;)J

    move-result-wide p2

    .line 191
    check-cast p1, Lorg/apache/arrow/vector/TimeStampMilliVector;

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/arrow/vector/TimeStampMilliVector;->set(IJ)V

    return-void

    .line 195
    :cond_e
    instance-of p2, p1, Lorg/apache/arrow/vector/BitVector;

    if-eqz p2, :cond_10

    .line 196
    invoke-static {p3, p4, p5}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBoolean([BII)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 198
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 199
    check-cast p1, Lorg/apache/arrow/vector/BitVector;

    invoke-virtual {p1, v0, p2}, Lorg/apache/arrow/vector/BitVector;->set(II)V

    :cond_f
    return-void

    .line 204
    :cond_10
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TODO : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public afterRow(I)V
    .locals 5

    .line 51
    iget v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockRowIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockRowIndex:I

    .line 53
    iget v1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockSize:I

    if-ne v0, v1, :cond_3

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    invoke-virtual {v0}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getSchema()Lorg/apache/arrow/vector/types/pojo/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/arrow/vector/types/pojo/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    invoke-virtual {v3, v2}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getVector(I)Lorg/apache/arrow/vector/FieldVector;

    move-result-object v3

    .line 57
    iget v4, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockSize:I

    invoke-interface {v3, v4}, Lorg/apache/arrow/vector/FieldVector;->setValueCount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->rootConsumer:Ljava/util/function/ObjIntConsumer;

    iget-object v2, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    iget v3, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockIndex:I

    invoke-interface {v0, v2, v3}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    invoke-virtual {v0}, Lorg/apache/arrow/vector/VectorSchemaRoot;->close()V

    add-int/lit8 v0, p1, 0x1

    .line 63
    iget v2, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->rowCount:I

    if-ne v0, v2, :cond_2

    .line 64
    iget-object p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->committer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_3

    .line 65
    iget p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockIndex:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/Long;

    .line 66
    :goto_1
    iget v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockIndex:I

    if-gt v1, v0, :cond_1

    int-to-long v2, v1

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->committer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-ge p1, v2, :cond_3

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    const p1, 0xf4240

    .line 73
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->allocateNew(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public allocateNew(I)V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->schema:Lorg/apache/arrow/vector/types/pojo/Schema;

    iget-object v1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->allocator:Lorg/apache/arrow/memory/BufferAllocator;

    invoke-static {v0, v1}, Lorg/apache/arrow/vector/VectorSchemaRoot;->create(Lorg/apache/arrow/vector/types/pojo/Schema;Lorg/apache/arrow/memory/BufferAllocator;)Lorg/apache/arrow/vector/VectorSchemaRoot;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    .line 81
    iput p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockSize:I

    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockRowIndex:I

    .line 83
    invoke-virtual {v0, p1}, Lorg/apache/arrow/vector/VectorSchemaRoot;->setRowCount(I)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    invoke-virtual {v0}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getSchema()Lorg/apache/arrow/vector/types/pojo/Schema;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/arrow/vector/types/pojo/Schema;->getFields()Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 87
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->valueCapacities:[I

    :goto_0
    if-ge v1, v0, :cond_2

    .line 89
    iget-object v2, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->root:Lorg/apache/arrow/vector/VectorSchemaRoot;

    invoke-virtual {v2, v1}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getVector(I)Lorg/apache/arrow/vector/FieldVector;

    move-result-object v2

    .line 90
    instance-of v3, v2, Lorg/apache/arrow/vector/FixedWidthVector;

    if-eqz v3, :cond_0

    .line 91
    check-cast v2, Lorg/apache/arrow/vector/FixedWidthVector;

    invoke-interface {v2, p1}, Lorg/apache/arrow/vector/FixedWidthVector;->allocateNew(I)V

    goto :goto_1

    .line 92
    :cond_0
    instance-of v3, v2, Lorg/apache/arrow/vector/VariableWidthVector;

    if-eqz v3, :cond_1

    .line 93
    check-cast v2, Lorg/apache/arrow/vector/VariableWidthVector;

    mul-int/lit16 v3, p1, 0x80

    int-to-long v3, v3

    .line 94
    invoke-interface {v2, v3, v4, p1}, Lorg/apache/arrow/vector/VariableWidthVector;->allocateNew(JI)V

    .line 95
    iget-object v3, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->valueCapacities:[I

    invoke-interface {v2}, Lorg/apache/arrow/vector/VariableWidthVector;->getValueCapacity()I

    move-result v2

    aput v2, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/support/arrow/ArrowByteArrayConsumer;->blockIndex:I

    return-void
.end method
