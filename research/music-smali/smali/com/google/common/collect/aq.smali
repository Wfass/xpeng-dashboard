.class Lcom/google/common/collect/aq;
.super Lcom/google/common/collect/ap;
.source "ObjectCountLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ap<",
        "TK;>;"
    }
.end annotation


# instance fields
.field transient f:[J

.field private transient g:I

.field private transient h:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 69
    invoke-direct {p0, v0}, Lcom/google/common/collect/aq;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/aq;-><init>(IF)V

    return-void
.end method

.method constructor <init>(IF)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ap;-><init>(IF)V

    return-void
.end method

.method private c(II)V
    .locals 7

    .line 122
    iget-object v0, p0, Lcom/google/common/collect/aq;->f:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private d(II)V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/google/common/collect/aq;->f:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private e(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 132
    iput p2, p0, Lcom/google/common/collect/aq;->g:I

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/aq;->c(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    .line 137
    iput p1, p0, Lcom/google/common/collect/aq;->h:I

    goto :goto_1

    .line 139
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/aq;->d(II)V

    :goto_1
    return-void
.end method

.method private j(I)I
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/common/collect/aq;->f:[J

    aget-wide v0, v0, p1

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method private k(I)I
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/google/common/collect/aq;->f:[J

    aget-wide v0, v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method a(II)I
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/google/common/collect/aq;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method a(IF)V
    .locals 2

    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ap;->a(IF)V

    const/4 p2, -0x2

    .line 90
    iput p2, p0, Lcom/google/common/collect/aq;->g:I

    .line 91
    iput p2, p0, Lcom/google/common/collect/aq;->h:I

    .line 92
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/common/collect/aq;->f:[J

    .line 93
    iget-object p1, p0, Lcom/google/common/collect/aq;->f:[J

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method a(ILjava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;II)V"
        }
    .end annotation

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ap;->a(ILjava/lang/Object;II)V

    .line 146
    iget p2, p0, Lcom/google/common/collect/aq;->h:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/aq;->e(II)V

    const/4 p2, -0x2

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/aq;->e(II)V

    return-void
.end method

.method b()I
    .locals 2

    .line 98
    iget v0, p0, Lcom/google/common/collect/aq;->g:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method b(I)I
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/google/common/collect/aq;->k(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public d()V
    .locals 1

    .line 171
    invoke-super {p0}, Lcom/google/common/collect/ap;->d()V

    const/4 v0, -0x2

    .line 172
    iput v0, p0, Lcom/google/common/collect/aq;->g:I

    .line 173
    iput v0, p0, Lcom/google/common/collect/aq;->h:I

    return-void
.end method

.method g(I)V
    .locals 4

    .line 163
    invoke-super {p0, p1}, Lcom/google/common/collect/ap;->g(I)V

    .line 164
    iget-object v0, p0, Lcom/google/common/collect/aq;->f:[J

    array-length v1, v0

    .line 165
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/aq;->f:[J

    .line 166
    iget-object v0, p0, Lcom/google/common/collect/aq;->f:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method i(I)V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/aq;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 153
    invoke-direct {p0, p1}, Lcom/google/common/collect/aq;->j(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/aq;->k(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/common/collect/aq;->e(II)V

    if-ge p1, v0, :cond_0

    .line 155
    invoke-direct {p0, v0}, Lcom/google/common/collect/aq;->j(I)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/common/collect/aq;->e(II)V

    .line 156
    invoke-direct {p0, v0}, Lcom/google/common/collect/aq;->k(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/aq;->e(II)V

    .line 158
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ap;->i(I)V

    return-void
.end method
