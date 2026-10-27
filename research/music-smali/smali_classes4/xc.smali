.class final Lxc;
.super Lwx;
.source "ObjectReaderException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwx<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:J

.field static final b:J

.field static final c:J

.field static final d:J

.field static final e:J

.field static final g:J

.field static final h:J


# instance fields
.field final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/lang/reflect/Constructor;

.field final k:Ljava/lang/reflect/Constructor;

.field final l:Ljava/lang/reflect/Constructor;

.field final m:Ljava/lang/reflect/Constructor;

.field final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lsu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "@type"

    .line 17
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxc;->a:J

    const-string v0, "message"

    .line 18
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxc;->b:J

    const-string v0, "detailMessage"

    .line 19
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxc;->c:J

    const-string v0, "localizedMessage"

    .line 20
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxc;->d:J

    const-string v0, "cause"

    .line 21
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxc;->e:J

    const-string v0, "stackTrace"

    .line 22
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxc;->g:J

    const-string v0, "suppressedExceptions"

    .line 23
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxc;->h:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-static {p1}, Laax;->b(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lsu;

    const-class v2, [Ljava/lang/StackTraceElement;

    sget-object v3, L-$$Lambda$ZDanZEOAaFnh8NlhDLThj1XvjHo;->INSTANCE:L-$$Lambda$ZDanZEOAaFnh8NlhDLThj1XvjHo;

    const-string v4, "stackTrace"

    .line 39
    invoke-static {v4, v2, v3}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/BiConsumer;)Lsu;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36
    invoke-direct {p0, p1, v0, v1}, Lxc;-><init>(Ljava/lang/Class;Ljava/util/List;[Lsu;)V

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/Class;Ljava/util/List;[Lsu;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;[",
            "Lsu;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    .line 49
    iput-object v11, v10, Lxc;->i:Ljava/util/List;

    .line 56
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    .line 58
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v8

    if-nez v8, :cond_1

    move-object v2, v6

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 66
    aget-object v7, v9, v7

    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    .line 68
    const-class v14, Ljava/lang/String;

    if-ne v7, v14, :cond_2

    move-object v3, v6

    goto :goto_1

    .line 70
    :cond_2
    const-class v14, Ljava/lang/Throwable;

    invoke-virtual {v14, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v5, v6

    :cond_3
    :goto_1
    const/4 v14, 0x2

    if-ne v8, v14, :cond_0

    .line 75
    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_0

    const-class v7, Ljava/lang/Throwable;

    aget-object v8, v9, v13

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v6

    goto :goto_0

    .line 83
    :cond_4
    iput-object v2, v10, Lxc;->j:Ljava/lang/reflect/Constructor;

    .line 84
    iput-object v3, v10, Lxc;->k:Ljava/lang/reflect/Constructor;

    .line 85
    iput-object v4, v10, Lxc;->l:Ljava/lang/reflect/Constructor;

    .line 86
    iput-object v5, v10, Lxc;->m:Ljava/lang/reflect/Constructor;

    .line 88
    sget-object v0, L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;->INSTANCE:L-$$Lambda$xc$MYe_tOxqW4h4veSW-OiwF-VEohs;

    invoke-interface {v11, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v10, Lxc;->n:Ljava/util/List;

    .line 95
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 96
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 99
    invoke-static {v2}, Lrv;->a(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v4

    .line 102
    new-instance v5, Lqg;

    invoke-direct {v5}, Lqg;-><init>()V

    move v6, v7

    .line 103
    :goto_3
    array-length v8, v4

    if-ge v6, v8, :cond_7

    array-length v8, v3

    if-ge v6, v8, :cond_7

    .line 104
    invoke-virtual {v5}, Lqg;->b()V

    .line 106
    aget-object v18, v4, v6

    .line 108
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v13

    move-object v14, v5

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move/from16 v17, v6

    .line 109
    invoke-virtual/range {v13 .. v18}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    .line 110
    iget-object v8, v5, Lqg;->a:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 111
    iget-object v8, v5, Lqg;->a:Ljava/lang/String;

    aput-object v8, v3, v6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    move-object v3, v1

    .line 116
    :cond_7
    iget-object v2, v10, Lxc;->n:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 120
    :cond_8
    array-length v0, v12

    :goto_4
    if-ge v7, v0, :cond_a

    aget-object v2, v12, v7

    .line 121
    iget-object v3, v2, Lsu;->b:Ljava/lang/String;

    const-string v4, "stackTrace"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v2, Lsu;->c:Ljava/lang/Class;

    const-class v4, [Ljava/lang/StackTraceElement;

    if-ne v3, v4, :cond_9

    move-object v1, v2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 125
    :cond_a
    iput-object v1, v10, Lxc;->o:Lsu;

    return-void
.end method

.method private static synthetic a(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 0

    .line 89
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p0

    .line 90
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p1

    .line 91
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 4

    .line 380
    :try_start_0
    iget-object v0, p0, Lxc;->l:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lxc;->l:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 386
    :cond_0
    iget-object v0, p0, Lxc;->k:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 388
    iget-object p2, p0, Lxc;->k:Ljava/lang/reflect/Constructor;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 392
    :cond_1
    iget-object v0, p0, Lxc;->m:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 394
    iget-object p1, p0, Lxc;->m:Ljava/lang/reflect/Constructor;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 398
    :cond_2
    iget-object v0, p0, Lxc;->l:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 400
    :cond_3
    iget-object v0, p0, Lxc;->l:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 404
    :cond_4
    iget-object v0, p0, Lxc;->j:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_5

    .line 405
    iget-object p1, p0, Lxc;->j:Ljava/lang/reflect/Constructor;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 408
    :cond_5
    iget-object v0, p0, Lxc;->l:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_6

    .line 409
    iget-object v0, p0, Lxc;->l:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 412
    :cond_6
    iget-object v0, p0, Lxc;->k:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_7

    .line 413
    iget-object p2, p0, Lxc;->k:Ljava/lang/reflect/Constructor;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    .line 416
    :cond_7
    iget-object p1, p0, Lxc;->m:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_8

    .line 417
    iget-object p1, p0, Lxc;->m:Ljava/lang/reflect/Constructor;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 420
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create Exception error, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lxc;->Y:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic lambda$MYe_tOxqW4h4veSW-OiwF-VEohs(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 0

    invoke-static {p0, p1}, Lxc;->a(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 355
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v0

    const/16 v1, -0x6e

    if-ne v0, v1, :cond_3

    .line 356
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 358
    invoke-virtual {p1, p4, p5}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->c()Lcom/alibaba/fastjson2/u$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 360
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide p4

    .line 362
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object p4

    if-nez p4, :cond_2

    .line 364
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    .line 365
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object p5

    if-eqz p5, :cond_1

    move-object v0, p5

    goto :goto_0

    .line 368
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "auoType not support : "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", offset "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->D()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object v0, p4

    :goto_0
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 371
    invoke-interface/range {v0 .. v5}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 375
    :cond_3
    invoke-virtual/range {p0 .. p5}, Lxc;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 350
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lxc;->a(Lcom/alibaba/fastjson2/u;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p4

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    const/4 v5, 0x0

    .line 148
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v12

    if-eqz v12, :cond_21

    .line 228
    invoke-direct {v1, v6, v7}, Lxc;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_16

    const/4 v3, 0x0

    .line 231
    :goto_1
    iget-object v5, v1, Lxc;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_16

    .line 232
    iget-object v5, v1, Lxc;->n:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 233
    array-length v12, v5

    if-nez v12, :cond_1

    goto/16 :goto_c

    .line 238
    :cond_1
    array-length v12, v5

    const/4 v14, 0x0

    const/4 v15, 0x1

    :goto_2
    const-string v4, "errorIndex"

    const-string v13, "message"

    move-object/from16 p4, v2

    const-string v2, "cause"

    move-object/from16 v16, v6

    const/16 v17, -0x1

    if-ge v14, v12, :cond_a

    aget-object v6, v5, v14

    if-nez v6, :cond_2

    move-object/from16 v18, v7

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_2
    move-object/from16 v18, v7

    .line 244
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    move/from16 v19, v12

    const v12, 0x5a0f469

    if-eq v7, v12, :cond_5

    const v12, 0x38eb0007

    if-eq v7, v12, :cond_4

    const v2, 0x604d6baa

    if-eq v7, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    move/from16 v2, v17

    :goto_4
    if-eqz v2, :cond_9

    const/4 v4, 0x1

    if-eq v2, v4, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_7

    .line 257
    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :goto_5
    const/4 v15, 0x0

    goto :goto_6

    .line 249
    :cond_7
    iget-object v2, v1, Lxc;->Y:Ljava/lang/Class;

    const-class v4, Ljava/time/format/DateTimeParseException;

    if-ne v2, v4, :cond_8

    goto :goto_6

    .line 252
    :cond_8
    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p4

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    move/from16 v12, v19

    goto :goto_2

    :cond_a
    move-object/from16 v18, v7

    :goto_7
    if-nez v15, :cond_b

    goto/16 :goto_d

    .line 268
    :cond_b
    array-length v6, v5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 269
    :goto_8
    array-length v12, v5

    if-ge v7, v12, :cond_14

    .line 270
    aget-object v12, v5, v7

    .line 272
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, 0x5a0f469

    if-eq v14, v15, :cond_e

    const v15, 0x38eb0007

    if-eq v14, v15, :cond_d

    const v15, 0x604d6baa

    if-eq v14, v15, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x2

    goto :goto_a

    :cond_d
    const v15, 0x604d6baa

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x0

    goto :goto_a

    :cond_e
    const v15, 0x604d6baa

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x1

    goto :goto_a

    :cond_f
    :goto_9
    move/from16 v14, v17

    :goto_a
    if-eqz v14, :cond_13

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    const/4 v15, 0x2

    if-eq v14, v15, :cond_11

    .line 286
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :cond_10
    const/4 v14, 0x0

    goto :goto_b

    .line 280
    :cond_11
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_10

    .line 281
    iget-object v14, v1, Lxc;->Y:Ljava/lang/Class;

    const-class v15, Ljava/time/format/DateTimeParseException;

    if-ne v14, v15, :cond_10

    const/4 v14, 0x0

    .line 282
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_b

    :cond_12
    const/4 v14, 0x0

    move-object/from16 v12, v18

    goto :goto_b

    :cond_13
    const/4 v14, 0x0

    move-object/from16 v12, v16

    .line 289
    :goto_b
    aput-object v12, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_14
    const/4 v14, 0x0

    .line 292
    iget-object v2, v1, Lxc;->i:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 294
    :try_start_0
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    .line 297
    new-instance v3, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create error, objectClass "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_15
    :goto_c
    move-object/from16 p4, v2

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    :goto_d
    const/4 v14, 0x0

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p4

    move-object/from16 v6, v16

    move-object/from16 v7, v18

    goto/16 :goto_1

    :cond_16
    move-object/from16 p4, v2

    const/4 v14, 0x0

    move-object/from16 v3, p4

    :goto_e
    if-eqz v3, :cond_20

    if-eqz v10, :cond_1a

    .line 308
    array-length v2, v10

    move v4, v14

    :goto_f
    if-ge v14, v2, :cond_18

    aget-object v5, v10, v14

    if-nez v5, :cond_17

    add-int/lit8 v4, v4, 0x1

    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 313
    :cond_18
    array-length v2, v10

    if-eqz v2, :cond_19

    array-length v2, v10

    if-eq v4, v2, :cond_1a

    .line 314
    :cond_19
    invoke-virtual {v3, v10}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_1a
    if-eqz v11, :cond_1b

    .line 319
    iget-object v2, v1, Lxc;->o:Lsu;

    invoke-static {v11}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/fastjson2/u;->a(Lsu;Ljava/lang/Object;Lcom/alibaba/fastjson2/g;)V

    :cond_1b
    if-eqz v8, :cond_1d

    .line 323
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lxc;->a(Ljava/lang/String;)Lsu;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 326
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_10

    :cond_1d
    if-eqz v9, :cond_1f

    .line 332
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lxc;->a(Ljava/lang/String;)Lsu;

    move-result-object v5

    if-nez v5, :cond_1e

    goto :goto_11

    .line 337
    :cond_1e
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v0, v3, v4}, Lsu;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_1f
    return-object v3

    .line 303
    :cond_20
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lxc;->Y:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    move-object/from16 v16, v6

    move-object/from16 v18, v7

    const/4 v14, 0x0

    .line 151
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v6

    if-nez v5, :cond_25

    .line 153
    sget-wide v12, Lxc;->a:J

    cmp-long v4, v6, v12

    if-nez v4, :cond_25

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v6

    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v4

    .line 156
    invoke-virtual {v1, v4, v6, v7}, Lxc;->a(Lcom/alibaba/fastjson2/u$c;J)Lwk;

    move-result-object v6

    if-nez v6, :cond_23

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v6

    .line 160
    iget-object v7, v1, Lxc;->Y:Ljava/lang/Class;

    invoke-virtual {v4, v6, v7, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object v4

    if-eqz v4, :cond_22

    goto :goto_12

    .line 163
    :cond_22
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No suitable ObjectReader found for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    move-object v4, v6

    :goto_12
    if-ne v4, v1, :cond_24

    goto/16 :goto_13

    .line 171
    :cond_24
    invoke-interface {v4, v0}, Lwk;->a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 172
    :cond_25
    sget-wide v12, Lxc;->b:J

    cmp-long v4, v6, v12

    if-eqz v4, :cond_34

    sget-wide v12, Lxc;->c:J

    cmp-long v4, v6, v12

    if-nez v4, :cond_26

    goto/16 :goto_16

    .line 174
    :cond_26
    sget-wide v12, Lxc;->d:J

    cmp-long v4, v6, v12

    if-nez v4, :cond_27

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    goto :goto_13

    .line 176
    :cond_27
    sget-wide v12, Lxc;->e:J

    cmp-long v4, v6, v12

    if-nez v4, :cond_29

    .line 177
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    goto :goto_13

    .line 180
    :cond_28
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    move-object v7, v4

    move-object/from16 v6, v16

    goto/16 :goto_18

    .line 182
    :cond_29
    sget-wide v12, Lxc;->g:J

    cmp-long v4, v6, v12

    if-nez v4, :cond_2b

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto :goto_13

    .line 186
    :cond_2a
    const-class v4, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    move-object v10, v4

    goto :goto_13

    .line 188
    :cond_2b
    sget-wide v12, Lxc;->h:J

    cmp-long v4, v6, v12

    if-nez v4, :cond_2e

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    goto :goto_13

    .line 191
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v4

    const/16 v6, -0x6e

    if-ne v4, v6, :cond_2d

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_13

    .line 194
    :cond_2d
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/reflect/Type;)Ljava/util/List;

    :goto_13
    move-object/from16 v6, v16

    goto :goto_17

    .line 197
    :cond_2e
    invoke-virtual {v1, v6, v7}, Lxc;->b(J)Lsu;

    move-result-object v4

    if-nez v8, :cond_2f

    .line 199
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    :cond_2f
    if-eqz v4, :cond_30

    .line 204
    iget-object v6, v4, Lsu;->b:Ljava/lang/String;

    goto :goto_14

    .line 206
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v6

    .line 210
    :goto_14
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 211
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v4

    if-nez v9, :cond_31

    .line 213
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 215
    :cond_31
    invoke-interface {v9, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_32
    if-eqz v4, :cond_33

    .line 220
    invoke-virtual {v4, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_15

    .line 222
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v4

    .line 224
    :goto_15
    invoke-interface {v8, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 173
    :cond_34
    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    :goto_17
    move-object/from16 v7, v18

    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method
