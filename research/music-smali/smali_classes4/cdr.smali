.class public Lcdr;
.super Ljava/lang/Object;
.source "SevenZOutputFile.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcdr$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/RandomAccessFile;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcdn;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private final d:Ljava/util/zip/CRC32;

.field private final e:Ljava/util/zip/CRC32;

.field private f:J

.field private g:Z

.field private h:Lcdx;

.field private i:[Lcdx;

.field private j:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lcdq;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcdn;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcdr;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcdr;->c:I

    .line 49
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lcdr;->d:Ljava/util/zip/CRC32;

    .line 50
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Lcdr;->e:Ljava/util/zip/CRC32;

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lcdr;->f:J

    .line 52
    iput-boolean v0, p0, Lcdr;->g:Z

    .line 55
    new-instance v0, Lcdq;

    sget-object v1, Lcdp;->LZMA2:Lcdp;

    invoke-direct {v0, v1}, Lcdq;-><init>(Lcdp;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcdr;->j:Ljava/lang/Iterable;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcdr;->k:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    .line 67
    iget-object p1, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method static synthetic a(Lcdr;J)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcdr;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcdr;->f:J

    return-wide v0
.end method

.method private a(Lcdn;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcdn;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lcdq;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-virtual {p1}, Lcdn;->q()Ljava/lang/Iterable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 321
    iget-object p1, p0, Lcdr;->j:Ljava/lang/Iterable;

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcdr;)Ljava/util/zip/CRC32;
    .locals 0

    .line 45
    iget-object p0, p0, Lcdr;->d:Ljava/util/zip/CRC32;

    return-object p0
.end method

.method private a(Lcdq;Ljava/io/OutputStream;)V
    .locals 3

    .line 421
    invoke-virtual {p1}, Lcdq;->a()Lcdp;

    move-result-object v0

    invoke-virtual {v0}, Lcdp;->a()[B

    move-result-object v0

    .line 422
    invoke-virtual {p1}, Lcdq;->a()Lcdp;

    move-result-object v1

    invoke-static {v1}, Lcdj;->a(Lcdp;)Lcdi;

    move-result-object v1

    invoke-virtual {p1}, Lcdq;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcdi;->b(Ljava/lang/Object;)[B

    move-result-object p1

    .line 425
    array-length v1, v0

    .line 426
    array-length v2, p1

    if-lez v2, :cond_0

    or-int/lit8 v1, v1, 0x20

    .line 429
    :cond_0
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 430
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 432
    array-length v0, p1

    if-lez v0, :cond_1

    .line 433
    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 434
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return-void
.end method

.method private a(Ljava/io/DataOutput;)V
    .locals 1

    const/4 v0, 0x1

    .line 325
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/4 v0, 0x4

    .line 327
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 328
    invoke-direct {p0, p1}, Lcdr;->b(Ljava/io/DataOutput;)V

    .line 329
    invoke-direct {p0, p1}, Lcdr;->f(Ljava/io/DataOutput;)V

    const/4 v0, 0x0

    .line 330
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private a(Ljava/io/DataOutput;J)V
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x80

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    const-wide/16 v4, 0x1

    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v7, v6, 0x7

    shl-long/2addr v4, v7

    cmp-long v4, p2, v4

    if-gez v4, :cond_0

    int-to-long v1, v1

    mul-int/lit8 v4, v0, 0x8

    ushr-long v4, p2, v4

    or-long/2addr v1, v4

    long-to-int v1, v1

    goto :goto_1

    :cond_0
    or-int/2addr v1, v2

    ushr-int/lit8 v2, v2, 0x1

    move v0, v6

    goto :goto_0

    .line 709
    :cond_1
    :goto_1
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    :goto_2
    if-lez v0, :cond_2

    const-wide/16 v1, 0xff

    and-long/2addr v1, p2

    long-to-int v1, v1

    .line 711
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    ushr-long/2addr p2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private a(Ljava/io/DataOutput;Lcdn;)V
    .locals 5

    .line 405
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 407
    invoke-direct {p0, p2}, Lcdr;->a(Lcdn;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcdq;

    add-int/lit8 v2, v2, 0x1

    .line 409
    invoke-direct {p0, v3, v0}, Lcdr;->a(Lcdq;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    int-to-long v3, v2

    .line 412
    invoke-direct {p0, p1, v3, v4}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 413
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/io/DataOutput;->write([B)V

    :goto_1
    add-int/lit8 p2, v2, -0x1

    if-ge v1, p2, :cond_1

    add-int/lit8 p2, v1, 0x1

    int-to-long v3, p2

    .line 415
    invoke-direct {p0, p1, v3, v4}, Lcdr;->a(Ljava/io/DataOutput;J)V

    int-to-long v0, v1

    .line 416
    invoke-direct {p0, p1, v0, v1}, Lcdr;->a(Ljava/io/DataOutput;J)V

    move v1, p2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V
    .locals 6

    const/4 v0, 0x7

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    if-ge v2, p3, :cond_1

    .line 720
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    shl-int/2addr v5, v3

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 722
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    move v3, v0

    move v4, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eq v3, v0, :cond_2

    .line 728
    invoke-interface {p1, v4}, Ljava/io/DataOutput;->write(I)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcdr;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 45
    iget-object p0, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private b(Ljava/io/DataOutput;)V
    .locals 1

    .line 334
    iget v0, p0, Lcdr;->c:I

    if-lez v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lcdr;->c(Ljava/io/DataOutput;)V

    .line 336
    invoke-direct {p0, p1}, Lcdr;->d(Ljava/io/DataOutput;)V

    .line 339
    :cond_0
    invoke-direct {p0, p1}, Lcdr;->e(Ljava/io/DataOutput;)V

    const/4 v0, 0x0

    .line 341
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private c()Ljava/io/OutputStream;
    .locals 1

    .line 271
    iget-object v0, p0, Lcdr;->h:Lcdx;

    if-nez v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcdr;->d()Lcdx;

    move-result-object v0

    iput-object v0, p0, Lcdr;->h:Lcdx;

    .line 274
    :cond_0
    iget-object v0, p0, Lcdr;->h:Lcdx;

    return-object v0
.end method

.method static synthetic c(Lcdr;)Ljava/util/zip/CRC32;
    .locals 0

    .line 45
    iget-object p0, p0, Lcdr;->e:Ljava/util/zip/CRC32;

    return-object p0
.end method

.method private c(Ljava/io/DataOutput;)V
    .locals 4

    const/4 v0, 0x6

    .line 345
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const-wide/16 v0, 0x0

    .line 347
    invoke-direct {p0, p1, v0, v1}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 348
    iget v0, p0, Lcdr;->c:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcdr;->a(Ljava/io/DataOutput;J)V

    const/16 v0, 0x9

    .line 350
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 351
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcdn;

    .line 352
    invoke-virtual {v1}, Lcdn;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {v1}, Lcdn;->p()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 357
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/4 v0, 0x1

    .line 358
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 359
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcdn;

    .line 360
    invoke-virtual {v1}, Lcdn;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-virtual {v1}, Lcdn;->n()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 365
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method static synthetic d(Lcdr;)J
    .locals 4

    .line 45
    iget-wide v0, p0, Lcdr;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcdr;->f:J

    return-wide v0
.end method

.method private d()Lcdx;
    .locals 5

    .line 278
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Lcdr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcdr$a;-><init>(Lcdr;Lcdr$1;)V

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    iget-object v2, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    invoke-direct {p0, v2}, Lcdr;->a(Lcdn;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcdq;

    if-nez v4, :cond_0

    .line 287
    new-instance v4, Lcdx;

    invoke-direct {v4, v0}, Lcdx;-><init>(Ljava/io/OutputStream;)V

    .line 288
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v4

    .line 291
    :cond_0
    invoke-virtual {v3}, Lcdq;->a()Lcdp;

    move-result-object v4

    invoke-virtual {v3}, Lcdq;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v4, v3}, Lcdj;->a(Ljava/io/OutputStream;Lcdp;Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object v0

    const/4 v4, 0x0

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcdx;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcdx;

    iput-object v1, p0, Lcdr;->i:[Lcdx;

    .line 297
    :cond_2
    new-instance v1, Lcdr$1;

    invoke-direct {v1, p0, v0}, Lcdr$1;-><init>(Lcdr;Ljava/io/OutputStream;)V

    return-object v1

    .line 279
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current 7z entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Ljava/io/DataOutput;)V
    .locals 8

    const/4 v0, 0x7

    .line 369
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/16 v0, 0xb

    .line 371
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 372
    iget v0, p0, Lcdr;->c:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcdr;->a(Ljava/io/DataOutput;J)V

    const/4 v0, 0x0

    .line 373
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 374
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    .line 375
    invoke-virtual {v2}, Lcdn;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    invoke-direct {p0, p1, v2}, Lcdr;->a(Ljava/io/DataOutput;Lcdn;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    .line 380
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 381
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    .line 382
    invoke-virtual {v2}, Lcdn;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    iget-object v3, p0, Lcdr;->k:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    if-eqz v3, :cond_3

    .line 385
    array-length v4, v3

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_3

    aget-wide v6, v3, v5

    .line 386
    invoke-direct {p0, p1, v6, v7}, Lcdr;->a(Ljava/io/DataOutput;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 389
    :cond_3
    invoke-virtual {v2}, Lcdn;->o()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcdr;->a(Ljava/io/DataOutput;J)V

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    .line 393
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    const/4 v1, 0x1

    .line 394
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 395
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    .line 396
    invoke-virtual {v2}, Lcdn;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 397
    invoke-virtual {v2}, Lcdn;->m()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_3

    .line 401
    :cond_6
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private e(Ljava/io/DataOutput;)V
    .locals 1

    const/16 v0, 0x8

    .line 439
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    const/4 v0, 0x0

    .line 449
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private f(Ljava/io/DataOutput;)V
    .locals 2

    const/4 v0, 0x5

    .line 453
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 455
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 457
    invoke-direct {p0, p1}, Lcdr;->g(Ljava/io/DataOutput;)V

    .line 458
    invoke-direct {p0, p1}, Lcdr;->h(Ljava/io/DataOutput;)V

    .line 459
    invoke-direct {p0, p1}, Lcdr;->i(Ljava/io/DataOutput;)V

    .line 460
    invoke-direct {p0, p1}, Lcdr;->j(Ljava/io/DataOutput;)V

    .line 461
    invoke-direct {p0, p1}, Lcdr;->k(Ljava/io/DataOutput;)V

    .line 462
    invoke-direct {p0, p1}, Lcdr;->l(Ljava/io/DataOutput;)V

    .line 463
    invoke-direct {p0, p1}, Lcdr;->m(Ljava/io/DataOutput;)V

    .line 464
    invoke-direct {p0, p1}, Lcdr;->n(Ljava/io/DataOutput;)V

    const/4 v0, 0x0

    .line 465
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method private g(Ljava/io/DataOutput;)V
    .locals 4

    .line 470
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcdn;

    .line 471
    invoke-virtual {v1}, Lcdn;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    const/16 v0, 0xe

    .line 477
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 478
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 479
    :goto_1
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 480
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcdn;

    invoke-virtual {v1}, Lcdn;->b()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 482
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 483
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 484
    iget-object v3, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcdr;->a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 485
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 486
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 487
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 488
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_3
    return-void
.end method

.method private h(Ljava/io/DataOutput;)V
    .locals 7

    .line 495
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 496
    iget-object v2, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcdn;

    .line 497
    invoke-virtual {v4}, Lcdn;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 498
    invoke-virtual {v4}, Lcdn;->c()Z

    move-result v4

    add-int/lit8 v5, v3, 0x1

    xor-int/lit8 v6, v4, 0x1

    .line 499
    invoke-virtual {v0, v3, v6}, Ljava/util/BitSet;->set(IZ)V

    xor-int/lit8 v3, v4, 0x1

    or-int/2addr v1, v3

    move v3, v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/16 v1, 0xf

    .line 504
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 505
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 506
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 507
    invoke-direct {p0, v2, v0, v3}, Lcdr;->a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 508
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 509
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 510
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 511
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_2
    return-void
.end method

.method private i(Ljava/io/DataOutput;)V
    .locals 6

    .line 517
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 519
    iget-object v2, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcdn;

    .line 520
    invoke-virtual {v4}, Lcdn;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 521
    invoke-virtual {v4}, Lcdn;->d()Z

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 522
    invoke-virtual {v0, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    or-int/2addr v1, v4

    move v3, v5

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/16 v1, 0x10

    .line 527
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 528
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 529
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 530
    invoke-direct {p0, v2, v0, v3}, Lcdr;->a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    .line 531
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 532
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 533
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 534
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_2
    return-void
.end method

.method private j(Ljava/io/DataOutput;)V
    .locals 6

    const/16 v0, 0x11

    .line 539
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 541
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 542
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    .line 543
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 544
    iget-object v3, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcdn;

    .line 545
    invoke-virtual {v4}, Lcdn;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-16LE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 546
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 549
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 550
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 551
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method private k(Ljava/io/DataOutput;)V
    .locals 6

    .line 556
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcdn;

    .line 557
    invoke-virtual {v3}, Lcdn;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_6

    const/16 v0, 0x12

    .line 562
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 564
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 565
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 566
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 567
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 568
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 569
    :goto_1
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 570
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcdn;

    invoke-virtual {v5}, Lcdn;->e()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 572
    :cond_2
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcdr;->a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 574
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 576
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 577
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    .line 578
    invoke-virtual {v2}, Lcdn;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 579
    invoke-virtual {v2}, Lcdn;->f()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcdn;->b(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_3

    .line 583
    :cond_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 584
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 585
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 586
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_6
    return-void
.end method

.method private l(Ljava/io/DataOutput;)V
    .locals 6

    .line 592
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcdn;

    .line 593
    invoke-virtual {v3}, Lcdn;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_6

    const/16 v0, 0x13

    .line 598
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 600
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 601
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 602
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 603
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 604
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 605
    :goto_1
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 606
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcdn;

    invoke-virtual {v5}, Lcdn;->i()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 608
    :cond_2
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcdr;->a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 610
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 612
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 613
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    .line 614
    invoke-virtual {v2}, Lcdn;->i()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 615
    invoke-virtual {v2}, Lcdn;->j()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcdn;->b(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_3

    .line 619
    :cond_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 620
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 621
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 622
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_6
    return-void
.end method

.method private m(Ljava/io/DataOutput;)V
    .locals 6

    .line 628
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcdn;

    .line 629
    invoke-virtual {v3}, Lcdn;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_6

    const/16 v0, 0x14

    .line 634
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 636
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 637
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 638
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 639
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 640
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 641
    :goto_1
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 642
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcdn;

    invoke-virtual {v5}, Lcdn;->g()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 644
    :cond_2
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcdr;->a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 646
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 648
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 649
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    .line 650
    invoke-virtual {v2}, Lcdn;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 651
    invoke-virtual {v2}, Lcdn;->h()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcdn;->b(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_3

    .line 655
    :cond_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 656
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 657
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 658
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_6
    return-void
.end method

.method private n(Ljava/io/DataOutput;)V
    .locals 6

    .line 664
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcdn;

    .line 665
    invoke-virtual {v3}, Lcdn;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_6

    const/16 v0, 0x15

    .line 670
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write(I)V

    .line 672
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 673
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 674
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_3

    .line 675
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 676
    new-instance v2, Ljava/util/BitSet;

    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/BitSet;-><init>(I)V

    move v4, v1

    .line 677
    :goto_1
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 678
    iget-object v5, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcdn;

    invoke-virtual {v5}, Lcdn;->k()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 680
    :cond_2
    iget-object v4, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcdr;->a(Ljava/io/DataOutput;Ljava/util/BitSet;I)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    .line 682
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    .line 684
    :goto_2
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 685
    iget-object v1, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcdn;

    .line 686
    invoke-virtual {v2}, Lcdn;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 687
    invoke-virtual {v2}, Lcdn;->l()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_3

    .line 690
    :cond_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 691
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 692
    array-length v1, v0

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcdr;->a(Ljava/io/DataOutput;J)V

    .line 693
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)Lcdn;
    .locals 3

    .line 128
    new-instance v0, Lcdn;

    invoke-direct {v0}, Lcdn;-><init>()V

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcdn;->b(Z)V

    .line 130
    invoke-virtual {v0, p2}, Lcdn;->a(Ljava/lang/String;)V

    .line 131
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Lcdn;->a(Ljava/util/Date;)V

    return-object v0
.end method

.method public a()V
    .locals 9

    .line 154
    iget-object v0, p0, Lcdr;->h:Lcdx;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcdx;->flush()V

    .line 156
    iget-object v0, p0, Lcdr;->h:Lcdx;

    invoke-virtual {v0}, Lcdx;->close()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcdn;

    .line 160
    iget-wide v3, p0, Lcdr;->f:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 161
    invoke-virtual {v0, v2}, Lcdn;->a(Z)V

    .line 162
    iget v1, p0, Lcdr;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcdr;->c:I

    .line 163
    iget-object v1, p0, Lcdr;->h:Lcdx;

    invoke-virtual {v1}, Lcdx;->a()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcdn;->c(J)V

    .line 164
    iget-wide v7, p0, Lcdr;->f:J

    invoke-virtual {v0, v7, v8}, Lcdn;->d(J)V

    .line 165
    iget-object v1, p0, Lcdr;->d:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcdn;->a(J)V

    .line 166
    iget-object v1, p0, Lcdr;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcdn;->b(J)V

    .line 167
    invoke-virtual {v0, v2}, Lcdn;->c(Z)V

    .line 168
    iget-object v1, p0, Lcdr;->i:[Lcdx;

    if-eqz v1, :cond_3

    .line 169
    array-length v1, v1

    new-array v1, v1, [J

    .line 170
    :goto_0
    iget-object v2, p0, Lcdr;->i:[Lcdx;

    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 171
    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcdx;->a()J

    move-result-wide v7

    aput-wide v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_1
    iget-object v2, p0, Lcdr;->k:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {v0, v3}, Lcdn;->a(Z)V

    .line 177
    invoke-virtual {v0, v5, v6}, Lcdn;->c(J)V

    .line 178
    invoke-virtual {v0, v5, v6}, Lcdn;->d(J)V

    .line 179
    invoke-virtual {v0, v3}, Lcdn;->c(Z)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcdr;->h:Lcdx;

    .line 182
    iput-object v0, p0, Lcdr;->i:[Lcdx;

    .line 183
    iget-object v0, p0, Lcdr;->d:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 184
    iget-object v0, p0, Lcdr;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 185
    iput-wide v5, p0, Lcdr;->f:J

    return-void
.end method

.method public a(Lcdd;)V
    .locals 1

    .line 145
    check-cast p1, Lcdn;

    .line 146
    iget-object v0, p0, Lcdr;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a([BII)V
    .locals 1

    if-lez p3, :cond_0

    .line 215
    invoke-direct {p0}, Lcdr;->c()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 225
    iget-boolean v0, p0, Lcdr;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcdr;->g:Z

    .line 230
    iget-object v0, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 232
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 235
    invoke-direct {p0, v3}, Lcdr;->a(Ljava/io/DataOutput;)V

    .line 236
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 237
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 238
    iget-object v3, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 240
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 243
    iget-object v4, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 244
    iget-object v4, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    sget-object v5, Lcdo;->a:[B

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 246
    iget-object v4, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write(I)V

    .line 247
    iget-object v4, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write(I)V

    .line 250
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v6, 0x20

    sub-long/2addr v0, v6

    .line 252
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    const-wide v0, 0xffffffffL

    .line 253
    array-length v6, v2

    int-to-long v6, v6

    and-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 254
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 255
    invoke-virtual {v3, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 256
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 257
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 258
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 259
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 260
    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 261
    iget-object v1, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 262
    iget-object v1, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "This archive has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcdr;->g:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcdr;->b()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcdr;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method
