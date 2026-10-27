.class Lcom/google/common/collect/ap;
.super Ljava/lang/Object;
.source "ObjectCountHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field transient a:[Ljava/lang/Object;

.field transient b:[I

.field transient c:I

.field transient d:I

.field transient e:[J

.field private transient f:[I

.field private transient g:F

.field private transient h:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ap;->a(IF)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ap;-><init>(IF)V

    return-void
.end method

.method constructor <init>(IF)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ap;->a(IF)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Lcom/google/common/collect/ap;->c()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ap;->a(IF)V

    .line 118
    invoke-virtual {p1}, Lcom/google/common/collect/ap;->b()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ap;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ap;->d(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;I)I

    .line 118
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ap;->b(I)I

    move-result v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
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

.method public static a()Lcom/google/common/collect/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ap<",
            "TK;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/google/common/collect/ap;

    invoke-direct {v0}, Lcom/google/common/collect/ap;-><init>()V

    return-object v0
.end method

.method public static a(I)Lcom/google/common/collect/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ap<",
            "TK;>;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/common/collect/ap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ap;-><init>(I)V

    return-object v0
.end method

.method private static b(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private b(Ljava/lang/Object;I)I
    .locals 8

    .line 408
    invoke-direct {p0}, Lcom/google/common/collect/ap;->e()I

    move-result v0

    and-int/2addr v0, p2

    .line 409
    iget-object v1, p0, Lcom/google/common/collect/ap;->f:[I

    aget v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    move v4, v3

    .line 415
    :goto_0
    iget-object v5, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v5, v5, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/ap;->a(J)I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 416
    iget-object v5, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    iget-object p1, p0, Lcom/google/common/collect/ap;->b:[I

    aget p1, p1, v1

    if-ne v4, v3, :cond_1

    .line 421
    iget-object p2, p0, Lcom/google/common/collect/ap;->f:[I

    iget-object v2, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3}, Lcom/google/common/collect/ap;->b(J)I

    move-result v2

    aput v2, p2, v0

    goto :goto_1

    .line 424
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v2, p2, v4

    aget-wide v5, p2, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/ap;->b(J)I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/google/common/collect/ap;->a(JI)J

    move-result-wide v2

    aput-wide v2, p2, v4

    .line 427
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ap;->i(I)V

    .line 428
    iget p2, p0, Lcom/google/common/collect/ap;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/common/collect/ap;->c:I

    .line 429
    iget p2, p0, Lcom/google/common/collect/ap;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/ap;->d:I

    return p1

    .line 434
    :cond_2
    iget-object v4, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/google/common/collect/ap;->b(J)I

    move-result v4

    if-ne v4, v3, :cond_3

    return v2

    :cond_3
    move v7, v4

    move v4, v1

    move v1, v7

    goto :goto_0
.end method

.method private e()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/common/collect/ap;->f:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static j(I)[I
    .locals 1

    .line 151
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 152
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method private static k(I)[J
    .locals 2

    .line 157
    new-array p0, p0, [J

    const-wide/16 v0, -0x1

    .line 158
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method private l(I)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    array-length v0, v0

    if-le p1, v0, :cond_1

    ushr-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 329
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    if-eq p1, v0, :cond_1

    .line 334
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ap;->g(I)V

    :cond_1
    return-void
.end method

.method private m(I)V
    .locals 11

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/ap;->f:[I

    .line 357
    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-lt v0, v1, :cond_0

    const p1, 0x7fffffff

    .line 359
    iput p1, p0, Lcom/google/common/collect/ap;->h:I

    return-void

    :cond_0
    int-to-float v0, p1

    .line 362
    iget v1, p0, Lcom/google/common/collect/ap;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 363
    invoke-static {p1}, Lcom/google/common/collect/ap;->j(I)[I

    move-result-object p1

    .line 364
    iget-object v1, p0, Lcom/google/common/collect/ap;->e:[J

    .line 366
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    .line 367
    :goto_0
    iget v4, p0, Lcom/google/common/collect/ap;->c:I

    if-ge v3, v4, :cond_1

    .line 368
    aget-wide v4, v1, v3

    .line 369
    invoke-static {v4, v5}, Lcom/google/common/collect/ap;->a(J)I

    move-result v4

    and-int v5, v4, v2

    .line 371
    aget v6, p1, v5

    .line 372
    aput v3, p1, v5

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    const-wide v7, 0xffffffffL

    int-to-long v9, v6

    and-long v6, v9, v7

    or-long/2addr v4, v6

    .line 373
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 376
    :cond_1
    iput v0, p0, Lcom/google/common/collect/ap;->h:I

    .line 377
    iput-object p1, p0, Lcom/google/common/collect/ap;->f:[I

    return-void
.end method


# virtual methods
.method a(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method a(Ljava/lang/Object;)I
    .locals 5

    .line 381
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 382
    iget-object v1, p0, Lcom/google/common/collect/ap;->f:[I

    invoke-direct {p0}, Lcom/google/common/collect/ap;->e()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 384
    iget-object v2, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v2, v2, v1

    .line 385
    invoke-static {v2, v3}, Lcom/google/common/collect/ap;->a(J)I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-static {p1, v4}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 388
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/collect/ap;->b(J)I

    move-result v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public a(Ljava/lang/Object;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 275
    invoke-static {p2, v0}, Lcom/google/common/collect/m;->b(ILjava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    .line 277
    iget-object v1, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    .line 278
    iget-object v2, p0, Lcom/google/common/collect/ap;->b:[I

    .line 280
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v3

    .line 281
    invoke-direct {p0}, Lcom/google/common/collect/ap;->e()I

    move-result v4

    and-int/2addr v4, v3

    .line 282
    iget v5, p0, Lcom/google/common/collect/ap;->c:I

    .line 283
    iget-object v6, p0, Lcom/google/common/collect/ap;->f:[I

    aget v7, v6, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 285
    aput v5, v6, v4

    goto :goto_1

    .line 291
    :cond_0
    :goto_0
    aget-wide v9, v0, v7

    .line 292
    invoke-static {v9, v10}, Lcom/google/common/collect/ap;->a(J)I

    move-result v4

    if-ne v4, v3, :cond_1

    aget-object v4, v1, v7

    invoke-static {p1, v4}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    aget p1, v2, v7

    .line 295
    aput p2, v2, v7

    return p1

    .line 298
    :cond_1
    invoke-static {v9, v10}, Lcom/google/common/collect/ap;->b(J)I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 300
    invoke-static {v9, v10, v5}, Lcom/google/common/collect/ap;->a(JI)J

    move-result-wide v1

    aput-wide v1, v0, v7

    :goto_1
    const v0, 0x7fffffff

    if-eq v5, v0, :cond_3

    add-int/lit8 v0, v5, 0x1

    .line 306
    invoke-direct {p0, v0}, Lcom/google/common/collect/ap;->l(I)V

    .line 307
    invoke-virtual {p0, v5, p1, p2, v3}, Lcom/google/common/collect/ap;->a(ILjava/lang/Object;II)V

    .line 308
    iput v0, p0, Lcom/google/common/collect/ap;->c:I

    .line 309
    iget p1, p0, Lcom/google/common/collect/ap;->h:I

    if-lt v5, p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/google/common/collect/ap;->f:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/common/collect/ap;->m(I)V

    .line 312
    :cond_2
    iget p1, p0, Lcom/google/common/collect/ap;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/ap;->d:I

    const/4 p1, 0x0

    return p1

    .line 303
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move v7, v4

    goto :goto_0
.end method

.method a(IF)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Initial capacity must be non-negative"

    .line 137
    invoke-static {v2, v3}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    const-string v2, "Illegal load factor"

    .line 138
    invoke-static {v0, v2}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    float-to-double v2, p2

    .line 139
    invoke-static {p1, v2, v3}, Lcom/google/common/collect/z;->a(ID)I

    move-result v0

    .line 140
    invoke-static {v0}, Lcom/google/common/collect/ap;->j(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/ap;->f:[I

    .line 141
    iput p2, p0, Lcom/google/common/collect/ap;->g:F

    .line 143
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    .line 144
    new-array v2, p1, [I

    iput-object v2, p0, Lcom/google/common/collect/ap;->b:[I

    .line 146
    invoke-static {p1}, Lcom/google/common/collect/ap;->k(I)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ap;->e:[J

    int-to-float p1, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 147
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/ap;->h:I

    return-void
.end method

.method a(ILjava/lang/Object;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    int-to-long v1, p4

    const/16 p4, 0x20

    shl-long/2addr v1, p4

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 321
    iget-object p4, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aput-object p2, p4, p1

    .line 322
    iget-object p2, p0, Lcom/google/common/collect/ap;->b:[I

    aput p3, p2, p1

    return-void
.end method

.method b()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 171
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 398
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ap;->b:[I

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method b(II)V
    .locals 1

    .line 194
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/o;->a(II)I

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/ap;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method c()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    return v0
.end method

.method public c(Ljava/lang/Object;)I
    .locals 1

    .line 404
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/ap;->b(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 184
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/o;->a(II)I

    .line 185
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method d(I)I
    .locals 1

    .line 189
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/o;->a(II)I

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/ap;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public d()V
    .locals 5

    .line 487
    iget v0, p0, Lcom/google/common/collect/ap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ap;->d:I

    .line 488
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ap;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/google/common/collect/ap;->b:[I

    iget v1, p0, Lcom/google/common/collect/ap;->c:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 490
    iget-object v0, p0, Lcom/google/common/collect/ap;->f:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 491
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    const-wide/16 v3, -0x1

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 492
    iput v2, p0, Lcom/google/common/collect/ap;->c:I

    return-void
.end method

.method e(I)Lcom/google/common/collect/Multiset$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$a<",
            "TK;>;"
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/google/common/collect/ap;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/o;->a(II)I

    .line 200
    new-instance v0, Lcom/google/common/collect/ap$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ap$a;-><init>(Lcom/google/common/collect/ap;I)V

    return-object v0
.end method

.method f(I)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ap;->g(I)V

    .line 267
    :cond_0
    iget v0, p0, Lcom/google/common/collect/ap;->h:I

    if-lt p1, v0, :cond_1

    const/4 v0, 0x2

    add-int/lit8 p1, p1, -0x1

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 269
    invoke-direct {p0, p1}, Lcom/google/common/collect/ap;->m(I)V

    :cond_1
    return-void
.end method

.method g(I)V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/ap;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ap;->b:[I

    .line 346
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    .line 347
    array-length v1, v0

    .line 348
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    if-le p1, v1, :cond_0

    const-wide/16 v2, -0x1

    .line 350
    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 352
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    return-void
.end method

.method h(I)I
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Lcom/google/common/collect/ap;->a(J)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ap;->b(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method i(I)V
    .locals 8

    .line 448
    invoke-virtual {p0}, Lcom/google/common/collect/ap;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge p1, v0, :cond_2

    .line 451
    iget-object v5, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 452
    iget-object v6, p0, Lcom/google/common/collect/ap;->b:[I

    aget v7, v6, v0

    aput v7, v6, p1

    .line 453
    aput-object v4, v5, v0

    .line 454
    aput v3, v6, v0

    .line 457
    iget-object v3, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v4, v3, v0

    .line 458
    aput-wide v4, v3, p1

    .line 459
    aput-wide v1, v3, v0

    .line 463
    invoke-static {v4, v5}, Lcom/google/common/collect/ap;->a(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/ap;->e()I

    move-result v2

    and-int/2addr v1, v2

    .line 464
    iget-object v2, p0, Lcom/google/common/collect/ap;->f:[I

    aget v3, v2, v1

    if-ne v3, v0, :cond_0

    .line 467
    aput p1, v2, v1

    goto :goto_1

    .line 474
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ap;->e:[J

    aget-wide v1, v1, v3

    invoke-static {v1, v2}, Lcom/google/common/collect/ap;->b(J)I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    invoke-static {v1, v2, p1}, Lcom/google/common/collect/ap;->a(JI)J

    move-result-wide v1

    aput-wide v1, v0, v3

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ap;->a:[Ljava/lang/Object;

    aput-object v4, v0, p1

    .line 481
    iget-object v0, p0, Lcom/google/common/collect/ap;->b:[I

    aput v3, v0, p1

    .line 482
    iget-object v0, p0, Lcom/google/common/collect/ap;->e:[J

    aput-wide v1, v0, p1

    :goto_1
    return-void
.end method
