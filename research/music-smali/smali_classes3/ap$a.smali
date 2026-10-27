.class Lap$a;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Las;

.field b:[F

.field c:[D

.field d:[F

.field e:[F

.field f:[F

.field g:[F

.field h:I

.field i:Lam;

.field j:[D

.field k:[D

.field l:F

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Las;

    invoke-direct {v0}, Las;-><init>()V

    iput-object v0, p0, Lap$a;->a:Las;

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lap$a;->n:I

    const/4 v0, 0x1

    .line 305
    iput v0, p0, Lap$a;->o:I

    const/4 v0, 0x2

    .line 306
    iput v0, p0, Lap$a;->p:I

    .line 321
    iput p1, p0, Lap$a;->h:I

    .line 322
    iput p3, p0, Lap$a;->m:I

    .line 323
    iget-object p3, p0, Lap$a;->a:Las;

    invoke-virtual {p3, p1, p2}, Las;->a(ILjava/lang/String;)V

    .line 324
    new-array p1, p4, [F

    iput-object p1, p0, Lap$a;->b:[F

    .line 325
    new-array p1, p4, [D

    iput-object p1, p0, Lap$a;->c:[D

    .line 326
    new-array p1, p4, [F

    iput-object p1, p0, Lap$a;->d:[F

    .line 327
    new-array p1, p4, [F

    iput-object p1, p0, Lap$a;->e:[F

    .line 328
    new-array p1, p4, [F

    iput-object p1, p0, Lap$a;->f:[F

    .line 329
    new-array p1, p4, [F

    iput-object p1, p0, Lap$a;->g:[F

    return-void
.end method


# virtual methods
.method public a(F)D
    .locals 9

    .line 333
    iget-object v0, p0, Lap$a;->i:Lam;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    float-to-double v4, p1

    .line 334
    iget-object v6, p0, Lap$a;->j:[D

    invoke-virtual {v0, v4, v5, v6}, Lam;->a(D[D)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lap$a;->j:[D

    iget-object v4, p0, Lap$a;->e:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v3

    .line 337
    iget-object v4, p0, Lap$a;->f:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v2

    .line 338
    iget-object v4, p0, Lap$a;->b:[F

    aget v4, v4, v3

    float-to-double v4, v4

    aput-wide v4, v0, v1

    .line 341
    :goto_0
    iget-object v0, p0, Lap$a;->j:[D

    aget-wide v3, v0, v3

    .line 342
    aget-wide v5, v0, v2

    .line 343
    iget-object v0, p0, Lap$a;->a:Las;

    float-to-double v7, p1

    invoke-virtual {v0, v7, v8, v5, v6}, Las;->a(DD)D

    move-result-wide v5

    .line 344
    iget-object p1, p0, Lap$a;->j:[D

    aget-wide v0, p1, v1

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    return-wide v3
.end method

.method public a(IIFFFF)V
    .locals 5

    .line 373
    iget-object v0, p0, Lap$a;->c:[D

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    aput-wide v1, v0, p1

    .line 374
    iget-object p2, p0, Lap$a;->d:[F

    aput p3, p2, p1

    .line 375
    iget-object p2, p0, Lap$a;->e:[F

    aput p4, p2, p1

    .line 376
    iget-object p2, p0, Lap$a;->f:[F

    aput p5, p2, p1

    .line 377
    iget-object p2, p0, Lap$a;->b:[F

    aput p6, p2, p1

    return-void
.end method

.method public b(F)V
    .locals 9

    .line 381
    iput p1, p0, Lap$a;->l:F

    .line 382
    iget-object p1, p0, Lap$a;->c:[D

    array-length p1, p1

    const/4 v0, 0x3

    filled-new-array {p1, v0}, [I

    move-result-object p1

    const-class v0, D

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    .line 383
    iget-object v0, p0, Lap$a;->b:[F

    array-length v1, v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [D

    iput-object v1, p0, Lap$a;->j:[D

    .line 384
    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [D

    iput-object v0, p0, Lap$a;->k:[D

    .line 385
    iget-object v0, p0, Lap$a;->c:[D

    const/4 v1, 0x0

    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    .line 386
    iget-object v0, p0, Lap$a;->a:Las;

    iget-object v3, p0, Lap$a;->d:[F

    aget v3, v3, v1

    invoke-virtual {v0, v5, v6, v3}, Las;->a(DF)V

    .line 388
    :cond_0
    iget-object v0, p0, Lap$a;->c:[D

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 389
    aget-wide v5, v0, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_1

    .line 390
    iget-object v0, p0, Lap$a;->a:Las;

    iget-object v5, p0, Lap$a;->d:[F

    aget v3, v5, v3

    invoke-virtual {v0, v7, v8, v3}, Las;->a(DF)V

    :cond_1
    move v0, v1

    .line 393
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 394
    aget-object v3, p1, v0

    iget-object v5, p0, Lap$a;->e:[F

    aget v5, v5, v0

    float-to-double v5, v5

    aput-wide v5, v3, v1

    .line 395
    aget-object v3, p1, v0

    iget-object v5, p0, Lap$a;->f:[F

    aget v5, v5, v0

    float-to-double v5, v5

    aput-wide v5, v3, v4

    .line 396
    aget-object v3, p1, v0

    iget-object v5, p0, Lap$a;->b:[F

    aget v5, v5, v0

    float-to-double v5, v5

    aput-wide v5, v3, v2

    .line 397
    iget-object v3, p0, Lap$a;->a:Las;

    iget-object v5, p0, Lap$a;->c:[D

    aget-wide v5, v5, v0

    iget-object v7, p0, Lap$a;->d:[F

    aget v7, v7, v0

    invoke-virtual {v3, v5, v6, v7}, Las;->a(DF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_2
    iget-object v0, p0, Lap$a;->a:Las;

    invoke-virtual {v0}, Las;->a()V

    .line 402
    iget-object v0, p0, Lap$a;->c:[D

    array-length v2, v0

    if-le v2, v4, :cond_3

    .line 403
    invoke-static {v1, v0, p1}, Lam;->a(I[D[[D)Lam;

    move-result-object p1

    iput-object p1, p0, Lap$a;->i:Lam;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lap$a;->i:Lam;

    :goto_1
    return-void
.end method
