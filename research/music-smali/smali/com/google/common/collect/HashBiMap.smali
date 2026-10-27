.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "HashBiMap.java"

# interfaces
.implements Lcom/google/common/collect/i;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$b;,
        Lcom/google/common/collect/HashBiMap$InverseEntrySet;,
        Lcom/google/common/collect/HashBiMap$a;,
        Lcom/google/common/collect/HashBiMap$EntrySet;,
        Lcom/google/common/collect/HashBiMap$ValueSet;,
        Lcom/google/common/collect/HashBiMap$KeySet;,
        Lcom/google/common/collect/HashBiMap$View;
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
        "Lcom/google/common/collect/i<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ABSENT:I = -0x1

.field private static final ENDPOINT:I = -0x2


# instance fields
.field transient a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field transient b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field transient c:I

.field transient d:I

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient firstInInsertionOrder:I

.field private transient hashTableKToV:[I

.field private transient hashTableVToK:[I

.field private transient inverse:Lcom/google/common/collect/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/i<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient lastInInsertionOrder:I

.field private transient nextInBucketKToV:[I

.field private transient nextInBucketVToK:[I

.field private transient nextInInsertionOrder:[I

.field private transient prevInInsertionOrder:[I

.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/google/common/collect/HashBiMap;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    return p0
.end method

.method private a(III)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 564
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    .line 565
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->f(II)V

    .line 566
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->g(II)V

    .line 568
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget p2, p2, p1

    .line 569
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget p3, p3, p1

    .line 570
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 572
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->h(II)V

    .line 573
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/lit8 p3, p2, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, p3

    .line 574
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    add-int/lit8 p3, p2, -0x1

    aput-object v1, p1, p3

    sub-int/2addr p2, v0

    .line 575
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 576
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void
.end method

.method private a(ILjava/lang/Object;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 461
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    .line 462
    invoke-static {p2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v1

    .line 463
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)I

    move-result v2

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 466
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->b(II)V

    .line 467
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p1, p3, :cond_2

    move p1, v2

    goto :goto_1

    .line 471
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value already present in map: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 475
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p3, p3, p1

    invoke-static {p3}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->g(II)V

    .line 476
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p2, p3, p1

    .line 477
    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->e(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->a(ILjava/lang/Object;Z)V

    return-void
.end method

.method private static a([II)[I
    .locals 2

    .line 141
    array-length v0, p0

    .line 142
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, -0x1

    .line 143
    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private b(ILjava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 486
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    .line 487
    invoke-static {p2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v1

    .line 488
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)I

    move-result v2

    .line 490
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    const/4 v4, -0x2

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 494
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget p3, p3, v2

    .line 495
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v0, v0, v2

    .line 496
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->a(II)V

    .line 497
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p1, v1, :cond_3

    move p1, v2

    goto :goto_1

    .line 501
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key already present in map: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move p3, v3

    move v0, v4

    :cond_3
    :goto_1
    if-ne p3, p1, :cond_4

    .line 505
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget p3, p3, p1

    goto :goto_2

    .line 506
    :cond_4
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p3, v1, :cond_5

    move p3, v2

    :cond_5
    :goto_2
    if-ne v0, p1, :cond_6

    .line 511
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v2, v0, p1

    goto :goto_3

    .line 512
    :cond_6
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v0

    .line 516
    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v0, v0, p1

    .line 517
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v1, p1

    .line 518
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 520
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->f(II)V

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 522
    invoke-static {p2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->d(II)V

    .line 525
    invoke-direct {p0, p3, p1}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 526
    invoke-direct {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->c(II)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->b(ILjava/lang/Object;Z)V

    return-void
.end method

.method private static b(I)[I
    .locals 1

    .line 134
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 135
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/HashBiMap;)[I
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    return-object p0
.end method

.method private c(I)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 157
    array-length v0, v0

    .line 158
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->a(II)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    .line 164
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 169
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/z;->a(ID)I

    move-result p1

    .line 170
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    .line 171
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    const/4 p1, 0x0

    .line 173
    :goto_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ge p1, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 175
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result v0

    .line 176
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 177
    aput p1, v2, v0

    .line 179
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 180
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 182
    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 367
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    goto :goto_0

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 372
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    goto :goto_1

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aput p1, v0, p2

    :goto_1
    return-void
.end method

.method private d(I)I
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method private d(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 383
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->a(Z)V

    .line 384
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result p2

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v1, p2

    aput v2, v0, p1

    .line 386
    aput p1, v1, p2

    return-void
.end method

.method private e(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 394
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->a(Z)V

    .line 395
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result p2

    .line 396
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v2, v1, p2

    aput v2, v0, p1

    .line 397
    aput p1, v1, p2

    return-void
.end method

.method private f(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 405
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    .line 406
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result p2

    .line 408
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    .line 409
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v3, v2, p1

    aput v3, v1, p2

    .line 410
    aput v0, v2, p1

    return-void

    .line 414
    :cond_1
    aget p2, v1, p2

    .line 415
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v1, p2

    :goto_1
    move v4, v1

    move v1, p2

    move p2, v4

    if-eq p2, v0, :cond_3

    if-ne p2, p1, :cond_2

    .line 419
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v2, p2, p1

    aput v2, p2, v1

    .line 420
    aput v0, p2, p1

    return-void

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v1, p2

    goto :goto_1

    .line 425
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to find entry with key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private g(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 433
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/o;->a(Z)V

    .line 434
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result p2

    .line 436
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    .line 437
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v3, v2, p1

    aput v3, v1, p2

    .line 438
    aput v0, v2, p1

    return-void

    .line 442
    :cond_1
    aget p2, v1, p2

    .line 443
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v1, v1, p2

    :goto_1
    move v4, v1

    move v1, p2

    move p2, v4

    if-eq p2, v0, :cond_3

    if-ne p2, p1, :cond_2

    .line 447
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, p2, p1

    aput v2, p2, v1

    .line 448
    aput v0, p2, p1

    return-void

    .line 445
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v1, v1, p2

    goto :goto_1

    .line 453
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to find entry with value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method private h(II)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v0, v0, p1

    .line 598
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget v1, v1, p1

    .line 599
    invoke-direct {p0, v0, p2}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 600
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 602
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 603
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v3, v2, p1

    .line 605
    aput-object v1, v0, p2

    .line 606
    aput-object v3, v2, p2

    .line 609
    invoke-static {v1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 610
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result v0

    .line 611
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    .line 612
    aput p2, v1, v0

    goto :goto_1

    .line 614
    :cond_1
    aget v0, v1, v0

    .line 615
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v1, v0

    :goto_0
    move v4, v1

    move v1, v0

    move v0, v4

    if-ne v0, p1, :cond_4

    .line 619
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aput p2, v0, v1

    .line 625
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v0, p1

    aput v1, v0, p2

    const/4 v1, -0x1

    .line 626
    aput v1, v0, p1

    .line 629
    invoke-static {v3}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 630
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result v0

    .line 631
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    aget v3, v2, v0

    if-ne v3, p1, :cond_2

    .line 632
    aput p2, v2, v0

    goto :goto_3

    .line 634
    :cond_2
    aget v0, v2, v0

    .line 635
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, v2, v0

    :goto_2
    move v4, v2

    move v2, v0

    move v0, v4

    if-ne v0, p1, :cond_3

    .line 639
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aput p2, v0, v2

    .line 645
    :goto_3
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, v0, p1

    aput v2, v0, p2

    .line 646
    aput v1, v0, p1

    return-void

    .line 637
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    aget v2, v2, v0

    goto :goto_2

    .line 617
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    aget v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 1

    .line 197
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method a(Ljava/lang/Object;I)I
    .locals 6

    .line 204
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method a(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I
    .locals 0

    .line 222
    invoke-direct {p0, p2}, Lcom/google/common/collect/HashBiMap;->d(I)I

    move-result p2

    aget p2, p3, p2

    :goto_0
    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 223
    aget-object p3, p5, p2

    invoke-static {p3, p1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return p2

    .line 222
    :cond_0
    aget p2, p4, p2

    goto :goto_0

    :cond_1
    return p3
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 271
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 272
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 274
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 275
    invoke-static {p1, p2}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 278
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->a(ILjava/lang/Object;Z)V

    return-object p1

    .line 283
    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v1

    .line 284
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    if-eq v3, v2, :cond_4

    .line 287
    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/HashBiMap;->b(II)V

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    move p3, v4

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Value already present: %s"

    .line 290
    invoke-static {p3, v2, p2}, Lcom/google/common/base/o;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 293
    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v4

    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->c(I)V

    .line 294
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p1, p3, v2

    .line 295
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p2, p1, v2

    .line 297
    invoke-direct {p0, v2, v0}, Lcom/google/common/collect/HashBiMap;->d(II)V

    .line 298
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->e(II)V

    .line 300
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 301
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 p2, -0x2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 302
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 303
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lcom/google/common/collect/HashBiMap$ValueSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$ValueSet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->valueSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method a(I)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->a(II)V

    return-void
.end method

.method a(II)V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->a(III)V

    return-void
.end method

.method b(Ljava/lang/Object;)I
    .locals 1

    .line 209
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method b(Ljava/lang/Object;I)I
    .locals 6

    .line 217
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    iget-object v4, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget-object v5, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I[I[I[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method b(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .line 316
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 317
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 319
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 320
    invoke-static {p1, p2}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 323
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/google/common/collect/HashBiMap;->b(ILjava/lang/Object;Z)V

    return-object p1

    .line 328
    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 329
    invoke-static {p2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v3

    .line 330
    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz p3, :cond_2

    if-eq v4, v2, :cond_4

    .line 333
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    aget v1, p3, v4

    .line 334
    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->a(II)V

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    move p3, v5

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    const-string v2, "Key already present: %s"

    .line 337
    invoke-static {p3, v2, p2}, Lcom/google/common/base/o;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 344
    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v5

    invoke-direct {p0, p3}, Lcom/google/common/collect/HashBiMap;->c(I)V

    .line 345
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p2, p3, v2

    .line 346
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 348
    invoke-direct {p0, v2, v3}, Lcom/google/common/collect/HashBiMap;->d(II)V

    .line 349
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->e(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_5

    .line 351
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    aget p1, p1, v1

    .line 353
    :goto_2
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 354
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 355
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 356
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method b(II)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/common/collect/HashBiMap;->a(III)V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableKToV:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 654
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->hashTableVToK:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 655
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketKToV:[I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v3, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 656
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInBucketVToK:[I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v3, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 657
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->prevInInsertionOrder:[I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v3, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 658
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->nextInInsertionOrder:[I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v3, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 659
    iput v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v0, -0x2

    .line 660
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->firstInInsertionOrder:I

    .line 661
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->lastInInsertionOrder:I

    .line 662
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;)I

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
    .locals 1

    .line 247
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;)I

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

    .line 811
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Lcom/google/common/collect/HashBiMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$EntrySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->entrySet:Ljava/util/Set;

    :cond_0
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

    .line 253
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
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

    .line 739
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Lcom/google/common/collect/HashBiMap$KeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$KeySet;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 533
    invoke-static {p1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;)I

    move-result v0

    .line 534
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 539
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->a(II)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    return v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
