.class public Lsc;
.super Ljava/lang/Object;
.source "Label.java"


# static fields
.field static final a:Lsc;


# instance fields
.field b:S

.field c:I

.field d:S

.field e:Lsb;

.field f:Lsc;

.field g:Lrz;

.field h:Lsc;

.field private i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lsc;

    invoke-direct {v0}, Lsc;-><init>()V

    sput-object v0, Lsc;->a:Lsc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(III)V
    .locals 6

    .line 222
    iget-object v0, p0, Lsc;->i:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    .line 223
    new-array v0, v1, [I

    iput-object v0, p0, Lsc;->i:[I

    .line 225
    :cond_0
    iget-object v0, p0, Lsc;->i:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/lit8 v4, v3, 0x2

    .line 226
    array-length v5, v0

    if-lt v4, v5, :cond_1

    .line 227
    array-length v4, v0

    add-int/2addr v4, v1

    new-array v1, v4, [I

    .line 228
    array-length v4, v0

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iput-object v1, p0, Lsc;->i:[I

    .line 231
    :cond_1
    iget-object v0, p0, Lsc;->i:[I

    add-int/lit8 v3, v3, 0x1

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    or-int p1, p2, p3

    .line 232
    aput p1, v0, v3

    .line 233
    aput v3, v0, v2

    return-void
.end method


# virtual methods
.method final a()Lsc;
    .locals 1

    .line 171
    iget-object v0, p0, Lsc;->e:Lsb;

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lsb;->a:Lsc;

    :goto_0
    return-object v0
.end method

.method final a(Lrw;IZ)V
    .locals 2

    .line 191
    iget-short v0, p0, Lsc;->b:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eqz p3, :cond_0

    const/high16 p3, 0x20000000

    .line 193
    iget v1, p1, Lrw;->b:I

    invoke-direct {p0, p2, p3, v1}, Lsc;->a(III)V

    .line 194
    invoke-virtual {p1, v0}, Lrw;->c(I)Lrw;

    goto :goto_0

    :cond_0
    const/high16 p3, 0x10000000

    .line 196
    iget v1, p1, Lrw;->b:I

    invoke-direct {p0, p2, p3, v1}, Lsc;->a(III)V

    .line 197
    invoke-virtual {p1, v0}, Lrw;->b(I)Lrw;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 201
    iget p3, p0, Lsc;->c:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lrw;->c(I)Lrw;

    goto :goto_0

    .line 203
    :cond_2
    iget p3, p0, Lsc;->c:I

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lrw;->b(I)Lrw;

    :goto_0
    return-void
.end method

.method final a([BI)Z
    .locals 7

    .line 251
    iget-short v0, p0, Lsc;->b:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lsc;->b:S

    .line 252
    iput p2, p0, Lsc;->c:I

    .line 253
    iget-object v0, p0, Lsc;->i:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 257
    :cond_0
    aget v0, v0, v1

    :goto_0
    if-lez v0, :cond_5

    .line 258
    iget-object v2, p0, Lsc;->i:[I

    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    .line 259
    aget v2, v2, v0

    sub-int v4, p2, v3

    const v5, 0xfffffff

    and-int/2addr v5, v2

    const/high16 v6, -0x10000000

    and-int/2addr v2, v6

    const/high16 v6, 0x10000000

    if-ne v2, v6, :cond_3

    const/16 v2, -0x8000

    if-lt v4, v2, :cond_1

    const/16 v2, 0x7fff

    if-le v4, v2, :cond_4

    .line 268
    :cond_1
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xc6

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x31

    int-to-byte v1, v1

    .line 271
    aput-byte v1, p1, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x14

    int-to-byte v1, v1

    .line 274
    aput-byte v1, p1, v3

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x18

    int-to-byte v3, v3

    .line 279
    aput-byte v3, p1, v5

    add-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v3, v4, 0x10

    int-to-byte v3, v3

    .line 280
    aput-byte v3, p1, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    .line 282
    aput-byte v3, p1, v5

    int-to-byte v3, v4

    .line 283
    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_5
    return v1
.end method
