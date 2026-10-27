.class public Lafe;
.super Ljava/lang/Object;
.source "ObjectWriterCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafe$a;
    }
.end annotation


# static fields
.field public static final a:Lafe;

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lafe$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected volatile d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lafe;

    invoke-direct {v0}, Lafe;-><init>()V

    sput-object v0, Lafe;->a:Lafe;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lafe;->b:Ljava/util/Map;

    .line 36
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/Predicate;

    const-string v5, "test"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v4, Lrf;

    const-string v5, "applyAsChar"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Lre;

    const-string v5, "applyAsByte"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v4, Lrh;

    const-string v5, "applyAsShort"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ToIntFunction;

    const-string v5, "applyAsInt"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ToLongFunction;

    const-string v5, "applyAsLong"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Lrg;

    const-string v5, "applyAsFloat"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lafe;->b:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lafe$a;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ToDoubleFunction;

    const-string v5, "applyAsDouble"

    invoke-direct {v2, v3, v4, v5}, Lafe$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lafe;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method protected static a(Ljava/lang/Class;Lahq;Lqe;ZLqg;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .line 583
    iget-object v0, p4, Lqg;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p4, Lqg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    iget-object p0, p4, Lqg;->a:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 585
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 587
    :cond_2
    iget-object p2, p2, Lqe;->p:Ljava/lang/String;

    invoke-static {p5, p2}, Laax;->a(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 590
    iget-wide p3, p1, Lahq;->g:J

    const-wide/16 v0, 0x40

    and-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_3

    .line 591
    invoke-static {p0, p5}, Laax;->b(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 592
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 595
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_4

    .line 597
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    goto :goto_1

    :cond_4
    move p4, p3

    :goto_1
    const/16 p5, 0x61

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    if-lt p4, p5, :cond_5

    const/16 v1, 0x7a

    if-le p4, v1, :cond_6

    :cond_5
    const/4 v1, 0x2

    if-le p1, v1, :cond_9

    const/16 v1, 0x41

    if-lt p4, v1, :cond_9

    const/16 v2, 0x5a

    if-gt p4, v2, :cond_9

    .line 601
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v1, :cond_9

    if-gt v3, v2, :cond_9

    .line 603
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    if-lt p4, p5, :cond_7

    .line 605
    aget-char p4, v1, p3

    add-int/lit8 p4, p4, -0x20

    int-to-char p4, p4

    aput-char p4, v1, p3

    goto :goto_2

    .line 607
    :cond_7
    aget-char p4, v1, p3

    add-int/lit8 p4, p4, 0x20

    int-to-char p4, p4

    aput-char p4, v1, p3

    .line 609
    :goto_2
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v1}, Ljava/lang/String;-><init>([C)V

    .line 610
    invoke-static {p0, p3}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_9

    if-eq p1, v0, :cond_8

    .line 612
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 613
    :cond_8
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    move-object p0, p2

    :goto_3
    return-object p0
.end method

.method protected static a(Lqe;Laez;)V
    .locals 4

    .line 625
    iget-object p0, p0, Lqe;->x:[Ljava/lang/Class;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 626
    const-class v3, Lqo;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqo;

    .line 632
    invoke-virtual {p1, v2}, Laez;->a(Lqo;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic a(Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p4

    move-object/from16 v14, p8

    .line 378
    invoke-virtual/range {p1 .. p1}, Lqg;->b()V

    move-wide/from16 v1, p2

    .line 379
    iput-wide v1, v13, Lqg;->e:J

    .line 380
    iget-object v1, v0, Lqe;->z:Ljava/lang/String;

    iput-object v1, v13, Lqg;->b:Ljava/lang/String;

    move-object/from16 v15, p5

    move-object/from16 v11, p6

    move-object/from16 v10, p9

    .line 381
    invoke-virtual {v15, v0, v13, v11, v10}, Lahq;->a(Lqe;Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 382
    iget-boolean v1, v13, Lqg;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    .line 386
    invoke-static/range {v1 .. v6}, Lafe;->a(Ljava/lang/Class;Lahq;Lqe;ZLqg;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 388
    iget-object v1, v0, Lqe;->s:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lqe;->s:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 390
    iget-object v1, v0, Lqe;->s:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 391
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 402
    :cond_3
    iget-wide v4, v0, Lqe;->n:J

    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    iget-object v1, v0, Lqe;->a:Ljava/lang/String;

    .line 403
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 407
    :cond_4
    iget-object v1, v0, Lqe;->r:[Ljava/lang/String;

    if-eqz v1, :cond_7

    move v1, v3

    move v4, v1

    .line 409
    :goto_2
    iget-object v5, v0, Lqe;->r:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 410
    iget-object v5, v0, Lqe;->r:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 411
    iput v1, v13, Lqg;->d:I

    move v4, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    .line 416
    iget v1, v13, Lqg;->d:I

    if-nez v1, :cond_7

    .line 417
    iget-object v1, v0, Lqe;->r:[Ljava/lang/String;

    array-length v1, v1

    iput v1, v13, Lqg;->d:I

    .line 422
    :cond_7
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 424
    invoke-static {v1}, Labo;->d(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 429
    :cond_8
    iget-object v1, v13, Lqg;->h:Ljava/lang/Class;

    const/16 v16, 0x0

    if-eqz v1, :cond_9

    .line 431
    :try_start_0
    iget-object v1, v13, Lqg;->h:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 433
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laem;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 436
    :goto_3
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "create writeUsing Writer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    move-object/from16 v1, v16

    :goto_4
    if-nez v1, :cond_a

    .line 440
    iget-boolean v2, v13, Lqg;->l:Z

    if-eqz v2, :cond_a

    .line 441
    sget-object v1, Lafc$a;->a:Lafc$a;

    :cond_a
    move-object/from16 v17, v1

    .line 445
    iget-wide v0, v0, Lqe;->m:J

    const-wide/high16 v2, 0x40000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_b

    .line 447
    :try_start_1
    iget v5, v13, Lqg;->d:I

    iget-wide v6, v13, Lqg;->e:J

    iget-object v8, v13, Lqg;->b:Ljava/lang/String;

    iget-object v0, v13, Lqg;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, v9

    move-object/from16 p2, v9

    move-object v9, v0

    move-object/from16 v10, p9

    move-object/from16 v11, v17

    :try_start_2
    invoke-virtual/range {v1 .. v11}, Lafe;->b(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Laem;)Labq;

    move-result-object v16
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 p2, v9

    .line 459
    :goto_5
    iget-object v1, v12, Lafe;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 460
    iput-object v0, v12, Lafe;->d:Ljava/lang/Throwable;

    goto :goto_6

    :cond_b
    move-object/from16 p2, v9

    :goto_6
    if-nez v16, :cond_c

    .line 464
    iget v5, v13, Lqg;->d:I

    iget-wide v6, v13, Lqg;->e:J

    iget-object v8, v13, Lqg;->b:Ljava/lang/String;

    iget-object v9, v13, Lqg;->c:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v10, p9

    move-object/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lafe;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Laem;)Labq;

    move-result-object v16

    :cond_c
    move-object/from16 v0, v16

    .line 477
    iget-object v1, v0, Labq;->a:Ljava/lang/String;

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labq;

    if-eqz v1, :cond_d

    .line 479
    invoke-virtual {v1, v0}, Labq;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_d

    move-object/from16 v1, p2

    .line 480
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private synthetic a(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 11

    move-object/from16 v0, p7

    .line 362
    invoke-virtual {p1}, Lqg;->b()V

    .line 363
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v1, p1

    iput-boolean v2, v1, Lqg;->f:Z

    move-object v3, p0

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, p1

    move-object/from16 v10, p8

    .line 364
    invoke-virtual/range {v3 .. v10}, Lafe;->a(Ljava/lang/Class;JLahq;Lqe;Lqg;Ljava/lang/reflect/Field;)Labq;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v2, v1, Labq;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labq;

    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {v2, v1}, Labq;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 369
    iget-object v2, v1, Labq;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private synthetic b(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 8

    .line 340
    invoke-virtual {p1}, Lqg;->b()V

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    move-object/from16 v7, p8

    .line 341
    invoke-virtual/range {v0 .. v7}, Lafe;->a(Ljava/lang/Class;JLahq;Lqe;Lqg;Ljava/lang/reflect/Field;)Labq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v1, v0, Labq;->a:Ljava/lang/String;

    move-object v2, p7

    invoke-interface {p7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$R9UqgVQtSdgkk8h-ZpcwSILDJSg(Lafe;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lafe;->b(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic lambda$eXucZ1sQqaIe31XCBHBVnvdKjpI(Lafe;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lafe;->a(Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic lambda$hFVQ8lnujLNAE77iLj3Sn53UasQ(Lafe;Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lafe;->a(Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$vri6GdQGUFbTgE2yHaYxLyXAZsw(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lafe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Laem;)Labq;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lahq;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Laem;",
            ")",
            "Labq<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v6, p7

    move-object/from16 v11, p9

    const/4 v1, 0x1

    .line 856
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 857
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 858
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v10

    if-nez p10, :cond_0

    if-eqz v0, :cond_0

    move-object/from16 v13, p0

    .line 861
    invoke-virtual {v13, v0, v12}, Lafe;->a(Lahq;Ljava/lang/Class;)Laem;

    move-result-object v1

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p0

    move-object/from16 v14, p10

    :goto_0
    if-eqz v14, :cond_2

    .line 865
    new-instance v15, Laeg;

    const/4 v9, 0x0

    move-object v0, v15

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    move-object v8, v12

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Laeg;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 866
    iput-object v12, v15, Laeg;->B:Ljava/lang/Class;

    .line 867
    sget-object v0, Lafc$a;->a:Lafc$a;

    if-eq v14, v0, :cond_1

    .line 868
    iput-object v14, v15, Laeg;->x:Laem;

    :cond_1
    return-object v15

    :cond_2
    const/4 v1, 0x0

    if-nez p3, :cond_3

    .line 874
    invoke-static {v11, v1}, Laax;->a(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object/from16 v2, p2

    goto :goto_1

    :cond_3
    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 877
    :goto_1
    invoke-static {v2, v11}, Laax;->b(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 879
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_20

    const-class v2, Ljava/lang/Boolean;

    if-ne v12, v2, :cond_4

    goto/16 :goto_e

    .line 883
    :cond_4
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_1f

    const-class v2, Ljava/lang/Integer;

    if-ne v12, v2, :cond_5

    goto/16 :goto_d

    .line 887
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_1e

    const-class v2, Ljava/lang/Float;

    if-ne v12, v2, :cond_6

    goto/16 :goto_c

    .line 891
    :cond_6
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_1d

    const-class v2, Ljava/lang/Double;

    if-ne v12, v2, :cond_7

    goto/16 :goto_b

    .line 895
    :cond_7
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_1a

    const-class v2, Ljava/lang/Long;

    if-ne v12, v2, :cond_8

    goto/16 :goto_9

    .line 903
    :cond_8
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_19

    const-class v2, Ljava/lang/Short;

    if-ne v12, v2, :cond_9

    goto/16 :goto_8

    .line 907
    :cond_9
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_18

    const-class v2, Ljava/lang/Byte;

    if-ne v12, v2, :cond_a

    goto/16 :goto_7

    .line 911
    :cond_a
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v12, v2, :cond_17

    const-class v2, Ljava/lang/Character;

    if-ne v12, v2, :cond_b

    goto/16 :goto_6

    .line 915
    :cond_b
    const-class v2, Ljava/math/BigDecimal;

    if-ne v12, v2, :cond_c

    .line 916
    new-instance v9, Labt;

    move-object v0, v9

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Labt;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v9

    .line 919
    :cond_c
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 920
    invoke-static {v12, v0}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object v0

    if-nez v0, :cond_d

    .line 921
    invoke-static {v12}, Laax;->d(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 923
    invoke-static {v12}, Laax;->e(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 925
    new-instance v10, Lacr;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lacr;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 929
    :cond_d
    const-class v0, Ljava/util/Date;

    if-ne v12, v0, :cond_10

    if-eqz v6, :cond_f

    .line 931
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object v5, v1

    goto :goto_2

    :cond_e
    move-object v5, v0

    goto :goto_2

    :cond_f
    move-object v5, v6

    .line 938
    :goto_2
    new-instance v10, Lacj;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lacj;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 941
    :cond_10
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_11

    .line 942
    new-instance v9, Laek;

    move-object v0, v9

    move-object v1, v3

    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laek;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v9

    .line 945
    :cond_11
    const-class v0, Ljava/util/List;

    if-eq v12, v0, :cond_15

    const-class v0, Ljava/lang/Iterable;

    if-ne v12, v0, :cond_12

    goto :goto_4

    .line 955
    :cond_12
    const-class v0, [Ljava/lang/Float;

    if-eq v12, v0, :cond_14

    const-class v0, [Ljava/lang/Double;

    if-eq v12, v0, :cond_14

    const-class v0, [Ljava/math/BigDecimal;

    if-ne v12, v0, :cond_13

    goto :goto_3

    .line 959
    :cond_13
    new-instance v14, Laeg;

    const/4 v9, 0x0

    move-object v0, v14

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    move-object v8, v12

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Laeg;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 956
    :cond_14
    :goto_3
    new-instance v15, Laec;

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    move-object v0, v15

    move-object v1, v3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, v10

    move-object v9, v12

    move-object v10, v14

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Laec;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v15

    .line 947
    :cond_15
    :goto_4
    instance-of v0, v10, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_16

    .line 948
    move-object v0, v10

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_5

    .line 950
    :cond_16
    const-class v0, Ljava/lang/Object;

    :goto_5
    move-object v2, v0

    .line 952
    new-instance v14, Ladu;

    const/4 v8, 0x0

    move-object v0, v14

    move-object v1, v3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Ladu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v14

    .line 912
    :cond_17
    :goto_6
    new-instance v10, Lacd;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lacd;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 908
    :cond_18
    :goto_7
    new-instance v10, Lado;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lado;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 904
    :cond_19
    :goto_8
    new-instance v10, Lacz;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lacz;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    :cond_1a
    :goto_9
    if-eqz v6, :cond_1c

    .line 896
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "string"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_a

    .line 900
    :cond_1b
    new-instance v10, Ladz;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ladz;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 897
    :cond_1c
    :goto_a
    new-instance v10, Ladj;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Ladj;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 892
    :cond_1d
    :goto_b
    new-instance v15, Lacm;

    move-object v0, v15

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lacm;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v15

    .line 888
    :cond_1e
    :goto_c
    new-instance v15, Lacu;

    move-object v0, v15

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lacu;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v15

    .line 884
    :cond_1f
    :goto_d
    new-instance v10, Lade;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lade;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 880
    :cond_20
    :goto_e
    new-instance v10, Labw;

    move-object v0, v10

    move-object v1, v3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Labw;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10
.end method

.method public a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lahq;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Labq<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 1061
    const-class v0, Ljava/lang/Byte;

    if-ne v12, v0, :cond_0

    .line 1062
    new-instance v0, Ladn;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Ladn;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1065
    :cond_0
    const-class v0, Ljava/lang/Short;

    if-ne v12, v0, :cond_1

    .line 1066
    new-instance v0, Lacy;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lacy;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1069
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne v12, v0, :cond_2

    .line 1070
    new-instance v0, Ladd;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Ladd;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1073
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne v12, v0, :cond_3

    .line 1074
    new-instance v0, Ladi;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Ladi;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1077
    :cond_3
    const-class v0, Ljava/math/BigInteger;

    if-ne v12, v0, :cond_4

    .line 1078
    new-instance v0, Labv;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Labv;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1081
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    if-ne v12, v0, :cond_5

    .line 1082
    new-instance v0, Labs;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Labs;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1085
    :cond_5
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_6

    .line 1086
    new-instance v0, Laej;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Laej;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1089
    :cond_6
    const-class v0, Ljava/util/Date;

    if-ne v12, v0, :cond_7

    .line 1090
    new-instance v0, Laci;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Laci;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1093
    :cond_7
    const-class v0, Ljava/time/LocalDate;

    if-ne v12, v0, :cond_8

    .line 1094
    new-instance v13, Ladw;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Ladw;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1097
    :cond_8
    const-class v0, Ljava/time/OffsetDateTime;

    if-ne v12, v0, :cond_9

    .line 1098
    new-instance v13, Laeh;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Laeh;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1101
    :cond_9
    const-class v0, Ljava/util/UUID;

    if-ne v12, v0, :cond_a

    .line 1102
    new-instance v13, Lael;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lael;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1105
    :cond_a
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1106
    new-instance v0, Lacc;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lacc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1109
    :cond_b
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1110
    new-instance v0, Lqe;

    invoke-direct {v0}, Lqe;-><init>()V

    if-nez p1, :cond_c

    .line 1112
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v2

    goto :goto_0

    :cond_c
    move-object v2, p1

    .line 1114
    :goto_0
    invoke-virtual {v2, v0, v12}, Lahq;->a(Lqe;Ljava/lang/Class;)V

    .line 1116
    iget-boolean v0, v0, Lqe;->o:Z

    if-nez v0, :cond_d

    .line 1118
    iget-object v3, v2, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laem;

    if-eqz v3, :cond_d

    .line 1119
    instance-of v3, v3, Lagd;

    if-nez v3, :cond_d

    move v0, v1

    :cond_d
    if-nez v0, :cond_e

    .line 1124
    invoke-static {v12, v2}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1125
    invoke-static/range {p10 .. p10}, Laax;->e(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1127
    new-instance v13, Lacq;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lacq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1132
    :cond_e
    instance-of v0, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_11

    .line 1133
    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1134
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1135
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1137
    const-class v3, Ljava/util/List;

    if-eq v2, v3, :cond_f

    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_11

    .line 1138
    :cond_f
    array-length v2, v0

    if-ne v2, v1, :cond_11

    const/4 v1, 0x0

    .line 1139
    aget-object v7, v0, v1

    .line 1140
    const-class v0, Ljava/lang/String;

    if-ne v7, v0, :cond_10

    .line 1141
    new-instance v13, Ladv;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Ladv;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v13

    .line 1143
    :cond_10
    new-instance v13, Ladt;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Ladt;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v13

    .line 1148
    :cond_11
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1149
    new-instance v13, Laef;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Laef;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1152
    :cond_12
    new-instance v13, Laee;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Laee;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13
.end method

.method public a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lahq;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Labq<",
            "TT;>;"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 1044
    invoke-virtual/range {v0 .. v13}, Lafe;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

    move-result-object v0

    return-object v0
.end method

.method public a(Lahq;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Laem;)Labq;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lahq;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Laem;",
            ")",
            "Labq<",
            "TT;>;"
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v7, p6

    move-object/from16 v11, p9

    .line 691
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 694
    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 695
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "stackTrace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const-class v0, Ljava/lang/Throwable;

    const-string v2, "getStackTrace"

    invoke-static {v0, v2}, Laax;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    if-eqz v9, :cond_1

    .line 701
    const-class v2, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lafe;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Laem;)Labq;

    move-result-object v0

    return-object v0

    .line 704
    :cond_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 705
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v11, :cond_3

    .line 724
    new-instance v13, Laea;

    const/4 v10, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Laea;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 725
    iput-object v12, v13, Laea;->B:Ljava/lang/Class;

    .line 726
    sget-object v0, Lafc$a;->a:Lafc$a;

    if-eq v11, v0, :cond_2

    .line 727
    iput-object v11, v13, Laea;->x:Laem;

    :cond_2
    return-object v13

    .line 732
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_4

    .line 733
    new-instance v9, Laby;

    move-object v0, v9

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Laby;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v9

    .line 736
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_5

    .line 737
    new-instance v8, Ladp;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladp;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 740
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_6

    .line 741
    new-instance v8, Lada;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lada;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 744
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_7

    .line 745
    new-instance v8, Ladf;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladf;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 748
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_a

    if-eqz v7, :cond_9

    .line 749
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "string"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 752
    :cond_8
    new-instance v8, Ladx;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladx;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 750
    :cond_9
    :goto_1
    new-instance v8, Ladk;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ladk;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 755
    :cond_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_b

    .line 756
    new-instance v8, Lacv;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lacv;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 759
    :cond_b
    const-class v0, Ljava/lang/Float;

    if-ne v12, v0, :cond_c

    .line 760
    new-instance v8, Lacs;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lacs;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 763
    :cond_c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_d

    .line 764
    new-instance v6, Lacn;

    move-object v0, v6

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lacn;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v6

    .line 767
    :cond_d
    const-class v0, Ljava/lang/Double;

    if-ne v12, v0, :cond_e

    .line 768
    new-instance v8, Lack;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lack;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 771
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_f

    .line 772
    new-instance v8, Lace;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lace;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 775
    :cond_f
    const-class v0, Ljava/math/BigInteger;

    if-ne v12, v0, :cond_10

    .line 776
    new-instance v8, Labu;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Labu;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 779
    :cond_10
    const-class v0, Ljava/math/BigDecimal;

    if-ne v12, v0, :cond_11

    .line 780
    new-instance v8, Labr;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Labr;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 783
    :cond_11
    const-class v0, Ljava/util/Date;

    if-ne v12, v0, :cond_12

    .line 784
    new-instance v8, Lach;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lach;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 787
    :cond_12
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_13

    .line 788
    new-instance v8, Laei;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laei;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 791
    :cond_13
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 792
    new-instance v0, Lqe;

    invoke-direct {v0}, Lqe;-><init>()V

    .line 793
    invoke-virtual {p1, v0, v12}, Lahq;->a(Lqe;Ljava/lang/Class;)V

    .line 795
    iget-boolean v0, v0, Lqe;->o:Z

    if-nez v0, :cond_14

    .line 797
    iget-object v2, v1, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laem;

    if-eqz v2, :cond_14

    .line 798
    instance-of v2, v2, Lagd;

    if-nez v2, :cond_14

    const/4 v0, 0x1

    .line 803
    :cond_14
    invoke-static {v12, p1}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object v1

    if-nez v1, :cond_15

    if-nez v0, :cond_15

    .line 805
    invoke-static {v12}, Laax;->e(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    .line 807
    new-instance v11, Lacp;

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lacp;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v11

    .line 812
    :cond_15
    const-class v0, Ljava/util/List;

    if-eq v12, v0, :cond_18

    const-class v0, Ljava/util/ArrayList;

    if-ne v12, v0, :cond_16

    goto :goto_2

    .line 820
    :cond_16
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_17

    .line 821
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 822
    new-instance v11, Laeb;

    move-object v0, v11

    move-object/from16 v1, p2

    move-object v2, v8

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v12

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Laeb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 825
    :cond_17
    new-instance v11, Laea;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Laea;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v11

    .line 814
    :cond_18
    :goto_2
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_19

    .line 815
    move-object v0, v8

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v2, v0

    goto :goto_3

    :cond_19
    move-object v2, v3

    .line 817
    :goto_3
    new-instance v11, Lads;

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v12

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lads;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11
.end method

.method protected a(Ljava/lang/Class;JLahq;Lqe;Lqg;Ljava/lang/reflect/Field;)Labq;
    .locals 13

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-wide v3, p2

    move-object/from16 v9, p7

    .line 146
    iput-wide v3, v2, Lqg;->e:J

    move-object v3, p1

    .line 147
    invoke-virtual {v0, v1, v2, p1, v9}, Lahq;->a(Lqe;Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 149
    iget-boolean v3, v2, Lqg;->f:Z

    const/4 v4, 0x0

    if-nez v3, :cond_14

    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Labo;->d(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_b

    .line 154
    :cond_0
    iget-object v3, v2, Lqg;->a:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lqg;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v3, v2, Lqg;->a:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_2
    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    iget-object v5, v1, Lqe;->p:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 158
    iget-object v5, v1, Lqe;->p:Ljava/lang/String;

    invoke-static {v3, v5}, Laax;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    :cond_3
    :goto_1
    iget-object v5, v1, Lqe;->r:[Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    move v5, v7

    move v8, v5

    .line 166
    :goto_2
    iget-object v10, v1, Lqe;->r:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_5

    .line 167
    iget-object v10, v1, Lqe;->r:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 168
    iput v5, v2, Lqg;->d:I

    move v8, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_6

    .line 173
    iget v5, v2, Lqg;->d:I

    if-nez v5, :cond_6

    .line 174
    iget-object v5, v1, Lqe;->r:[Ljava/lang/String;

    array-length v5, v5

    iput v5, v2, Lqg;->d:I

    .line 179
    :cond_6
    iget-object v5, v1, Lqe;->s:[Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lqe;->s:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_9

    .line 181
    iget-object v5, v1, Lqe;->s:[Ljava/lang/String;

    array-length v8, v5

    move v10, v7

    :goto_3
    if-ge v10, v8, :cond_8

    aget-object v11, v5, v10

    .line 182
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v5, v6

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    move v5, v7

    :goto_4
    if-nez v5, :cond_9

    return-object v4

    .line 193
    :cond_9
    iget-object v5, v2, Lqg;->h:Ljava/lang/Class;

    if-eqz v5, :cond_a

    .line 195
    :try_start_0
    iget-object v5, v2, Lqg;->h:Ljava/lang/Class;

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 197
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laem;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 200
    :goto_5
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "create writeUsing Writer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move-object v5, v4

    .line 205
    :goto_6
    :try_start_1
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :catch_4
    if-nez v5, :cond_b

    .line 210
    iget-boolean v8, v2, Lqg;->l:Z

    if-eqz v8, :cond_b

    .line 211
    sget-object v5, Lafc$a;->a:Lafc$a;

    :cond_b
    if-nez v5, :cond_12

    .line 215
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 216
    const-class v10, Ljava/util/Date;

    if-ne v8, v10, :cond_d

    .line 217
    iget-object v4, v0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laem;

    .line 218
    sget-object v6, Laga;->o:Laga;

    if-eq v4, v6, :cond_c

    goto :goto_7

    :cond_c
    move-object v4, v5

    :goto_7
    move-object v10, v4

    goto :goto_9

    .line 221
    :cond_d
    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, v2, Lqg;->i:Ljava/lang/Class;

    if-nez v10, :cond_e

    iget-object v10, v2, Lqg;->j:Ljava/lang/Class;

    if-eqz v10, :cond_12

    .line 225
    :cond_e
    iget-object v10, v2, Lqg;->i:Ljava/lang/Class;

    if-eqz v10, :cond_f

    .line 227
    :try_start_2
    iget-object v10, v2, Lqg;->i:Ljava/lang/Class;

    new-array v11, v7, [Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 228
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 229
    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_8

    :catch_5
    :cond_f
    move-object v10, v4

    .line 234
    :goto_8
    iget-object v11, v2, Lqg;->j:Ljava/lang/Class;

    if-eqz v11, :cond_10

    .line 236
    :try_start_3
    iget-object v11, v2, Lqg;->j:Ljava/lang/Class;

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 237
    invoke-virtual {v11, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 238
    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v11, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v4, v6

    :catch_6
    :cond_10
    if-nez v10, :cond_11

    if-eqz v4, :cond_12

    .line 245
    :cond_11
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Laha;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laha;

    move-result-object v5

    .line 246
    iput-object v10, v5, Laha;->j:Laem;

    .line 247
    iput-object v4, v5, Laha;->k:Laem;

    :cond_12
    move-object v10, v5

    .line 253
    :goto_9
    iget-object v4, v2, Lqg;->b:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 254
    iget-object v5, v1, Lqe;->z:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 255
    iget-object v1, v1, Lqe;->z:Ljava/lang/String;

    move-object v7, v1

    goto :goto_a

    :cond_13
    move-object v7, v4

    .line 258
    :goto_a
    iget v4, v2, Lqg;->d:I

    iget-wide v5, v2, Lqg;->e:J

    iget-object v8, v2, Lqg;->c:Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v10}, Lafe;->a(Lahq;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Laem;)Labq;

    move-result-object v0

    return-object v0

    :cond_14
    :goto_b
    return-object v4
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Labq;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 1009
    invoke-virtual/range {v0 .. v13}, Lafe;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Labq;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v9, p2

    move-object v10, p2

    move-object/from16 v12, p3

    .line 999
    invoke-virtual/range {v0 .. v12}, Lafe;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)Labq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/ToIntFunction<",
            "TT;>;)",
            "Labq;"
        }
    .end annotation

    .line 971
    new-instance v10, Ladg;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Ladg;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V

    return-object v10
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Labq;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Labq;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    .line 1018
    invoke-virtual/range {v0 .. v12}, Lafe;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToIntFunction<",
            "TT;>;)",
            "Labq;"
        }
    .end annotation

    .line 967
    new-instance v10, Ladg;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Ladg;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V

    return-object v10
.end method

.method protected a(Lahq;Ljava/lang/Class;)Laem;
    .locals 7

    .line 1216
    const-class v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 1217
    iget-wide v3, p1, Lahq;->g:J

    const-wide/16 v5, 0x10

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 1218
    iget-object p1, p1, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    .line 1219
    sget-object p2, Laga;->o:Laga;

    if-eq p1, p2, :cond_4

    return-object p1

    .line 1223
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_3

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 1230
    :cond_1
    const-class v0, Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_2

    .line 1231
    iget-wide v3, p1, Lahq;->g:J

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 1232
    iget-object p1, p1, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    .line 1233
    sget-object p2, Lafp;->a:Lafp;

    if-eq p1, p2, :cond_4

    return-object p1

    .line 1237
    :cond_2
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1238
    iget-object p1, p1, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    .line 1239
    instance-of p2, p1, Lagd;

    if-nez p2, :cond_4

    return-object p1

    .line 1224
    :cond_3
    :goto_0
    iget-wide v3, p1, Lahq;->g:J

    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long p2, v3, v1

    if-eqz p2, :cond_4

    .line 1225
    iget-object p1, p1, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    const-class p2, Ljava/lang/Long;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    .line 1226
    sget-object p2, Lagm;->a:Lagm;

    if-eq p1, p2, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Laem;
    .locals 3

    .line 75
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 72
    invoke-virtual {p0, p1, v1, v2, v0}, Lafe;->a(Ljava/lang/Class;JLahq;)Laem;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;JLahq;)Laem;
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p4

    .line 307
    new-instance v12, Lqe;

    invoke-direct {v12}, Lqe;-><init>()V

    .line 308
    iget-wide v1, v12, Lqe;->m:J

    const-wide/high16 v3, 0x40000000000000L

    or-long/2addr v1, v3

    iput-wide v1, v12, Lqe;->m:J

    .line 310
    invoke-virtual {v10, v12, v0}, Lahq;->a(Lqe;Ljava/lang/Class;)V

    .line 312
    iget-object v1, v12, Lqe;->v:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-class v1, Laem;

    iget-object v2, v12, Lqe;->v:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    iget-object v0, v12, Lqe;->v:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 316
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "create serializer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 320
    :cond_0
    invoke-static/range {p1 .. p1}, Laax;->g(Ljava/lang/Class;)Z

    move-result v13

    .line 322
    iget-wide v1, v12, Lqe;->n:J

    .line 323
    iget-object v3, v12, Lqe;->f:[Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 324
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    not-long v3, v3

    and-long/2addr v1, v3

    :cond_1
    or-long v14, p2, v1

    .line 328
    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v14

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    const/16 v18, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    move/from16 v1, v18

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    if-eqz v1, :cond_4

    if-nez v13, :cond_3

    .line 330
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move/from16 v19, v9

    goto :goto_2

    :cond_4
    move/from16 v19, v1

    .line 335
    :goto_2
    new-instance v20, Lqg;

    invoke-direct/range {v20 .. v20}, Lqg;-><init>()V

    if-eqz v19, :cond_6

    .line 338
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 339
    new-instance v8, L-$$Lambda$afe$R9UqgVQtSdgkk8h-ZpcwSILDJSg;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    move-wide v5, v14

    move-object/from16 v7, p4

    move-object v10, v8

    move-object v8, v12

    move v14, v9

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, L-$$Lambda$afe$R9UqgVQtSdgkk8h-ZpcwSILDJSg;-><init>(Lafe;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;)V

    invoke-static {v0, v10}, Laax;->b(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_5
    :goto_3
    move-object v8, v1

    goto/16 :goto_5

    .line 349
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    iget-object v2, v10, Lahq;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lso;

    .line 351
    invoke-interface {v3, v11, v0, v1}, Lso;->a(Lafe;Ljava/lang/Class;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v2, v18

    goto :goto_4

    :cond_8
    move v2, v9

    :goto_4
    if-nez v2, :cond_5

    .line 358
    new-instance v21, Ljava/util/TreeMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    if-nez v13, :cond_9

    .line 361
    new-instance v8, L-$$Lambda$afe$eXucZ1sQqaIe31XCBHBVnvdKjpI;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    move-wide v5, v14

    move-object/from16 v7, p4

    move-object v11, v8

    move-object v8, v12

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, L-$$Lambda$afe$eXucZ1sQqaIe31XCBHBVnvdKjpI;-><init>(Lafe;Lqg;Ljava/lang/Class;JLahq;Lqe;Ljava/util/Map;)V

    invoke-static {v0, v11}, Laax;->b(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 375
    :cond_9
    invoke-virtual {v10, v0}, Lahq;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    .line 377
    new-instance v9, L-$$Lambda$afe$hFVQ8lnujLNAE77iLj3Sn53UasQ;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-wide v4, v14

    move-object v6, v12

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    move-object v14, v9

    move v9, v13

    move-object/from16 v10, v21

    invoke-direct/range {v1 .. v10}, L-$$Lambda$afe$hFVQ8lnujLNAE77iLj3Sn53UasQ;-><init>(Lafe;Lqg;JLqe;Lahq;Ljava/lang/Class;ZLjava/util/Map;)V

    invoke-static {v0, v11, v14}, Laax;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 488
    :goto_5
    iget-wide v1, v12, Lqe;->n:J

    or-long v9, p2, v1

    if-nez v19, :cond_a

    .line 489
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 490
    new-instance v1, Lafh;

    invoke-direct {v1, v0, v9, v10, v8}, Lafh;-><init>(Ljava/lang/Class;JLjava/util/List;)V

    return-object v1

    :cond_a
    move-object/from16 v11, p0

    .line 493
    invoke-virtual {v11, v12, v8}, Lafe;->a(Lqe;Ljava/util/List;)V

    .line 495
    iget-boolean v1, v12, Lqe;->B:Z

    if-eqz v1, :cond_b

    .line 496
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 499
    :cond_b
    invoke-static/range {p1 .. p1}, Laax;->h(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 500
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 504
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, L-$$Lambda$afe$vri6GdQGUFbTgE2yHaYxLyXAZsw;->INSTANCE:L-$$Lambda$afe$vri6GdQGUFbTgE2yHaYxLyXAZsw;

    const-string v4, "$super$"

    .line 501
    invoke-static {v4, v1, v2, v3}, Lahr;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v1

    .line 507
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_c
    invoke-virtual {v11, v8, v0}, Lafe;->a(Ljava/util/List;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 515
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    .line 517
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    .line 518
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    const/16 v18, 0x0

    :cond_e
    :goto_6
    if-nez v18, :cond_f

    .line 520
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 557
    :pswitch_0
    new-instance v13, Laeq;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laeq;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_8

    .line 554
    :pswitch_1
    new-instance v13, Laep;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laep;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_8

    .line 551
    :pswitch_2
    new-instance v13, Laeo;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laeo;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_8

    .line 548
    :pswitch_3
    new-instance v13, Laey;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laey;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_8

    .line 545
    :pswitch_4
    new-instance v13, Laex;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laex;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_8

    .line 542
    :pswitch_5
    new-instance v13, Laew;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laew;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_8

    .line 539
    :pswitch_6
    new-instance v13, Laev;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laev;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_8

    .line 536
    :pswitch_7
    new-instance v13, Laeu;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laeu;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_8

    .line 533
    :pswitch_8
    new-instance v13, Laet;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laet;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_8

    .line 530
    :pswitch_9
    new-instance v13, Laes;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laes;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_8

    .line 527
    :pswitch_a
    new-instance v13, Laer;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laer;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_8

    :pswitch_b
    const/4 v2, 0x0

    .line 522
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labq;

    iget-wide v2, v2, Labq;->d:J

    const-wide/high16 v4, 0x1000000000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, v16

    if-nez v2, :cond_f

    .line 523
    new-instance v13, Laen;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laen;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_8

    :cond_f
    :goto_7
    move-object v13, v1

    :goto_8
    if-nez v13, :cond_10

    .line 564
    new-instance v13, Laez;

    iget-object v3, v12, Lqe;->a:Ljava/lang/String;

    iget-object v4, v12, Lqe;->b:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 567
    :cond_10
    iget-object v0, v12, Lqe;->x:[Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 568
    invoke-static {v12, v13}, Lafe;->a(Lqe;Laez;)V

    :cond_11
    return-object v13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs a(Ljava/lang/Class;J[Labq;)Laem;
    .locals 9

    .line 89
    array-length v2, p4

    if-nez v2, :cond_0

    .line 90
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lafe;->a(Ljava/lang/Class;JLahq;)Laem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    .line 97
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v3, :cond_4

    .line 102
    array-length v3, p4

    packed-switch v3, :pswitch_data_0

    .line 131
    new-instance v7, Laez;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 129
    :pswitch_0
    new-instance v7, Laeq;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laeq;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 127
    :pswitch_1
    new-instance v7, Laep;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laep;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 125
    :pswitch_2
    new-instance v7, Laeo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laeo;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 123
    :pswitch_3
    new-instance v7, Laey;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laey;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 121
    :pswitch_4
    new-instance v7, Laex;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laex;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 119
    :pswitch_5
    new-instance v7, Laew;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laew;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 117
    :pswitch_6
    new-instance v7, Laev;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laev;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 115
    :pswitch_7
    new-instance v7, Laeu;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laeu;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 113
    :pswitch_8
    new-instance v7, Laet;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laet;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 111
    :pswitch_9
    new-instance v7, Laes;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laes;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 109
    :pswitch_a
    new-instance v7, Laer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laer;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 104
    :pswitch_b
    aget-object v2, p4, v2

    iget-wide v2, v2, Labq;->d:J

    const-wide/high16 v7, 0x1000000000000L

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    .line 105
    new-instance v7, Laen;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laen;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 107
    :cond_3
    new-instance v7, Laez;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 135
    :cond_4
    new-instance v7, Laez;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs a(Ljava/lang/Class;[Labq;)Laem;
    .locals 2

    const-wide/16 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, v1, p2}, Lafe;->a(Ljava/lang/Class;J[Labq;)Laem;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 7

    .line 1174
    invoke-static {p1}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1176
    sget-object v1, Lafe;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lafe$a;

    if-eqz v1, :cond_0

    .line 1183
    iget-object p2, v1, Lafe$a;->d:Ljava/lang/invoke/MethodType;

    .line 1184
    iget-object v2, v1, Lafe$a;->e:Ljava/lang/invoke/MethodType;

    .line 1185
    iget-object v3, v1, Lafe$a;->c:Ljava/lang/String;

    .line 1186
    iget-object v1, v1, Lafe$a;->f:Ljava/lang/invoke/MethodType;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    .line 1188
    :cond_0
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p2

    .line 1189
    sget-object v1, Labo;->m:Ljava/lang/invoke/MethodType;

    .line 1191
    sget-object v2, Labo;->w:Ljava/lang/invoke/MethodType;

    const-string v3, "apply"

    move-object v6, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v6

    .line 1195
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 1196
    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1198
    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1208
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 1209
    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1211
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create fieldLambdaGetter error, method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected a(Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labq;",
            ">;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 276
    invoke-static {p2, v0}, Laax;->a(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    .line 284
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 286
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    .line 288
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labq;

    .line 298
    invoke-virtual {v0, p2}, Labq;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    :cond_2
    return-void
.end method

.method protected a(Lqe;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqe;",
            "Ljava/util/List<",
            "Labq;",
            ">;)V"
        }
    .end annotation

    .line 640
    iget-object v0, p1, Lqe;->q:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lqe;->q:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 644
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 645
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labq;

    .line 646
    iget-object v2, p1, Lqe;->q:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 647
    iget-object v6, v1, Labq;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 648
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method b(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Laem;)Labq;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lahq;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Laem;",
            ")",
            "Labq<",
            "TT;>;"
        }
    .end annotation

    move-object v14, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p7

    move-object/from16 v12, p9

    .line 1257
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 1258
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    if-nez p10, :cond_0

    if-eqz v1, :cond_0

    .line 1261
    invoke-virtual {p0, v1, v10}, Lafe;->a(Lahq;Ljava/lang/Class;)Laem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p10

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 1268
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x24

    .line 1269
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const-string v4, "$$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    .line 1273
    :cond_2
    invoke-virtual {p0, v2, v10, v12}, Lafe;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .line 1275
    invoke-static {v2, v12}, Laax;->b(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 1277
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_3

    .line 1278
    new-instance v10, Ladg;

    const/4 v8, 0x0

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToIntFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Ladg;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V

    return-object v10

    .line 1281
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_6

    if-eqz v7, :cond_5

    .line 1282
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "string"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1286
    :cond_4
    new-instance v10, Lady;

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToLongFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lady;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToLongFunction;)V

    return-object v10

    .line 1283
    :cond_5
    :goto_1
    new-instance v10, Ladl;

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToLongFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Ladl;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToLongFunction;)V

    return-object v10

    .line 1289
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_7

    .line 1290
    new-instance v10, Labz;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Predicate;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Labz;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Predicate;)V

    return-object v10

    .line 1293
    :cond_7
    const-class v3, Ljava/lang/Boolean;

    if-ne v10, v3, :cond_8

    .line 1294
    new-instance v10, Lacb;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Function;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lacb;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v10

    .line 1297
    :cond_8
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_9

    .line 1298
    new-instance v10, Ladb;

    move-object v9, v0

    check-cast v9, Lrh;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Ladb;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lrh;)V

    return-object v10

    .line 1301
    :cond_9
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_a

    .line 1302
    new-instance v10, Ladq;

    move-object v9, v0

    check-cast v9, Lre;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Ladq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lre;)V

    return-object v10

    .line 1305
    :cond_a
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_b

    .line 1306
    new-instance v10, Lacw;

    move-object v9, v0

    check-cast v9, Lrg;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lacw;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lrg;)V

    return-object v10

    .line 1309
    :cond_b
    const-class v3, Ljava/lang/Float;

    if-ne v10, v3, :cond_c

    .line 1310
    new-instance v10, Lact;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Function;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lact;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v10

    .line 1313
    :cond_c
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_d

    .line 1314
    new-instance v10, Laco;

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToDoubleFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Laco;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToDoubleFunction;)V

    return-object v10

    .line 1317
    :cond_d
    const-class v3, Ljava/lang/Double;

    if-ne v10, v3, :cond_e

    .line 1318
    new-instance v10, Lacl;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Function;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lacl;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v10

    .line 1321
    :cond_e
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_f

    .line 1322
    new-instance v10, Lacf;

    move-object v9, v0

    check-cast v9, Lrf;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lacf;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lrf;)V

    return-object v10

    .line 1325
    :cond_f
    move-object v13, v0

    check-cast v13, Ljava/util/function/Function;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p9

    .line 1326
    invoke-virtual/range {v0 .. v13}, Lafe;->a(Lahq;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

    move-result-object v0

    return-object v0
.end method
