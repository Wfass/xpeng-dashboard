.class final Lcom/android/carsdk/protobuf/LongArrayList;
.super Lcom/android/carsdk/protobuf/AbstractProtobufList;
.source "LongArrayList.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$LongList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/AbstractProtobufList<",
        "Ljava/lang/Long;",
        ">;",
        "Lcom/android/carsdk/protobuf/Internal$LongList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Lcom/android/carsdk/protobuf/LongArrayList;


# instance fields
.field private array:[J

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/carsdk/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/carsdk/protobuf/LongArrayList;-><init>()V

    sput-object v0, Lcom/android/carsdk/protobuf/LongArrayList;->EMPTY_LIST:Lcom/android/carsdk/protobuf/LongArrayList;

    .line 48
    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/LongArrayList;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/android/carsdk/protobuf/LongArrayList;-><init>([JI)V

    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/AbstractProtobufList;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    .line 78
    iput p2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    return-void
.end method

.method private addLong(IJ)V
    .locals 4

    .line 168
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    .line 169
    iget v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 175
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 178
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 179
    new-array v0, v0, [J

    const/4 v2, 0x0

    .line 182
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iput-object v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    aput-wide p2, v0, p1

    .line 190
    iget p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    .line 191
    iget p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    return-void

    .line 170
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static emptyList()Lcom/android/carsdk/protobuf/LongArrayList;
    .locals 1

    .line 52
    sget-object v0, Lcom/android/carsdk/protobuf/LongArrayList;->EMPTY_LIST:Lcom/android/carsdk/protobuf/LongArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 261
    iget v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/Long;)V
    .locals 2

    .line 153
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/carsdk/protobuf/LongArrayList;->addLong(IJ)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/LongArrayList;->add(ILjava/lang/Long;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIsMutable()V

    .line 199
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Lcom/android/carsdk/protobuf/LongArrayList;

    if-nez v0, :cond_0

    .line 204
    invoke-super {p0, p1}, Lcom/android/carsdk/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 207
    :cond_0
    check-cast p1, Lcom/android/carsdk/protobuf/LongArrayList;

    .line 208
    iget v0, p1, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const v2, 0x7fffffff

    .line 212
    iget v3, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    add-int/2addr v3, v0

    .line 219
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 220
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    .line 223
    :cond_2
    iget-object v0, p1, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    iget-object v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    iget v4, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    iget p1, p1, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iput v3, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    .line 225
    iget p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    return v0

    .line 215
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public addLong(J)V
    .locals 1

    .line 161
    iget v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/carsdk/protobuf/LongArrayList;->addLong(IJ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 86
    :cond_0
    instance-of v1, p1, Lcom/android/carsdk/protobuf/IntArrayList;

    if-nez v1, :cond_1

    .line 87
    invoke-super {p0, p1}, Lcom/android/carsdk/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 89
    :cond_1
    check-cast p1, Lcom/android/carsdk/protobuf/LongArrayList;

    .line 90
    iget v1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    iget v2, p1, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 94
    :cond_2
    iget-object p1, p1, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    move v1, v3

    .line 95
    :goto_0
    iget v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_4

    .line 96
    iget-object v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    aget-wide v4, v2, v1

    aget-wide v6, p1, v1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->get(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLong(I)J
    .locals 2

    .line 128
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 129
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    :goto_0
    iget v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 108
    iget-object v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$LongList;
    .locals 2

    .line 115
    iget v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    if-lt p1, v0, :cond_0

    .line 118
    new-instance v0, Lcom/android/carsdk/protobuf/LongArrayList;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iget v1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    invoke-direct {v0, p1, v1}, Lcom/android/carsdk/protobuf/LongArrayList;-><init>([JI)V

    return-object v0

    .line 116
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Long;
    .locals 5

    .line 245
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIsMutable()V

    .line 246
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 247
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    .line 248
    iget v4, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    sub-int/2addr v4, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    iget p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    .line 250
    iget p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->remove(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 231
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIsMutable()V

    const/4 v0, 0x0

    move v1, v0

    .line 232
    :goto_0
    iget v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    if-ge v1, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    sub-int/2addr v2, v1

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    .line 236
    iget p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/carsdk/protobuf/LongArrayList;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .line 139
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/carsdk/protobuf/LongArrayList;->setLong(IJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/android/carsdk/protobuf/LongArrayList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public setLong(IJ)J
    .locals 3

    .line 144
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIsMutable()V

    .line 145
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/LongArrayList;->ensureIndexInRange(I)V

    .line 146
    iget-object v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->array:[J

    aget-wide v1, v0, p1

    .line 147
    aput-wide p2, v0, p1

    return-wide v1
.end method

.method public size()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/android/carsdk/protobuf/LongArrayList;->size:I

    return v0
.end method
