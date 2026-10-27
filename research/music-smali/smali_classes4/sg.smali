.class final Lsg;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# instance fields
.field final a:Lry;

.field b:Ljava/lang/String;

.field c:I

.field final d:Lrw;

.field e:[Lsf;

.field private f:I

.field private g:[Lsf;

.field private h:I


# direct methods
.method constructor <init>(Lry;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lsg;->a:Lry;

    const/16 p1, 0x100

    .line 77
    new-array p1, p1, [Lsf;

    iput-object p1, p0, Lsg;->g:[Lsf;

    const/4 p1, 0x1

    .line 78
    iput p1, p0, Lsg;->c:I

    .line 79
    new-instance p1, Lrw;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lrw;-><init>(I)V

    iput-object p1, p0, Lsg;->d:Lrw;

    return-void
.end method

.method private a(Lsf;)Lsf;
    .locals 7

    .line 170
    iget v0, p0, Lsg;->f:I

    iget-object v1, p0, Lsg;->g:[Lsf;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2

    .line 171
    array-length v0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 173
    new-array v2, v1, [Lsf;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 175
    iget-object v3, p0, Lsg;->g:[Lsf;

    aget-object v3, v3, v0

    :goto_1
    if-eqz v3, :cond_0

    .line 177
    iget v4, v3, Lsf;->h:I

    rem-int/2addr v4, v1

    .line 178
    iget-object v5, v3, Lsf;->i:Lsf;

    .line 179
    aget-object v6, v2, v4

    iput-object v6, v3, Lsf;->i:Lsf;

    .line 180
    aput-object v3, v2, v4

    move-object v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    :cond_1
    iput-object v2, p0, Lsg;->g:[Lsf;

    .line 186
    :cond_2
    iget v0, p0, Lsg;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsg;->f:I

    .line 187
    iget v0, p1, Lsf;->h:I

    iget-object v1, p0, Lsg;->g:[Lsf;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 188
    aget-object v2, v1, v0

    iput-object v2, p1, Lsf;->i:Lsf;

    .line 189
    aput-object p1, v1, v0

    return-object p1
.end method

.method private b(Lsf;)I
    .locals 4

    .line 478
    iget-object v0, p0, Lsg;->e:[Lsf;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 479
    new-array v0, v0, [Lsf;

    iput-object v0, p0, Lsg;->e:[Lsf;

    .line 481
    :cond_0
    iget v0, p0, Lsg;->h:I

    iget-object v1, p0, Lsg;->e:[Lsf;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 482
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lsf;

    .line 483
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iput-object v0, p0, Lsg;->e:[Lsf;

    .line 486
    :cond_1
    iget-object v0, p0, Lsg;->e:[Lsf;

    iget v1, p0, Lsg;->h:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsg;->h:I

    aput-object p1, v0, v1

    .line 487
    invoke-direct {p0, p1}, Lsg;->a(Lsf;)Lsf;

    move-result-object p1

    iget p1, p1, Lsf;->a:I

    return p1
.end method


# virtual methods
.method a(II)I
    .locals 11

    const/16 v0, 0x20

    if-ge p1, p2, :cond_0

    int-to-long v1, p1

    int-to-long v3, p2

    goto :goto_0

    :cond_0
    int-to-long v1, p2

    int-to-long v3, p1

    :goto_0
    shl-long/2addr v3, v0

    or-long v0, v1, v3

    move-wide v8, v0

    const v0, 0x7fffffff

    add-int/lit16 v1, p1, 0x82

    add-int/2addr v1, p2

    and-int v10, v1, v0

    .line 463
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v1, v0

    rem-int v1, v10, v1

    aget-object v0, v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 465
    iget v1, v0, Lsf;->b:I

    const/16 v2, 0x82

    if-ne v1, v2, :cond_1

    iget v1, v0, Lsf;->h:I

    if-ne v1, v10, :cond_1

    iget-wide v1, v0, Lsf;->f:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_1

    .line 466
    iget p1, v0, Lsf;->g:I

    return p1

    .line 468
    :cond_1
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_1

    .line 470
    :cond_2
    iget-object v0, p0, Lsg;->e:[Lsf;

    aget-object p1, v0, p1

    iget-object p1, p1, Lsf;->e:Ljava/lang/String;

    .line 471
    iget-object v0, p0, Lsg;->e:[Lsf;

    aget-object p2, v0, p2

    iget-object p2, p2, Lsf;->e:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lsg;->a:Lry;

    invoke-virtual {v0, p1, p2}, Lry;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsg;->b(Ljava/lang/String;)I

    move-result p1

    .line 473
    new-instance p2, Lsf;

    iget v3, p0, Lsg;->h:I

    const/16 v4, 0x82

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v10}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, p2}, Lsg;->a(Lsf;)Lsf;

    move-result-object p2

    iput p1, p2, Lsf;->g:I

    return p1
.end method

.method a(ILjava/lang/String;)I
    .locals 0

    .line 103
    iput-object p2, p0, Lsg;->b:Ljava/lang/String;

    const/4 p1, 0x7

    .line 104
    invoke-virtual {p0, p1, p2}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object p1

    iget p1, p1, Lsf;->a:I

    return p1
.end method

.method a(Ljava/lang/String;)I
    .locals 12

    .line 370
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const v2, 0x7fffffff

    and-int v11, v0, v2

    .line 371
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v2, v0

    rem-int v2, v11, v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 373
    iget v2, v0, Lsf;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lsf;->h:I

    if-ne v2, v11, :cond_0

    iget-object v2, v0, Lsf;->e:Ljava/lang/String;

    .line 375
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    iget p1, v0, Lsf;->a:I

    return p1

    .line 378
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lsg;->d:Lrw;

    invoke-virtual {v0, v1}, Lrw;->a(I)Lrw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrw;->a(Ljava/lang/String;)V

    .line 381
    new-instance v0, Lsf;

    iget v4, p0, Lsg;->c:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lsg;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v3, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v11}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->a(Lsf;)Lsf;

    move-result-object p1

    iget p1, p1, Lsf;->a:I

    return p1
.end method

.method a(Ljava/lang/String;I)I
    .locals 12

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x81

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    const v2, 0x7fffffff

    and-int v11, v0, v2

    .line 441
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v2, v0

    rem-int v2, v11, v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 443
    iget v2, v0, Lsf;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lsf;->h:I

    if-ne v2, v11, :cond_0

    iget-wide v2, v0, Lsf;->f:J

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lsf;->e:Ljava/lang/String;

    .line 446
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    iget p1, v0, Lsf;->a:I

    return p1

    .line 449
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 451
    :cond_1
    new-instance v0, Lsf;

    iget v4, p0, Lsg;->h:I

    const/16 v5, 0x81

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-long v9, p2

    move-object v3, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v11}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->b(Lsf;)I

    move-result p1

    return p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .line 345
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    const v2, 0x7fffffff

    and-int v11, v0, v2

    .line 346
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v2, v0

    rem-int v2, v11, v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 348
    iget v2, v0, Lsf;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lsf;->h:I

    if-ne v2, v11, :cond_0

    iget-object v2, v0, Lsf;->d:Ljava/lang/String;

    .line 350
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lsf;->e:Ljava/lang/String;

    .line 351
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iget p1, v0, Lsf;->a:I

    return p1

    .line 354
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lsg;->d:Lrw;

    invoke-virtual {p0, p1}, Lsg;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2}, Lsg;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lrw;->a(III)V

    .line 357
    new-instance v0, Lsf;

    iget v4, p0, Lsg;->c:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lsg;->c:I

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v3, v0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v11}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->a(Lsf;)Lsf;

    move-result-object p1

    iget p1, p1, Lsf;->a:I

    return p1
.end method

.method a(I)Lsf;
    .locals 11

    add-int/lit8 v0, p1, 0x3

    const v1, 0x7fffffff

    and-int v10, v0, v1

    .line 309
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v1, v0

    rem-int v1, v10, v1

    aget-object v0, v0, v1

    :goto_0
    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 311
    iget v2, v0, Lsf;->b:I

    if-ne v2, v1, :cond_0

    iget v1, v0, Lsf;->h:I

    if-ne v1, v10, :cond_0

    iget-wide v1, v0, Lsf;->f:J

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-object v0

    .line 314
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lsg;->d:Lrw;

    invoke-virtual {v0, v1}, Lrw;->a(I)Lrw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrw;->c(I)Lrw;

    .line 317
    new-instance v0, Lsf;

    iget v3, p0, Lsg;->c:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lsg;->c:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    int-to-long v8, p1

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->a(Lsf;)Lsf;

    move-result-object p1

    return-object p1
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsf;
    .locals 11

    .line 290
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int v10, v0, v1

    .line 291
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v1, v0

    rem-int v1, v10, v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 293
    iget v1, v0, Lsf;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lsf;->h:I

    if-ne v1, v10, :cond_0

    iget-object v1, v0, Lsf;->c:Ljava/lang/String;

    .line 295
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lsf;->d:Ljava/lang/String;

    .line 296
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lsf;->e:Ljava/lang/String;

    .line 297
    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 300
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p0, Lsg;->d:Lrw;

    const/4 v1, 0x7

    .line 303
    invoke-virtual {p0, v1, p2}, Lsg;->b(ILjava/lang/String;)Lsf;

    move-result-object v1

    iget v1, v1, Lsf;->a:I

    invoke-virtual {p0, p3, p4}, Lsg;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 302
    invoke-virtual {v0, p1, v1, v2}, Lrw;->a(III)V

    .line 304
    new-instance v0, Lsf;

    iget v3, p0, Lsg;->c:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lsg;->c:I

    const-wide/16 v8, 0x0

    move-object v2, v0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v10}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->a(Lsf;)Lsf;

    move-result-object p1

    return-object p1
.end method

.method a(J)Lsf;
    .locals 12

    long-to-int v0, p1

    const/4 v1, 0x5

    add-int/2addr v0, v1

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    add-int/2addr v0, v2

    const v2, 0x7fffffff

    and-int v11, v0, v2

    .line 322
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v2, v0

    rem-int v2, v11, v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 324
    iget v2, v0, Lsf;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lsf;->h:I

    if-ne v2, v11, :cond_0

    iget-wide v2, v0, Lsf;->f:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v0

    .line 327
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 329
    :cond_1
    iget v4, p0, Lsg;->c:I

    .line 330
    iget-object v0, p0, Lsg;->d:Lrw;

    invoke-virtual {v0, v1}, Lrw;->a(I)Lrw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrw;->a(J)V

    .line 331
    iget v0, p0, Lsg;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lsg;->c:I

    .line 332
    new-instance v0, Lsf;

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v9, p1

    invoke-direct/range {v3 .. v11}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->a(Lsf;)Lsf;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;)I
    .locals 12

    .line 417
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x80

    add-int/2addr v0, v1

    const v2, 0x7fffffff

    and-int v11, v0, v2

    .line 418
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v2, v0

    rem-int v2, v11, v2

    aget-object v0, v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 420
    iget v2, v0, Lsf;->b:I

    if-ne v2, v1, :cond_0

    iget v2, v0, Lsf;->h:I

    if-ne v2, v11, :cond_0

    iget-object v2, v0, Lsf;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    iget p1, v0, Lsf;->a:I

    return p1

    .line 423
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 425
    :cond_1
    new-instance v0, Lsf;

    iget v4, p0, Lsg;->h:I

    const/16 v5, 0x80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v3, v0

    move-object v8, p1

    invoke-direct/range {v3 .. v11}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->b(Lsf;)I

    move-result p1

    return p1
.end method

.method b(ILjava/lang/String;)Lsf;
    .locals 11

    .line 385
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    const v1, 0x7fffffff

    and-int v10, v0, v1

    .line 386
    iget-object v0, p0, Lsg;->g:[Lsf;

    array-length v1, v0

    rem-int v1, v10, v1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 388
    iget v1, v0, Lsf;->b:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Lsf;->h:I

    if-ne v1, v10, :cond_0

    iget-object v1, v0, Lsf;->e:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 391
    :cond_0
    iget-object v0, v0, Lsf;->i:Lsf;

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lsg;->d:Lrw;

    invoke-virtual {p0, p2}, Lsg;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lrw;->b(II)Lrw;

    .line 394
    new-instance v0, Lsf;

    iget v3, p0, Lsg;->c:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lsg;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v2, v0

    move v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v10}, Lsf;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v0}, Lsg;->a(Lsf;)Lsf;

    move-result-object p1

    return-object p1
.end method
