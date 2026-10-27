.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$ValuesView;,
        Lcom/google/common/collect/CompactHashMap$b;,
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HASH_MASK:J = -0x100000000L

.field private static final LOAD_FACTOR:F = 1.0f

.field private static final NEXT_MASK:J = 0xffffffffL


# instance fields
.field transient a:[J

.field transient b:[Ljava/lang/Object;

.field transient c:[Ljava/lang/Object;

.field transient d:I

.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient table:[I

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->a(I)V

    return-void
.end method

.method private static a(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static synthetic a(Lcom/google/common/collect/CompactHashMap;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return p0
.end method

.method static synthetic a(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)I
    .locals 6

    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->b()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 340
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 341
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->k()I

    move-result v3

    and-int/2addr v3, v0

    aget v2, v2, v3

    :goto_0
    if-eq v2, v1, :cond_2

    .line 343
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v3, v3, v2

    .line 344
    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashMap;->a(J)I

    move-result v5

    if-ne v5, v0, :cond_1

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-static {p1, v5}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    .line 347
    :cond_1
    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashMap;->b(J)I

    move-result v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static a(JI)J
    .locals 4

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static a()Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashMap;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->j(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->k()I

    move-result v0

    and-int/2addr v0, p2

    .line 378
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    move v4, v3

    .line 384
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashMap;->a(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 387
    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    aget-object p1, p1, v1

    if-ne v4, v3, :cond_1

    .line 391
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashMap;->b(J)I

    move-result v2

    aput v2, p2, v0

    goto :goto_1

    .line 394
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v2, p2, v4

    aget-wide v5, p2, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashMap;->b(J)I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/google/common/collect/CompactHashMap;->a(JI)J

    move-result-wide v2

    aput-wide v2, p2, v4

    .line 397
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->d(I)V

    .line 398
    iget p2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 399
    iget p2, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    return-object p1

    .line 403
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->b(J)I

    move-result v4

    if-ne v4, v3, :cond_3

    return-object v2

    :cond_3
    move v7, v4

    move v4, v1

    move v1, v7

    goto :goto_0
.end method

.method private static b(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private static f(I)[I
    .locals 1

    .line 192
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 193
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private static g(I)[J
    .locals 2

    .line 198
    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    .line 199
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method private h(I)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    array-length v0, v0

    if-le p1, v0, :cond_1

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 293
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    if-eq p1, v0, :cond_1

    .line 298
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->c(I)V

    :cond_1
    return-void
.end method

.method private i(I)V
    .locals 10

    .line 320
    invoke-static {p1}, Lcom/google/common/collect/CompactHashMap;->f(I)[I

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    .line 323
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 324
    :goto_0
    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v2, v3, :cond_0

    .line 325
    aget-wide v3, v0, v2

    .line 326
    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashMap;->a(J)I

    move-result v3

    and-int v4, v3, v1

    .line 328
    aget v5, p1, v4

    .line 329
    aput v2, p1, v4

    int-to-long v3, v3

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    const-wide v6, 0xffffffffL

    int-to-long v8, v5

    and-long v5, v8, v6

    or-long/2addr v3, v5

    .line 330
    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    return-void
.end method

.method private j(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lcom/google/common/collect/CompactHashMap;->a(J)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/CompactHashMap;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private k()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method a(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method a(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be non-negative"

    .line 169
    invoke-static {v1, v2}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    .line 170
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    return-void
.end method

.method a(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    int-to-long v1, p4

    const/16 p4, 0x20

    shl-long/2addr v1, p4

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 285
    iget-object p4, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    aput-object p2, p4, p1

    .line 286
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    aput-object p3, p2, p1

    return-void
.end method

.method b(I)V
    .locals 0

    return-void
.end method

.method b()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->b()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->b(ZLjava/lang/Object;)V

    .line 182
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 183
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/z;->a(ID)I

    move-result v1

    .line 184
    invoke-static {v1}, Lcom/google/common/collect/CompactHashMap;->f(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    .line 186
    invoke-static {v0}, Lcom/google/common/collect/CompactHashMap;->g(I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    .line 187
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    .line 188
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    return-void
.end method

.method c(I)V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    .line 309
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    .line 311
    array-length v1, v0

    .line 312
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_0

    const-wide/16 v2, -0x1

    .line 314
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 316
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    return-void
.end method

.method public clear()V
    .locals 6

    .line 755
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 758
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    .line 759
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 760
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 761
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 762
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 763
    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 354
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 688
    :goto_0
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_1

    .line 689
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method d()I
    .locals 1

    .line 456
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(I)V
    .locals 7

    .line 417
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_2

    .line 420
    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    aget-object v5, v4, v0

    aput-object v5, v4, p1

    .line 421
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 422
    aput-object v3, v4, v0

    .line 423
    aput-object v3, v5, v0

    .line 426
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v4, v3, v0

    .line 427
    aput-wide v4, v3, p1

    .line 428
    aput-wide v1, v3, v0

    .line 432
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashMap;->a(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->k()I

    move-result v2

    and-int/2addr v1, v2

    .line 433
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v3, v2, v1

    if-ne v3, v0, :cond_0

    .line 436
    aput p1, v2, v1

    goto :goto_1

    .line 443
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aget-wide v1, v1, v3

    invoke-static {v1, v2}, Lcom/google/common/collect/CompactHashMap;->b(J)I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/CompactHashMap;->a(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    aput-object v3, v0, p1

    .line 450
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    aput-object v3, v0, p1

    .line 451
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    aput-wide v1, v0, p1

    :goto_1
    return-void
.end method

.method e(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 460
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 521
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->g()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method f()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 559
    new-instance v0, Lcom/google/common/collect/CompactHashMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 576
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 360
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->a(Ljava/lang/Object;)I

    move-result p1

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->b(I)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 622
    new-instance v0, Lcom/google/common/collect/CompactHashMap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$2;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method i()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 704
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 683
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 726
    new-instance v0, Lcom/google/common/collect/CompactHashMap$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$3;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->e()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->c()V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->a:[J

    .line 237
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->b:[Ljava/lang/Object;

    .line 238
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->c:[Ljava/lang/Object;

    .line 240
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v3

    .line 241
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->k()I

    move-result v4

    and-int/2addr v4, v3

    .line 242
    iget v5, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 243
    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    aget v7, v6, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 245
    aput v5, v6, v4

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    aget-wide v9, v0, v7

    .line 252
    invoke-static {v9, v10}, Lcom/google/common/collect/CompactHashMap;->a(J)I

    move-result v4

    if-ne v4, v3, :cond_2

    aget-object v4, v1, v7

    invoke-static {p1, v4}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    aget-object p1, v2, v7

    .line 257
    aput-object p2, v2, v7

    .line 258
    invoke-virtual {p0, v7}, Lcom/google/common/collect/CompactHashMap;->b(I)V

    return-object p1

    .line 261
    :cond_2
    invoke-static {v9, v10}, Lcom/google/common/collect/CompactHashMap;->b(J)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 263
    invoke-static {v9, v10, v5}, Lcom/google/common/collect/CompactHashMap;->a(JI)J

    move-result-wide v1

    aput-wide v1, v0, v7

    :goto_1
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_4

    add-int/lit8 v0, v5, 0x1

    .line 269
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashMap;->h(I)V

    .line 270
    invoke-virtual {p0, v5, p1, p2, v3}, Lcom/google/common/collect/CompactHashMap;->a(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 271
    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 272
    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap;->table:[I

    array-length p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 273
    invoke-static {v5, p1, v0, v1}, Lcom/google/common/collect/z;->a(IID)Z

    move-result p2

    if-eqz p2, :cond_3

    mul-int/lit8 p1, p1, 0x2

    .line 274
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->i(I)V

    .line 276
    :cond_3
    iget p1, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap;->d:I

    const/4 p1, 0x0

    return-object p1

    .line 266
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move v7, v4

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 369
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 372
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashMap;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 678
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->i()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
