.class public Lxa;
.super Ljava/lang/Object;
.source "ObjectReaderCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxa$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field public static final b:Lxa;

.field protected static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lxa$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected volatile d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_0

    sget-boolean v0, Labf;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lxa;->a:Z

    .line 83
    new-instance v0, Lxa;

    invoke-direct {v0}, Lxa;-><init>()V

    sput-object v0, Lxa;->b:Lxa;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lxa;->e:Ljava/util/Map;

    .line 105
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Lqz;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Lra;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v4, Lrd;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ObjIntConsumer;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ObjLongConsumer;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v4, Lrb;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Lrc;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lxa;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lxa$a;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ObjDoubleConsumer;

    invoke-direct {v2, v3, v4}, Lxa$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1825
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1827
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "create instance error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private a(Lsu;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsu;",
            ")",
            "Ljava/util/List<",
            "Lsu;",
            ">;"
        }
    .end annotation

    .line 3149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3150
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static a(Lzx;Ljava/lang/reflect/Type;Ljava/lang/Class;Lqg;)Lwk;
    .locals 7

    .line 2942
    invoke-virtual {p3}, Lqg;->a()Lwk;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2943
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p3, Lqg;->i:Ljava/lang/Class;

    if-nez v1, :cond_0

    iget-object v1, p3, Lqg;->j:Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 2945
    :cond_0
    iget-object v1, p3, Lqg;->i:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 2947
    :try_start_0
    iget-object v1, p3, Lqg;->i:Ljava/lang/Class;

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2948
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2949
    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v1, v3

    .line 2956
    :goto_0
    iget-object v5, p3, Lqg;->j:Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 2958
    :try_start_1
    iget-object v5, p3, Lqg;->j:Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 2959
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2960
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwk;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_2
    move-object v2, v3

    :goto_1
    if-nez v1, :cond_3

    if-eqz v2, :cond_6

    .line 2967
    :cond_3
    iget-wide v3, p3, Lqg;->e:J

    invoke-static {p1, p2, v3, v4}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    .line 2968
    instance-of p3, p1, Lza;

    if-eqz p3, :cond_6

    .line 2969
    check-cast p1, Lza;

    if-eqz v1, :cond_4

    .line 2971
    iput-object v1, p1, Lza;->k:Lwk;

    :cond_4
    if-eqz v2, :cond_5

    .line 2974
    iput-object v2, p1, Lza;->j:Lwk;

    :cond_5
    return-object p1

    :cond_6
    if-nez v0, :cond_b

    .line 2982
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_a

    const-class p1, Ljava/lang/Long;

    if-ne p2, p1, :cond_7

    goto :goto_3

    .line 2987
    :cond_7
    const-class p1, Ljava/math/BigDecimal;

    if-ne p2, p1, :cond_8

    .line 2988
    const-class p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p0

    .line 2989
    sget-object p1, Lxe;->a:Lxe;

    if-eq p0, p1, :cond_b

    goto :goto_2

    .line 2992
    :cond_8
    const-class p1, Ljava/math/BigInteger;

    if-ne p2, p1, :cond_9

    .line 2993
    const-class p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p0

    .line 2994
    sget-object p1, Lxf;->a:Lxf;

    if-eq p0, p1, :cond_b

    goto :goto_2

    .line 2997
    :cond_9
    const-class p1, Ljava/util/Date;

    if-ne p2, p1, :cond_b

    .line 2998
    const-class p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p0

    .line 2999
    sget-object p1, Lxp;->o:Lxp;

    if-eq p0, p1, :cond_b

    :goto_2
    move-object v0, p0

    goto :goto_4

    .line 2983
    :cond_a
    :goto_3
    const-class p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p0

    .line 2984
    sget-object p1, Lyi;->a:Lyi;

    if-eq p0, p1, :cond_b

    goto :goto_2

    :cond_b
    :goto_4
    return-object v0
.end method

.method private static synthetic a(Ljava/lang/Class;Lzx;Ljava/lang/Class;Ljava/lang/String;Lqg;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 569
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 573
    :cond_0
    new-instance p0, Lqg;

    invoke-direct {p0}, Lqg;-><init>()V

    .line 574
    invoke-virtual {p1, p0, p2, p5}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 575
    iget-object p1, p0, Lqg;->a:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 577
    sget-object p1, Lcom/alibaba/fastjson2/aj;->CamelCase:Lcom/alibaba/fastjson2/aj;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/aj;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Laax;->a(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 580
    :cond_1
    iget-object p2, p0, Lqg;->k:Ljava/lang/Class;

    if-eqz p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 582
    iget-object p0, p0, Lqg;->k:Ljava/lang/Class;

    iput-object p0, p4, Lqg;->k:Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1608
    check-cast p0, Ljava/util/Map;

    .line 1609
    check-cast p1, Ljava/util/Map;

    .line 1611
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1612
    check-cast v0, Ljava/util/Map$Entry;

    .line 1613
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsu;",
            ">;>;",
            "Ljava/lang/String;",
            "Lsu;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 3155
    invoke-direct {p0, p3}, Lxa;->a(Lsu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 3156
    invoke-virtual {p3}, Lsu;->c()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3158
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, L-$$Lambda$xa$6YhZuLpB7knu5kQJt538TVhF4Lo;

    invoke-direct {v0, p3}, L-$$Lambda$xa$6YhZuLpB7knu5kQJt538TVhF4Lo;-><init>(Lsu;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsu;

    if-eqz p2, :cond_1

    .line 3160
    invoke-virtual {p2, p3}, Lsu;->a(Lsu;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2, p4}, Lsu;->b(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 3161
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3164
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic a(Lqg;JLjava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;Ljava/lang/reflect/Method;)V
    .locals 10

    move-object v6, p1

    .line 1593
    invoke-virtual {p1}, Lqg;->b()V

    .line 1594
    iget-wide v0, v6, Lqg;->e:J

    or-long/2addr v0, p2

    iput-wide v0, v6, Lqg;->e:J

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v7, p11

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 1595
    invoke-virtual/range {v0 .. v9}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Lqg;Ljava/lang/reflect/Method;Ljava/util/Map;Lzx;)V

    return-void
.end method

.method private synthetic a(Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;Ljava/lang/reflect/Field;)V
    .locals 9

    move-object v5, p1

    .line 1557
    invoke-virtual {p1}, Lqg;->b()V

    .line 1558
    iget-wide v0, v5, Lqg;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, v5, Lqg;->e:J

    .line 1559
    iget-wide v0, v5, Lqg;->e:J

    or-long/2addr v0, p2

    iput-wide v0, v5, Lqg;->e:J

    move-object v0, p4

    .line 1560
    iput-object v0, v5, Lqg;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v6, p11

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1562
    invoke-virtual/range {v0 .. v8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqg;Ljava/lang/reflect/Field;Ljava/util/Map;Lzx;)V

    return-void
.end method

.method private synthetic a(Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;Lqe;Ljava/lang/reflect/Field;)V
    .locals 10

    move-object v9, p1

    .line 1567
    invoke-virtual {p1}, Lqg;->b()V

    .line 1568
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v9, Lqg;->f:Z

    .line 1569
    iget-wide v0, v9, Lqg;->e:J

    or-long/2addr v0, p2

    iput-wide v0, v9, Lqg;->e:J

    move-object v0, p4

    .line 1570
    iput-object v0, v9, Lqg;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object v5, p1

    move-object/from16 v6, p12

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 1572
    invoke-virtual/range {v0 .. v8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqg;Ljava/lang/reflect/Field;Ljava/util/Map;Lzx;)V

    .line 1573
    iget-boolean v0, v9, Lqg;->q:Z

    if-eqz v0, :cond_3

    .line 1574
    iget-object v0, v9, Lqg;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1575
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1576
    :cond_1
    invoke-virtual/range {p12 .. p12}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    move-object/from16 v0, p11

    .line 1578
    invoke-virtual {v0, v1}, Lqe;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private synthetic a(Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;Ljava/lang/reflect/Method;)V
    .locals 10

    move-object v6, p1

    .line 1585
    invoke-virtual {p1}, Lqg;->b()V

    .line 1586
    iget-wide v0, v6, Lqg;->e:J

    or-long/2addr v0, p2

    iput-wide v0, v6, Lqg;->e:J

    move-object v0, p4

    .line 1587
    iput-object v0, v6, Lqg;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v7, p12

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    .line 1588
    invoke-virtual/range {v0 .. v9}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Lqg;Ljava/lang/reflect/Method;Ljava/util/Map;Lzx;)V

    return-void
.end method

.method private synthetic a(Lqg;Lzx;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lqe;ILjava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)V
    .locals 26

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p3

    move-object/from16 v12, p8

    move-object/from16 v11, p10

    .line 407
    invoke-virtual/range {p1 .. p1}, Lqg;->b()V

    move-object/from16 v0, p2

    .line 408
    invoke-virtual {v0, v14, v13, v11}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 410
    iget-boolean v0, v14, Lqg;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, v14, Lqg;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v16, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v14, Lqg;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 432
    :cond_1
    iget-object v0, v14, Lqg;->a:Ljava/lang/String;

    move-object/from16 v10, p5

    :cond_2
    :goto_0
    move-object v9, v0

    goto :goto_4

    .line 417
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 418
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v1, v16

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_7

    .line 420
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    if-eq v1, v3, :cond_6

    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v10, p5

    if-ne v1, v10, :cond_6

    const-class v1, Lqc;

    .line 421
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_2

    move-object/from16 v1, p6

    iget-wide v3, v1, Lqe;->m:J

    sget-object v1, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    move-object/from16 v10, p5

    move/from16 v1, p7

    .line 429
    invoke-static {v0, v1}, Laax;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 435
    :goto_4
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 436
    iget v4, v14, Lqg;->d:I

    iget-wide v5, v14, Lqg;->e:J

    iget-object v7, v14, Lqg;->b:Ljava/lang/String;

    iget-object v8, v14, Lqg;->o:Ljava/util/Locale;

    iget-object v3, v14, Lqg;->n:Ljava/lang/String;

    iget-object v14, v14, Lqg;->p:Ljava/lang/String;

    .line 446
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v16

    .line 447
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p5

    move-object v10, v3

    move-object v3, v9

    move-object v15, v9

    move-object v9, v10

    move-object v10, v14

    move-object v14, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 p1, v15

    move-object v15, v13

    move-object/from16 v13, p10

    move-object/from16 v14, v18

    .line 436
    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v0

    move-object/from16 v13, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p8

    .line 451
    invoke-direct {v13, v12, v11, v0, v15}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    return-void

    :cond_8
    move-object/from16 v24, v11

    move-object v11, v9

    move-object/from16 v9, v24

    move-object/from16 v25, v15

    move-object v15, v13

    move-object/from16 v13, v25

    .line 455
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v17, v0, v16

    .line 456
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v18, v0, v16

    .line 458
    invoke-virtual {v9, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 460
    iget v4, v14, Lqg;->d:I

    iget-wide v5, v14, Lqg;->e:J

    iget-object v7, v14, Lqg;->b:Ljava/lang/String;

    iget-object v8, v14, Lqg;->o:Ljava/util/Locale;

    iget-object v3, v14, Lqg;->n:Ljava/lang/String;

    iget-object v2, v14, Lqg;->p:Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v20, v2

    move-object/from16 v2, p9

    move-object/from16 v21, v3

    move-object v3, v11

    move-object/from16 v9, v21

    move-object/from16 v10, v20

    move-object/from16 v22, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object v15, v13

    move-object/from16 v13, p10

    move-object v15, v14

    move-object/from16 v14, v19

    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v0

    move-object/from16 v14, p0

    move-object/from16 v13, p3

    move-object/from16 v12, p8

    move-object/from16 v11, v22

    .line 475
    invoke-direct {v14, v12, v11, v0, v13}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    .line 477
    iget-object v0, v15, Lqg;->g:[Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 478
    iget-object v10, v15, Lqg;->g:[Ljava/lang/String;

    array-length v9, v10

    move/from16 v8, v16

    :goto_5
    if-ge v8, v9, :cond_a

    aget-object v7, v10, v8

    .line 479
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v22, v8

    move/from16 v21, v9

    move-object/from16 v20, v10

    move-object/from16 v19, v11

    move-object v3, v12

    move-object v2, v13

    move-object v1, v14

    goto :goto_6

    .line 483
    :cond_9
    iget v4, v15, Lqg;->d:I

    iget-wide v5, v15, Lqg;->e:J

    iget-object v3, v15, Lqg;->b:Ljava/lang/String;

    iget-object v2, v15, Lqg;->o:Ljava/util/Locale;

    iget-object v1, v15, Lqg;->n:Ljava/lang/String;

    iget-object v0, v15, Lqg;->p:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object/from16 v1, p5

    move-object/from16 v21, v2

    move-object/from16 v2, p9

    move-object/from16 v22, v3

    move-object v3, v7

    move-object/from16 v23, v7

    move-object/from16 v7, v22

    move/from16 v22, v8

    move-object/from16 v8, v21

    move/from16 v21, v9

    move-object/from16 v9, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object v15, v13

    move-object/from16 v13, p10

    move-object v15, v14

    move-object/from16 v14, v16

    .line 485
    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v0

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    move-object v1, v15

    move-object/from16 v4, v23

    .line 483
    invoke-direct {v1, v3, v4, v0, v2}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    :goto_6
    add-int/lit8 v8, v22, 0x1

    move-object/from16 v15, p1

    move-object v14, v1

    move-object v13, v2

    move-object v12, v3

    move-object/from16 v11, v19

    move-object/from16 v10, v20

    move/from16 v9, v21

    goto :goto_5

    :cond_a
    move-object v1, v14

    return-void
.end method

.method private static synthetic a(Lsu;Lsu;)Z
    .locals 0

    .line 3158
    invoke-virtual {p1, p0}, Lsu;->b(Lsu;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/Map;)[Lsu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsu;",
            ">;>;)[",
            "Lsu;"
        }
    .end annotation

    .line 3170
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;->INSTANCE:L-$$Lambda$ELa4mwFKMxkEdBKF9BCDXSaSYVU;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    .line 3171
    new-array v0, v0, [Lsu;

    .line 3172
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, L-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;->INSTANCE:L-$$Lambda$seyL25CSW2NInOydsTbSDrNW6pM;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3173
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic lambda$-jZeapEafs-3TQbGGa0eadBL0ak(Lxa;Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;Lqe;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lxa;->a(Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;Lqe;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic lambda$6YhZuLpB7knu5kQJt538TVhF4Lo(Lsu;Lsu;)Z
    .locals 0

    invoke-static {p0, p1}, Lxa;->a(Lsu;Lsu;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$9VFBz4Z9sEpkpcMNym0fovZOSC4(Lxa;Lqg;JLjava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lxa;->a(Lqg;JLjava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$DGAYm_I14mD3xVenJtLfXWmf6C8(Ljava/lang/Class;Lzx;Ljava/lang/Class;Ljava/lang/String;Lqg;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lxa;->a(Ljava/lang/Class;Lzx;Ljava/lang/Class;Ljava/lang/String;Lqg;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$Lc2gINfa-tenaZRjW_TIv9Vg4qo(Lxa;Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lxa;->a(Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$Ykx1mQ5S312f2RKZrRStrubrGUw(Lxa;Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lxa;->a(Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic lambda$b1n3ujyZgYlgoS_KZ3tI_qhJ860(Lxa;Lqg;Lzx;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lqe;ILjava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lxa;->a(Lqg;Lzx;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lqe;ILjava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public static synthetic lambda$gY1vPvIh6pYdrRVSRTj1HZZkysw(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lxa;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$nos0UPYOg4MbS0H0refAcMD2dqI(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lxa;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 8

    .line 3091
    invoke-static {p1}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 3093
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 3094
    sget-object v2, Lxa;->e:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxa$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3100
    iget-object v4, v2, Lxa$a;->b:Ljava/lang/invoke/MethodType;

    .line 3101
    iget-object v5, v2, Lxa$a;->d:Ljava/lang/invoke/MethodType;

    .line 3102
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v6, :cond_0

    .line 3103
    iget-object v3, v2, Lxa$a;->c:Ljava/lang/invoke/MethodType;

    :cond_0
    move-object v2, v5

    goto :goto_0

    .line 3106
    :cond_1
    sget-object v2, Labo;->u:Ljava/lang/invoke/MethodType;

    .line 3107
    sget-object v4, Labo;->t:Ljava/lang/invoke/MethodType;

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    :goto_0
    if-nez v3, :cond_2

    .line 3111
    invoke-static {v1, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 3115
    :cond_2
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p1, p3, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p3

    .line 3116
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p2, v3, v5

    invoke-static {v1, p1, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-string v1, "accept"

    move-object v3, v4

    move-object v4, p3

    .line 3117
    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 3127
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 3128
    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3130
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "create fieldReader error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected a(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)Ljava/util/function/Function;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TI;>;)",
            "Ljava/util/function/Function<",
            "TI;TT;>;"
        }
    .end annotation

    .line 1767
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 1768
    invoke-static {p1}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1770
    :try_start_0
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 1771
    invoke-virtual {v0, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 1772
    invoke-static {p1, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-string v1, "apply"

    .line 1773
    sget-object v2, Labo;->m:Ljava/lang/invoke/MethodType;

    sget-object v3, Labo;->w:Ljava/lang/invoke/MethodType;

    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1781
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1783
    iget-object p2, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1784
    iput-object p1, p0, Lxa;->d:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs a(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/util/function/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 273
    :goto_0
    new-instance v0, Lsr;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lsr;-><init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/util/function/Function;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/function/Function<",
            "TI;TT;>;"
        }
    .end annotation

    .line 1791
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1792
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 1794
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 1795
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "apply"

    .line 1796
    sget-object v3, Labo;->m:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->w:Ljava/lang/invoke/MethodType;

    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1804
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1806
    iget-object p2, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1807
    iput-object p1, p0, Lxa;->d:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs a(Ljava/lang/reflect/Method;[Ljava/lang/String;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 248
    new-instance v0, Lst;

    invoke-direct {v0, p1, p2}, Lst;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Ljava/lang/reflect/Constructor;)Ljava/util/function/IntFunction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/util/function/IntFunction<",
            "TT;>;"
        }
    .end annotation

    .line 1675
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 1676
    invoke-static {p1}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1678
    :try_start_0
    sget-object v1, Labo;->E:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 1679
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-string v1, "apply"

    .line 1680
    sget-object v2, Labo;->q:Ljava/lang/invoke/MethodType;

    sget-object v3, Labo;->G:Ljava/lang/invoke/MethodType;

    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1688
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/IntFunction;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1690
    iget-object v0, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1691
    iput-object p1, p0, Lxa;->d:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/reflect/Method;)Ljava/util/function/IntFunction;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/IntFunction<",
            "TT;>;"
        }
    .end annotation

    .line 1698
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1699
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 1701
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 1702
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "apply"

    .line 1703
    sget-object v3, Labo;->q:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->G:Ljava/lang/invoke/MethodType;

    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1711
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/IntFunction;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1713
    iget-object v0, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1714
    iput-object p1, p0, Lxa;->d:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Constructor;Z)Ljava/util/function/Supplier;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            "Z)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1647
    sget-boolean v0, Lxa;->a:Z

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 1650
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    .line 1651
    invoke-static {p2}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1653
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1654
    sget-object v1, Labo;->D:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, p2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    const-string v1, "get"

    .line 1655
    sget-object v2, Labo;->l:Ljava/lang/invoke/MethodType;

    sget-object v3, Labo;->v:Ljava/lang/invoke/MethodType;

    sget-object v5, Labo;->v:Ljava/lang/invoke/MethodType;

    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p2

    .line 1663
    invoke-virtual {p2}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    invoke-polymorphic {p2}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Supplier;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1666
    iget-object v0, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1667
    iput-object p2, p0, Lxa;->d:Ljava/lang/Throwable;

    .line 1671
    :cond_0
    new-instance p2, Lss;

    invoke-direct {p2, p1}, Lss;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p2
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lsu;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lsu;"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 1866
    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;)Lsu;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Parameter;",
            "Laai;",
            ")",
            "Lsu;"
        }
    .end annotation

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    .line 1933
    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;Lwk;)Lsu;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;Lwk;)Lsu;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Parameter;",
            "Laai;",
            "Lwk;",
            ")",
            "Lsu;"
        }
    .end annotation

    move-object/from16 v2, p8

    move-object/from16 v11, p14

    if-eqz v11, :cond_0

    .line 1966
    new-instance v12, Lvy;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lvy;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Laai;)V

    .line 1977
    iput-object v11, v12, Lvy;->y:Lwk;

    return-object v12

    .line 1981
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_c

    const-class v0, Ljava/lang/Byte;

    if-ne v2, v0, :cond_1

    goto/16 :goto_6

    .line 1985
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_b

    const-class v0, Ljava/lang/Short;

    if-ne v2, v0, :cond_2

    goto/16 :goto_5

    .line 1989
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_a

    const-class v0, Ljava/lang/Integer;

    if-ne v2, v0, :cond_3

    goto/16 :goto_4

    .line 1993
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v0, :cond_9

    const-class v0, Ljava/lang/Long;

    if-ne v2, v0, :cond_4

    goto :goto_3

    .line 1999
    :cond_4
    instance-of v0, v2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 2000
    invoke-static {p2}, Lcom/alibaba/fastjson2/al;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/al;

    move-result-object v0

    move-object v3, p1

    move-object/from16 v4, p11

    move-object/from16 v7, p12

    invoke-static {v0, p1, v4, v7, v2}, Laax;->a(Lcom/alibaba/fastjson2/al;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2002
    invoke-static {v0}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object/from16 v7, p12

    move-object v0, v1

    :cond_6
    :goto_0
    if-nez v0, :cond_7

    move-object v4, v2

    goto :goto_1

    :cond_7
    move-object v4, v0

    :goto_1
    if-nez v1, :cond_8

    move-object/from16 v5, p9

    goto :goto_2

    :cond_8
    move-object v5, v1

    .line 2012
    :goto_2
    new-instance v0, Lvy;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    move-object/from16 v12, p13

    invoke-direct/range {v2 .. v12}, Lvy;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Laai;)V

    return-object v0

    :cond_9
    :goto_3
    move-object/from16 v7, p12

    .line 1994
    new-instance v0, Lvc;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Lvc;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Laai;)V

    return-object v0

    :cond_a
    :goto_4
    move-object/from16 v7, p12

    .line 1990
    new-instance v0, Luu;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Luu;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Laai;)V

    return-object v0

    :cond_b
    :goto_5
    move-object/from16 v7, p12

    .line 1986
    new-instance v0, Lun;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Lun;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Laai;)V

    return-object v0

    :cond_c
    :goto_6
    move-object/from16 v7, p12

    .line 1982
    new-instance v0, Lvk;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p13

    invoke-direct/range {v2 .. v11}, Lvk;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Parameter;IJLjava/lang/String;Laai;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lwk;)Lsu;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Lwk;",
            ")",
            "Lsu<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v13, p13

    move-object/from16 v11, p14

    if-eqz v0, :cond_1

    .line 2461
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, v3, :cond_1

    .line 2463
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    .line 2464
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2466
    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2468
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal defaultValue : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    move-object v9, v0

    const/4 v0, 0x0

    if-eqz p10, :cond_2

    .line 2473
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2474
    invoke-static/range {p10 .. p10}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object v1

    .line 2475
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2476
    invoke-static {v1, v3}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :cond_2
    move-object v12, v0

    :goto_1
    const/4 v1, 0x1

    if-eqz v13, :cond_3

    .line 2481
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang"

    .line 2482
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "java.time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2483
    invoke-virtual {v13, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_3
    if-eqz v11, :cond_4

    .line 2488
    new-instance v14, Lvw;

    const-wide/high16 v0, 0x8000000000000L

    or-long v5, p5, v0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-object/from16 v7, p7

    move-object v8, v9

    move-object v9, v12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lvw;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;)V

    .line 2489
    iput-object v11, v14, Lvw;->y:Lwk;

    return-object v14

    .line 2493
    :cond_4
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    .line 2494
    new-instance v8, Luw;

    move-object v5, v9

    check-cast v5, Ljava/lang/Integer;

    move-object v0, v8

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-object/from16 v4, p7

    move-object v6, v12

    move-object/from16 v7, p13

    invoke-direct/range {v0 .. v7}, Luw;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/String;Ljava/lang/Integer;Laai;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 2496
    :cond_5
    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_6

    .line 2497
    new-instance v10, Lur;

    move-object v7, v9

    check-cast v7, Ljava/lang/Integer;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lur;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Integer;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2500
    :cond_6
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    .line 2501
    new-instance v10, Lve;

    move-object v7, v9

    check-cast v7, Ljava/lang/Long;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lve;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Long;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2503
    :cond_7
    const-class v4, Ljava/lang/Long;

    if-ne v3, v4, :cond_8

    .line 2504
    new-instance v10, Luz;

    move-object v7, v9

    check-cast v7, Ljava/lang/Long;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Luz;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Long;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2507
    :cond_8
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_9

    .line 2508
    new-instance v10, Luo;

    move-object v7, v9

    check-cast v7, Ljava/lang/Short;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Luo;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Short;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2511
    :cond_9
    const-class v4, Ljava/lang/Short;

    if-ne v3, v4, :cond_a

    .line 2512
    new-instance v10, Luk;

    move-object v7, v9

    check-cast v7, Ljava/lang/Short;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Luk;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Short;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2515
    :cond_a
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_b

    .line 2516
    new-instance v10, Ltp;

    move-object v6, v9

    check-cast v6, Ljava/lang/Boolean;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object v7, v12

    move-object/from16 v8, p13

    invoke-direct/range {v0 .. v8}, Ltp;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Boolean;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2519
    :cond_b
    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_c

    .line 2520
    new-instance v10, Ltl;

    move-object v7, v9

    check-cast v7, Ljava/lang/Boolean;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Ltl;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Boolean;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2523
    :cond_c
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_d

    .line 2524
    new-instance v10, Lvl;

    move-object v7, v9

    check-cast v7, Ljava/lang/Byte;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lvl;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Byte;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2527
    :cond_d
    const-class v4, Ljava/lang/Byte;

    if-ne v3, v4, :cond_e

    .line 2528
    new-instance v10, Lvh;

    move-object v7, v9

    check-cast v7, Ljava/lang/Byte;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lvh;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Byte;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2531
    :cond_e
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_f

    .line 2532
    new-instance v10, Lug;

    move-object v7, v9

    check-cast v7, Ljava/lang/Float;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lug;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Float;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2534
    :cond_f
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_10

    .line 2535
    new-instance v10, Lud;

    move-object v7, v9

    check-cast v7, Ljava/lang/Float;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lud;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Float;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2538
    :cond_10
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_11

    .line 2539
    new-instance v10, Lua;

    move-object v7, v9

    check-cast v7, Ljava/lang/Double;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lua;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Double;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2541
    :cond_11
    const-class v4, Ljava/lang/Double;

    if-ne v3, v4, :cond_12

    .line 2542
    new-instance v10, Ltx;

    move-object v7, v9

    check-cast v7, Ljava/lang/Double;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Ltx;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Double;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2545
    :cond_12
    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_13

    .line 2546
    new-instance v10, Ltr;

    move-object v6, v9

    check-cast v6, Ljava/lang/Character;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object v7, v12

    move-object/from16 v8, p13

    invoke-direct/range {v0 .. v8}, Ltr;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Character;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2549
    :cond_13
    const-class v4, Ljava/math/BigDecimal;

    if-ne v3, v4, :cond_14

    .line 2550
    new-instance v10, Ltf;

    move-object v7, v9

    check-cast v7, Ljava/math/BigDecimal;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Ltf;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/math/BigDecimal;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2553
    :cond_14
    const-class v4, Ljava/math/BigInteger;

    if-ne v3, v4, :cond_15

    .line 2554
    new-instance v10, Lti;

    move-object v7, v9

    check-cast v7, Ljava/math/BigInteger;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lti;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/math/BigInteger;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2557
    :cond_15
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_16

    .line 2558
    new-instance v10, Lwc;

    move-object v7, v9

    check-cast v7, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lwc;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/String;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2561
    :cond_16
    const-class v4, Ljava/util/Date;

    if-ne v3, v4, :cond_17

    .line 2562
    new-instance v14, Ltv;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Ltv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2565
    :cond_17
    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v3, v4, :cond_18

    .line 2566
    new-instance v8, Lsw;

    move-object v5, v9

    check-cast v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, v8

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-object/from16 v4, p7

    move-object v6, v12

    move-object/from16 v7, p13

    invoke-direct/range {v0 .. v7}, Lsw;-><init>(Ljava/lang/String;Ljava/lang/Class;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Laai;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 2569
    :cond_18
    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v3, v4, :cond_19

    .line 2570
    new-instance v8, Ltd;

    move-object v0, v8

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-object/from16 v5, p7

    move-object v6, v12

    move-object/from16 v7, p13

    invoke-direct/range {v0 .. v7}, Ltd;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;ILjava/lang/String;Laai;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 2575
    :cond_19
    instance-of v4, v2, Ljava/lang/Class;

    if-nez v4, :cond_1a

    .line 2576
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/al;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/al;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-static {v4, v5, v13, v2}, Laax;->a(Lcom/alibaba/fastjson2/al;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 2577
    invoke-static {v4}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    goto :goto_2

    :cond_1a
    move-object v4, v0

    move-object v5, v4

    .line 2580
    :goto_2
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    .line 2581
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_21

    .line 2582
    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    const/4 v8, 0x0

    if-eqz v7, :cond_1e

    .line 2583
    move-object v7, v4

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .line 2584
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 2586
    array-length v14, v7

    if-ne v14, v1, :cond_1e

    .line 2587
    aget-object v7, v7, v8

    .line 2588
    invoke-static {v7}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v8

    .line 2589
    const-class v0, Ljava/lang/String;

    if-ne v8, v0, :cond_1d

    if-eqz v6, :cond_1c

    .line 2591
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v0, p5, v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1b

    .line 2592
    new-instance v14, Lvp;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/String;

    const/4 v11, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lvp;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Laai;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 2595
    :cond_1b
    new-instance v10, Ltt;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Ltt;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2598
    :cond_1c
    new-instance v14, Lvp;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/String;

    const/4 v11, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lvp;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Laai;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 2601
    :cond_1d
    new-instance v14, Lvp;

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lvp;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Laai;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 2619
    :cond_1e
    instance-of v1, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1f

    .line 2620
    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 2621
    array-length v4, v1

    if-lez v4, :cond_1f

    .line 2622
    aget-object v0, v1, v8

    :cond_1f
    if-nez v0, :cond_20

    .line 2626
    const-class v0, Ljava/lang/Object;

    :cond_20
    move-object v4, v0

    .line 2628
    invoke-static {v4}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 2630
    new-instance v14, Lvp;

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lvp;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/util/Collection;Laai;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 2646
    :cond_21
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2647
    instance-of v0, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_22

    .line 2648
    move-object v0, v4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 2649
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2651
    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    if-eqz v6, :cond_22

    .line 2652
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long v0, p5, v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_22

    .line 2653
    new-instance v10, Lvs;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lvs;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    :cond_22
    if-eqz v6, :cond_24

    .line 2660
    const-class v0, [I

    if-ne v3, v0, :cond_23

    .line 2661
    new-instance v10, Luv;

    move-object v7, v9

    check-cast v7, [I

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Luv;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;[ILaai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2664
    :cond_23
    const-class v0, [J

    if-ne v3, v0, :cond_24

    .line 2665
    new-instance v10, Lvd;

    move-object v7, v9

    check-cast v7, [J

    move-object v0, v10

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lvd;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;[JLaai;Ljava/lang/reflect/Field;)V

    return-object v10

    :cond_24
    if-eqz v5, :cond_26

    const-wide/high16 v0, 0x2000000000000L

    and-long v0, p5, v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_25

    .line 2670
    const-class v0, Ljava/util/Map;

    .line 2671
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2673
    new-instance v10, Lvs;

    move-object v0, v10

    move-object/from16 v1, p3

    move-object v2, v4

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lvs;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Field;)V

    return-object v10

    .line 2683
    :cond_25
    new-instance v11, Lvw;

    move-object v0, v11

    move-object/from16 v1, p3

    move-object v2, v4

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v9

    move-object v9, v12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lvw;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 2695
    :cond_26
    const-class v0, Ljava/time/LocalDateTime;

    if-ne v3, v0, :cond_27

    .line 2696
    new-instance v14, Lvr;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lvr;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2699
    :cond_27
    const-class v0, Ljava/time/ZonedDateTime;

    if-ne v3, v0, :cond_28

    .line 2700
    new-instance v14, Lwg;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lwg;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2703
    :cond_28
    const-class v0, Ljava/time/Instant;

    if-ne v3, v0, :cond_29

    .line 2704
    new-instance v14, Luj;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Luj;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2707
    :cond_29
    new-instance v11, Lvw;

    move-object v0, v11

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v9

    move-object v9, v12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Lvw;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;)V

    return-object v11
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            "Lwk;",
            ")",
            "Lsu;"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    const/4 v1, 0x1

    if-eqz v13, :cond_0

    .line 2031
    invoke-virtual {v13, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    if-eqz v0, :cond_2

    .line 2034
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_2

    .line 2036
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v4

    .line 2037
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2039
    invoke-interface {v4, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2041
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal defaultValue : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    move-object v9, v0

    const/4 v0, 0x0

    if-eqz p10, :cond_3

    .line 2046
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2047
    invoke-static/range {p10 .. p10}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object v4

    .line 2048
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2049
    invoke-static {v4, v3}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v4

    move-object v12, v4

    goto :goto_1

    :cond_3
    move-object v12, v0

    :goto_1
    if-eqz v14, :cond_4

    .line 2054
    new-instance v15, Lvv;

    const-wide/high16 v0, 0x8000000000000L

    or-long v5, p5, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 2068
    iput-object v14, v15, Lvv;->y:Lwk;

    return-object v15

    .line 2072
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_5

    .line 2073
    new-instance v10, Ltq;

    move-object v6, v9

    check-cast v6, Ljava/lang/Boolean;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object v7, v12

    move-object/from16 v8, p13

    invoke-direct/range {v0 .. v8}, Ltq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Boolean;Laai;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 2076
    :cond_5
    const-class v4, Ljava/lang/Boolean;

    if-ne v2, v4, :cond_6

    .line 2077
    new-instance v14, Ltn;

    check-cast v9, Ljava/lang/Boolean;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Ltn;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Boolean;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2080
    :cond_6
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_7

    .line 2081
    new-instance v14, Lvn;

    check-cast v9, Ljava/lang/Byte;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lvn;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Byte;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2084
    :cond_7
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_8

    .line 2085
    new-instance v14, Luq;

    check-cast v9, Ljava/lang/Short;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Luq;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2088
    :cond_8
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_9

    .line 2089
    new-instance v11, Luy;

    move-object v8, v9

    check-cast v8, Ljava/lang/Integer;

    move-object v0, v11

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v9, v12

    move-object/from16 v10, p13

    invoke-direct/range {v0 .. v10}, Luy;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Integer;Laai;Ljava/lang/reflect/Method;)V

    return-object v11

    .line 2092
    :cond_9
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_a

    .line 2093
    new-instance v14, Lvg;

    check-cast v9, Ljava/lang/Long;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lvg;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Long;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2096
    :cond_a
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_b

    .line 2097
    new-instance v14, Lui;

    check-cast v9, Ljava/lang/Float;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lui;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Float;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2100
    :cond_b
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_c

    .line 2101
    new-instance v14, Luc;

    check-cast v9, Ljava/lang/Double;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Luc;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Double;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2104
    :cond_c
    const-class v4, Ljava/lang/Byte;

    if-ne v2, v4, :cond_d

    .line 2105
    new-instance v14, Lvj;

    check-cast v9, Ljava/lang/Byte;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lvj;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Byte;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2108
    :cond_d
    const-class v4, Ljava/lang/Short;

    if-ne v2, v4, :cond_e

    .line 2109
    new-instance v14, Lum;

    check-cast v9, Ljava/lang/Short;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lum;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2112
    :cond_e
    const-class v4, Ljava/lang/Integer;

    if-ne v2, v4, :cond_f

    .line 2113
    new-instance v10, Lut;

    move-object v7, v9

    check-cast v7, Ljava/lang/Integer;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lut;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Integer;Laai;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 2116
    :cond_f
    const-class v4, Ljava/lang/Long;

    if-ne v2, v4, :cond_10

    .line 2117
    new-instance v10, Lvb;

    move-object v7, v9

    check-cast v7, Ljava/lang/Long;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Lvb;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Long;Laai;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 2120
    :cond_10
    const-class v4, Ljava/lang/Float;

    if-ne v2, v4, :cond_11

    .line 2121
    new-instance v10, Luf;

    move-object v7, v9

    check-cast v7, Ljava/lang/Float;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v9}, Luf;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Float;Laai;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 2124
    :cond_11
    const-class v4, Ljava/lang/Double;

    if-ne v2, v4, :cond_12

    .line 2125
    new-instance v10, Ltz;

    move-object v6, v9

    check-cast v6, Ljava/lang/Double;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object v7, v12

    move-object/from16 v8, p13

    invoke-direct/range {v0 .. v8}, Ltz;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Double;Laai;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 2128
    :cond_12
    const-class v4, Ljava/math/BigDecimal;

    if-ne v3, v4, :cond_13

    .line 2129
    new-instance v14, Lth;

    check-cast v9, Ljava/math/BigDecimal;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lth;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/math/BigDecimal;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2132
    :cond_13
    const-class v4, Ljava/math/BigInteger;

    if-ne v3, v4, :cond_14

    .line 2133
    new-instance v14, Ltk;

    check-cast v9, Ljava/math/BigInteger;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Ltk;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/math/BigInteger;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2136
    :cond_14
    const-class v4, Ljava/lang/String;

    if-ne v2, v4, :cond_15

    .line 2137
    new-instance v14, Lwe;

    check-cast v9, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lwe;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/String;Laai;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 2140
    :cond_15
    const-class v4, Ljava/time/LocalDate;

    if-ne v2, v4, :cond_16

    .line 2141
    new-instance v14, Lvq;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lvq;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2157
    :cond_16
    const-class v4, Ljava/time/OffsetDateTime;

    if-ne v2, v4, :cond_17

    .line 2158
    new-instance v14, Lvz;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lvz;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2174
    :cond_17
    const-class v4, Ljava/util/UUID;

    if-ne v2, v4, :cond_18

    .line 2175
    new-instance v14, Lwf;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lwf;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2191
    :cond_18
    const-class v4, [Ljava/lang/String;

    if-ne v2, v4, :cond_19

    .line 2192
    new-instance v14, Lwb;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lwb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2210
    :cond_19
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_1b

    move-object/from16 v4, p2

    instance-of v5, v4, Ljava/lang/Class;

    if-nez v5, :cond_1a

    goto :goto_2

    :cond_1a
    move-object/from16 v5, p1

    move-object v4, v0

    move-object v6, v4

    goto :goto_3

    :cond_1b
    move-object/from16 v4, p2

    .line 2211
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/al;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/al;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-static {v4, v5, v13, v2}, Laax;->a(Lcom/alibaba/fastjson2/al;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 2212
    invoke-static {v4}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 2215
    :goto_3
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v7

    if-nez v7, :cond_27

    .line 2216
    const-class v7, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v3, v7, :cond_1c

    .line 2217
    new-instance v0, Lsz;

    move-object/from16 p5, v0

    move-object/from16 p6, p3

    move-object/from16 p7, p12

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    invoke-direct/range {p5 .. p10}, Lsz;-><init>(Ljava/lang/String;Ljava/lang/Class;ILaai;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 2220
    :cond_1c
    const-class v7, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v3, v7, :cond_1d

    .line 2221
    new-instance v0, Ltb;

    move-object/from16 p5, v0

    move-object/from16 p6, p3

    move-object/from16 p7, p12

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    invoke-direct/range {p5 .. p10}, Ltb;-><init>(Ljava/lang/String;Ljava/lang/Class;ILaai;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 2224
    :cond_1d
    const-class v7, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v3, v7, :cond_1e

    .line 2225
    new-instance v0, Lsy;

    move-object/from16 p5, v0

    move-object/from16 p6, p3

    move-object/from16 p7, p12

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    invoke-direct/range {p5 .. p10}, Lsy;-><init>(Ljava/lang/String;Ljava/lang/Class;ILaai;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 2228
    :cond_1e
    const-class v7, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v3, v7, :cond_1f

    .line 2229
    new-instance v0, Lta;

    move-object/from16 p5, v0

    move-object/from16 p6, p3

    move-object/from16 p7, p12

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    invoke-direct/range {p5 .. p10}, Lta;-><init>(Ljava/lang/String;Ljava/lang/Class;ILaai;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 2232
    :cond_1f
    const-class v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v3, v7, :cond_20

    .line 2233
    new-instance v0, Lsx;

    move-object/from16 p5, v0

    move-object/from16 p6, p3

    move-object/from16 p7, p12

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    invoke-direct/range {p5 .. p10}, Lsx;-><init>(Ljava/lang/String;Ljava/lang/Class;ILaai;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 2236
    :cond_20
    const-class v7, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v3, v7, :cond_21

    .line 2237
    new-instance v7, Lte;

    move-object v0, v7

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-object v5, v12

    move-object/from16 v6, p13

    invoke-direct/range {v0 .. v6}, Lte;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;ILaai;Ljava/lang/reflect/Method;)V

    return-object v7

    .line 2240
    :cond_21
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    const-string v8, "get"

    if-eqz v7, :cond_24

    .line 2242
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2243
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 2244
    sget-object v0, Lcom/alibaba/fastjson2/aj;->CamelCase:Lcom/alibaba/fastjson2/aj;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/aj;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laax;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_22
    move-object v10, v0

    .line 2247
    new-instance v11, Ltu;

    if-eqz v4, :cond_23

    move-object v2, v4

    :cond_23
    move-object v0, v11

    move-object/from16 v1, p3

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v12

    move-object/from16 v9, p13

    .line 2249
    invoke-direct/range {v0 .. v10}, Ltu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 2260
    :cond_24
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 2262
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2263
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2264
    sget-object v0, Lcom/alibaba/fastjson2/aj;->CamelCase:Lcom/alibaba/fastjson2/aj;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/aj;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Laax;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_25
    move-object v10, v0

    .line 2267
    new-instance v11, Lvt;

    move-object v0, v11

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v10}, Lvt;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 2280
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_27

    return-object v0

    .line 2285
    :cond_27
    const-class v5, Ljava/util/List;

    const/4 v7, 0x0

    if-eq v3, v5, :cond_29

    const-class v5, Ljava/util/ArrayList;

    if-eq v3, v5, :cond_29

    const-class v5, Ljava/util/LinkedList;

    if-eq v3, v5, :cond_29

    .line 2288
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v8, "cn.hutool.json.JSONArray"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_4

    :cond_28
    move v5, v7

    goto :goto_5

    :cond_29
    :goto_4
    move v5, v1

    :goto_5
    if-eqz v5, :cond_2c

    .line 2290
    instance-of v0, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2b

    .line 2291
    move-object v0, v4

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 2292
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2293
    array-length v5, v0

    if-ne v5, v1, :cond_2b

    .line 2294
    aget-object v5, v0, v7

    .line 2295
    invoke-static {v5}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v7

    .line 2297
    const-class v0, Ljava/lang/String;

    if-ne v7, v0, :cond_2a

    .line 2298
    new-instance v16, Lvo;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object v2, v4

    move-object/from16 v3, p12

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v15}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v16

    .line 2301
    :cond_2a
    new-instance v16, Lvo;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v6

    move-object v4, v5

    move-object v5, v7

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v15}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v16

    .line 2304
    :cond_2b
    new-instance v16, Lvo;

    const-class v4, Ljava/lang/Object;

    const-class v5, Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v15}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v16

    .line 2307
    :cond_2c
    const-class v5, Ljava/util/Date;

    if-ne v3, v5, :cond_2d

    .line 2308
    new-instance v14, Ltv;

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v12, p13

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Ltv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2311
    :cond_2d
    const-class v5, [Ljava/lang/StackTraceElement;

    if-ne v3, v5, :cond_2f

    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Throwable;

    if-ne v5, v6, :cond_2f

    .line 2312
    new-instance v14, Lwa;

    if-eqz v4, :cond_2e

    move-object v2, v4

    :cond_2e
    const/4 v15, 0x0

    .line 2314
    sget-object v16, L-$$Lambda$ZDanZEOAaFnh8NlhDLThj1XvjHo;->INSTANCE:L-$$Lambda$ZDanZEOAaFnh8NlhDLThj1XvjHo;

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v15

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lwa;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v14

    :cond_2f
    const-wide/high16 v5, 0x2000000000000L

    and-long v5, p5, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_30

    .line 2330
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "set"

    .line 2331
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2332
    sget-object v0, Lcom/alibaba/fastjson2/aj;->CamelCase:Lcom/alibaba/fastjson2/aj;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/aj;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Laax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2333
    invoke-virtual/range {p13 .. p13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v0}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2335
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_30
    move-object v14, v0

    .line 2342
    new-instance v15, Lvv;

    if-eqz v4, :cond_31

    move-object v2, v4

    :cond_31
    const/16 v16, 0x0

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v3, p12

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v10, v12

    move-object/from16 v11, p13

    move-object v12, v14

    move-object/from16 v13, v16

    .line 2344
    invoke-direct/range {v0 .. v13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v15
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lwk;)Lsu;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Laai;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;",
            "Lwk;",
            ")",
            "Lsu;"
        }
    .end annotation

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v14, p15

    if-eqz v14, :cond_0

    .line 2747
    new-instance v15, Lvv;

    const-wide/high16 v0, 0x8000000000000L

    or-long v5, p7, v0

    const/4 v12, 0x0

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 2761
    iput-object v14, v15, Lvv;->y:Lwk;

    return-object v15

    .line 2765
    :cond_0
    const-class v0, Ljava/lang/Integer;

    if-ne v3, v0, :cond_1

    .line 2766
    new-instance v12, Lus;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lus;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2769
    :cond_1
    const-class v0, Ljava/lang/Long;

    if-ne v3, v0, :cond_2

    .line 2770
    new-instance v12, Lva;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lva;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2773
    :cond_2
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_3

    .line 2774
    new-instance v12, Lwd;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lwd;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2777
    :cond_3
    const-class v0, Ljava/lang/Boolean;

    if-ne v3, v0, :cond_4

    .line 2778
    new-instance v12, Ltm;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Ltm;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2781
    :cond_4
    const-class v0, Ljava/lang/Short;

    if-ne v3, v0, :cond_5

    .line 2782
    new-instance v12, Lul;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lul;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2785
    :cond_5
    const-class v0, Ljava/lang/Byte;

    if-ne v3, v0, :cond_6

    .line 2786
    new-instance v12, Lvi;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lvi;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2789
    :cond_6
    const-class v0, Ljava/math/BigDecimal;

    if-ne v3, v0, :cond_7

    .line 2790
    new-instance v12, Ltg;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Ltg;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2793
    :cond_7
    const-class v0, Ljava/math/BigInteger;

    if-ne v3, v0, :cond_8

    .line 2794
    new-instance v12, Ltj;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Ltj;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2797
    :cond_8
    const-class v0, Ljava/lang/Float;

    if-ne v3, v0, :cond_9

    .line 2798
    new-instance v12, Lue;

    move-object/from16 v8, p11

    check-cast v8, Ljava/lang/Float;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lue;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Float;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2801
    :cond_9
    const-class v0, Ljava/lang/Double;

    if-ne v3, v0, :cond_a

    .line 2802
    new-instance v12, Lty;

    move-object/from16 v8, p11

    check-cast v8, Ljava/lang/Double;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lty;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Double;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2805
    :cond_a
    const-class v0, Ljava/lang/Number;

    if-ne v3, v0, :cond_b

    .line 2806
    new-instance v12, Lvu;

    move-object/from16 v8, p11

    check-cast v8, Ljava/lang/Number;

    move-object v0, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lvu;-><init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Number;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v12

    .line 2809
    :cond_b
    const-class v0, Ljava/util/Date;

    if-ne v3, v0, :cond_c

    .line 2810
    new-instance v14, Ltv;

    const/4 v11, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v0 .. v13}, Ltv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V

    return-object v14

    .line 2816
    :cond_c
    instance-of v0, v2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    if-nez p2, :cond_d

    goto :goto_0

    .line 2821
    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/al;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/al;

    move-result-object v1

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v13, p13

    .line 2823
    invoke-static {v1, v0, v13, v2}, Laax;->a(Lcom/alibaba/fastjson2/al;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2824
    invoke-static {v0}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    goto :goto_1

    :cond_e
    move-object/from16 v13, p13

    move-object v4, v1

    move-object v5, v4

    .line 2827
    :goto_1
    const-class v0, Ljava/util/List;

    if-eq v3, v0, :cond_11

    const-class v0, Ljava/util/ArrayList;

    if-ne v3, v0, :cond_f

    goto :goto_2

    :cond_f
    if-eqz v4, :cond_10

    .line 2847
    new-instance v14, Lvx;

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object v2, v4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Lvx;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lwk;)V

    return-object v14

    .line 2850
    :cond_10
    new-instance v14, Lvx;

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object v13, v15

    invoke-direct/range {v0 .. v13}, Lvx;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lwk;)V

    return-object v14

    .line 2828
    :cond_11
    :goto_2
    const-class v0, Ljava/lang/Object;

    .line 2829
    const-class v1, Ljava/lang/Object;

    .line 2830
    instance-of v2, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_12

    .line 2831
    move-object v2, v4

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 2832
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 2834
    array-length v3, v2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_12

    const/4 v0, 0x0

    .line 2835
    aget-object v0, v2, v0

    .line 2836
    invoke-static {v0}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 2837
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_12

    .line 2838
    new-instance v16, Lvo;

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v16

    :cond_12
    move-object v6, v0

    move-object v7, v1

    .line 2843
    new-instance v16, Lvo;

    const/4 v14, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lvo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-object v16
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)Lsu;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;)",
            "Lsu;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 2727
    invoke-virtual/range {v0 .. v15}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lwk;)Lsu;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lwk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 881
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    const/4 v1, 0x0

    .line 877
    invoke-virtual {p0, p1, p1, v1, v0}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/Class;JLjava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)Lwk;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lsu;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 770
    invoke-virtual/range {v0 .. v8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/Class;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)Lwk;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "J",
            "Laai;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lsu;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v9, p8

    if-eqz p1, :cond_1

    .line 783
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 784
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 785
    :cond_0
    new-instance v10, Lwx;

    const/4 v3, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    return-object v10

    .line 789
    :cond_1
    array-length v0, v9

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 859
    new-instance v10, Lwx;

    const/4 v3, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    return-object v10

    .line 845
    :pswitch_0
    new-instance v13, Lwt;

    aget-object v7, v9, v5

    aget-object v8, v9, v4

    aget-object v10, v9, v3

    aget-object v11, v9, v2

    aget-object v12, v9, v1

    const/4 v0, 0x5

    aget-object v14, v9, v0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    invoke-direct/range {v0 .. v12}, Lwt;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;JLaai;Ljava/util/function/Function;Lsu;Lsu;Lsu;Lsu;Lsu;Lsu;)V

    return-object v13

    .line 832
    :pswitch_1
    new-instance v12, Lws;

    aget-object v7, v9, v5

    aget-object v8, v9, v4

    aget-object v10, v9, v3

    aget-object v11, v9, v2

    aget-object v13, v9, v1

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object v9, v10

    move-object v10, v11

    move-object v11, v13

    invoke-direct/range {v0 .. v11}, Lws;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;JLaai;Ljava/util/function/Function;Lsu;Lsu;Lsu;Lsu;Lsu;)V

    return-object v12

    .line 820
    :pswitch_2
    new-instance v11, Lwr;

    aget-object v7, v9, v5

    aget-object v8, v9, v4

    aget-object v10, v9, v3

    aget-object v12, v9, v2

    move-object v0, v11

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v9, v10

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Lwr;-><init>(Ljava/lang/Class;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;Lsu;Lsu;Lsu;Lsu;)V

    return-object v11

    .line 809
    :pswitch_3
    new-instance v10, Lwq;

    aget-object v7, v9, v5

    aget-object v8, v9, v4

    aget-object v9, v9, v3

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v9}, Lwq;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;JLaai;Ljava/util/function/Function;Lsu;Lsu;Lsu;)V

    return-object v10

    .line 800
    :pswitch_4
    new-instance v10, Lwp;

    aget-object v7, v9, v5

    aget-object v8, v9, v4

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lwp;-><init>(Ljava/lang/Class;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;Lsu;Lsu;)V

    return-object v10

    .line 791
    :pswitch_5
    new-instance v8, Lwl;

    aget-object v7, v9, v5

    move-object v0, v8

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lwl;-><init>(Ljava/lang/Class;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;Lsu;)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lsu;)Lwk;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Lsu;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 353
    invoke-virtual {p0, p1}, Lxa;->b(Ljava/lang/Class;)Ljava/util/function/Supplier;

    move-result-object v2

    .line 354
    new-instance v8, Lzy;

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lzy;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lsu;)V

    return-object v8
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/reflect/Method;Lzx;)Lwk;
    .locals 11

    .line 2858
    new-instance v0, Lqg;

    invoke-direct {v0}, Lqg;-><init>()V

    .line 2860
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [Ljava/lang/Enum;

    .line 2862
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz v7, :cond_4

    .line 2863
    array-length v4, v7

    if-ge v3, v4, :cond_4

    .line 2864
    aget-object v4, v7, v3

    .line 2865
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 2866
    invoke-static {v5}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v8

    .line 2867
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    :try_start_0
    invoke-virtual {v0}, Lqg;->b()V

    .line 2871
    invoke-virtual {p1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 2872
    invoke-virtual {p3, v0, p1, v6}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 2873
    iget-object v6, v0, Lqg;->a:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 2874
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2875
    invoke-static {v6}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v5

    .line 2876
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2878
    :cond_0
    iget-object v5, v0, Lqg;->g:[Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 2879
    iget-object v5, v0, Lqg;->g:[Ljava/lang/String;

    array-length v6, v5

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_3

    aget-object v9, v5, v8

    if-eqz v9, :cond_2

    .line 2880
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_2

    .line 2883
    :cond_1
    invoke-static {v9}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v9

    .line 2884
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v1, v9, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_3
    if-eqz v7, :cond_5

    .line 2891
    array-length v3, v7

    if-ge v0, v3, :cond_5

    .line 2892
    aget-object v3, v7, v0

    .line 2893
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 2894
    invoke-static {v4}, Labc;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 2895
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2898
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v8, v0, [J

    .line 2901
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    add-int/lit8 v5, v3, 0x1

    .line 2902
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, v8, v3

    move v3, v5

    goto :goto_4

    .line 2904
    :cond_6
    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    .line 2907
    invoke-static {p1, p3}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2908
    iget-object v3, p3, Lzx;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 2909
    invoke-virtual {p3, p1}, Lzx;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2911
    invoke-static {v3, p3}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object p3

    .line 2912
    instance-of v3, p3, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_7

    .line 2914
    :try_start_1
    invoke-interface {p3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object v5, p3

    goto :goto_6

    .line 2917
    :cond_7
    instance-of v3, p3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_8

    .line 2919
    :try_start_2
    invoke-interface {p3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    :cond_8
    move-object v5, v0

    .line 2926
    :goto_6
    array-length p3, v8

    new-array v6, p3, [Ljava/lang/Enum;

    .line 2927
    :goto_7
    array-length p3, v8

    if-ge v2, p3, :cond_9

    .line 2928
    aget-wide v3, v8, v2

    .line 2929
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Enum;

    .line 2930
    aput-object p3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2933
    :cond_9
    new-instance p3, Lxt;

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lxt;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Member;[Ljava/lang/Enum;[Ljava/lang/Enum;[J)V

    return-object p3
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lzx;Lqe;)Lwk;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lzx;",
            "Lqe;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v7, p4

    .line 391
    iget-object v0, v7, Lqe;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, v7, Lqe;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v11, v0}, Lxa;->c(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    .line 394
    iget-object v13, v7, Lqe;->c:Ljava/lang/Class;

    .line 396
    iget-object v0, v7, Lqe;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "with"

    :cond_2
    move-object v5, v0

    .line 400
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 402
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 405
    new-instance v2, Lqg;

    invoke-direct {v2}, Lqg;-><init>()V

    .line 406
    new-instance v10, L-$$Lambda$xa$b1n3ujyZgYlgoS_KZ3tI_qhJ860;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p1

    move-object v6, v13

    move-object/from16 v7, p4

    move-object v9, v14

    move-object v15, v10

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, L-$$Lambda$xa$b1n3ujyZgYlgoS_KZ3tI_qhJ860;-><init>(Lxa;Lqg;Lzx;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Lqe;ILjava/util/Map;Ljava/lang/reflect/Type;)V

    const/4 v0, 0x0

    invoke-static {v13, v0, v15}, Laax;->a(Ljava/lang/Class;ZLjava/util/function/Consumer;)V

    .line 504
    invoke-virtual {v11, v13}, Lxa;->b(Ljava/lang/Class;)Ljava/util/function/Supplier;

    move-result-object v4

    const-wide/16 v2, 0x0

    .line 505
    invoke-direct {v11, v14}, Lxa;->a(Ljava/util/Map;)[Lsu;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v5, v12

    invoke-virtual/range {v0 .. v6}, Lxa;->a(Ljava/lang/Class;JLjava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Z",
            "Lzx;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    .line 900
    new-instance v11, Lqe;

    invoke-direct {v11}, Lqe;-><init>()V

    if-eqz p3, :cond_0

    .line 902
    iget-wide v1, v11, Lqe;->m:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, v11, Lqe;->m:J

    .line 905
    :cond_0
    iget-object v1, v8, Lzx;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsm;

    .line 906
    invoke-interface {v2}, Lsm;->a()Lsl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 908
    invoke-interface {v2, v11, v0}, Lsl;->a(Lqe;Ljava/lang/Class;)V

    goto :goto_0

    .line 912
    :cond_2
    iget-object v1, v11, Lqe;->w:Ljava/lang/Class;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    const-class v1, Lwk;

    iget-object v2, v11, Lqe;->w:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 914
    :try_start_0
    iget-object v0, v11, Lqe;->w:Ljava/lang/Class;

    new-array v1, v13, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 915
    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 916
    new-array v1, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 919
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "create deserializer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    if-eqz p3, :cond_4

    .line 924
    iget-wide v1, v11, Lqe;->m:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, v11, Lqe;->m:J

    .line 927
    :cond_4
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v11, Lqe;->k:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_5

    iget-object v1, v11, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v1

    if-ne v1, v12, :cond_6

    .line 928
    :cond_5
    iget-object v1, v11, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v10, v0, v1, v8}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;Lzx;)Lwk;

    move-result-object v0

    return-object v0

    .line 931
    :cond_6
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 933
    iget-wide v1, v11, Lqe;->m:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, v11, Lqe;->m:J

    move v1, v13

    goto :goto_2

    :cond_7
    move/from16 v1, p3

    :goto_2
    if-eqz v1, :cond_8

    .line 936
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_8

    move v9, v13

    goto :goto_3

    :cond_8
    move v9, v1

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v11

    move v5, v9

    move-object/from16 v6, p4

    .line 940
    invoke-virtual/range {v1 .. v6}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lqe;ZLzx;)[Lsu;

    move-result-object v15

    move v1, v13

    .line 942
    :goto_4
    array-length v2, v15

    if-ge v1, v2, :cond_a

    .line 943
    aget-object v2, v15, v1

    .line 944
    invoke-virtual {v2}, Lsu;->c()Z

    move-result v2

    if-nez v2, :cond_9

    move v14, v13

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move v14, v12

    .line 950
    :goto_5
    iget-object v1, v11, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_2d

    iget-object v1, v11, Lqe;->k:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_b

    move-object v1, v7

    goto/16 :goto_16

    .line 954
    :cond_b
    iget-object v1, v11, Lqe;->c:Ljava/lang/Class;

    if-eqz v1, :cond_c

    .line 955
    invoke-virtual {v10, v0, v7, v8, v11}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lzx;Lqe;)Lwk;

    move-result-object v0

    return-object v0

    .line 960
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 961
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, L-$$Lambda$PvPxr1z-e1j1TSG1tRgBkGsXcOQ;

    invoke-direct {v1, v6}, L-$$Lambda$PvPxr1z-e1j1TSG1tRgBkGsXcOQ;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Laax;->d(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 963
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 964
    new-instance v1, Lxc;

    invoke-direct {v1, v0, v6, v15}, Lxc;-><init>(Ljava/lang/Class;Ljava/util/List;[Lsu;)V

    return-object v1

    .line 969
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v16, 0x0

    move v3, v13

    move-object/from16 v4, v16

    move-object/from16 v17, v4

    const/4 v5, -0x1

    .line 972
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_13

    .line 973
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 975
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v17, v2

    :cond_e
    if-eqz v1, :cond_f

    .line 980
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v13

    if-ne v13, v12, :cond_f

    .line 981
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    const/16 v18, 0x0

    aget-object v13, v13, v18

    invoke-virtual {v1, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object v13, v2

    goto :goto_8

    :cond_f
    if-nez v4, :cond_10

    goto :goto_7

    .line 988
    :cond_10
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v13

    if-nez v13, :cond_11

    goto :goto_7

    .line 991
    :cond_11
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v13

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v12

    if-ge v13, v12, :cond_12

    :goto_7
    move-object v4, v2

    move v5, v3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_6

    :cond_13
    move-object v13, v4

    move v3, v5

    :goto_8
    const/4 v1, -0x1

    if-eq v3, v1, :cond_14

    .line 998
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_14
    if-eqz v13, :cond_28

    .line 1001
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v11, Lqe;->f:[Ljava/lang/Class;

    if-nez v1, :cond_28

    .line 1002
    invoke-static/range {p1 .. p1}, Laax;->g(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    .line 1004
    invoke-virtual {v13, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1005
    iget-object v2, v11, Lqe;->l:[Ljava/lang/String;

    if-eqz v1, :cond_15

    if-nez v2, :cond_15

    .line 1007
    invoke-static/range {p1 .. p1}, Laax;->a(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v2

    :cond_15
    if-eqz v2, :cond_18

    .line 1010
    array-length v1, v2

    if-nez v1, :cond_16

    goto :goto_9

    :cond_16
    move-object v12, v2

    :cond_17
    move-object/from16 v23, v6

    goto :goto_b

    .line 1011
    :cond_18
    :goto_9
    invoke-static {v13}, Lrv;->a(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v12

    .line 1013
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v5

    .line 1014
    new-instance v4, Lqg;

    invoke-direct {v4}, Lqg;-><init>()V

    const/4 v3, 0x0

    .line 1015
    :goto_a
    array-length v1, v5

    if-ge v3, v1, :cond_17

    array-length v1, v12

    if-ge v3, v1, :cond_17

    .line 1016
    invoke-virtual {v4}, Lqg;->b()V

    .line 1018
    aget-object v20, v5, v3

    move-object/from16 v1, p4

    move-object v2, v4

    move/from16 v21, v3

    move-object/from16 v3, p1

    move-object v7, v4

    move-object v4, v13

    move-object/from16 v22, v5

    move/from16 v5, v21

    move-object/from16 v23, v6

    move-object/from16 v6, v20

    .line 1020
    invoke-virtual/range {v1 .. v6}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    .line 1021
    iget-object v1, v7, Lqg;->a:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 1022
    iget-object v1, v7, Lqg;->a:Ljava/lang/String;

    aput-object v1, v12, v21

    :cond_19
    add-int/lit8 v3, v21, 0x1

    move-object v4, v7

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, p2

    goto :goto_a

    :goto_b
    if-eqz v17, :cond_1d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1029
    :goto_c
    array-length v3, v12

    if-ge v1, v3, :cond_1e

    .line 1030
    aget-object v3, v12, v1

    if-nez v3, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v4, 0x0

    .line 1035
    :goto_d
    array-length v5, v15

    if-ge v4, v5, :cond_1c

    .line 1036
    aget-object v5, v15, v4

    if-eqz v5, :cond_1b

    .line 1038
    iget-object v5, v5, Lsu;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1c
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1d
    const/4 v2, 0x0

    :cond_1e
    if-nez v9, :cond_28

    .line 1047
    const-class v1, Ljava/lang/Throwable;

    .line 1048
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_28

    if-nez v17, :cond_28

    array-length v1, v12

    if-eq v2, v1, :cond_28

    .line 1051
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 1052
    new-instance v7, Lqg;

    invoke-direct {v7}, Lqg;-><init>()V

    const/4 v5, 0x0

    .line 1053
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v6, v1, v2

    move-object/from16 v1, p4

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v13

    invoke-virtual/range {v1 .. v6}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    .line 1054
    iget-wide v1, v7, Lqg;->e:J

    const-wide/high16 v3, 0x1000000000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_22

    .line 1055
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1056
    invoke-virtual {v13}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v14, v3, v2

    .line 1059
    iget-object v2, v7, Lqg;->p:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, v7, Lqg;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1060
    iget-object v2, v7, Lqg;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object v2

    .line 1061
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1062
    invoke-static {v2, v14}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_f

    :cond_1f
    move-object/from16 v19, v16

    .line 1066
    :goto_f
    iget-object v2, v7, Lqg;->n:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 1067
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v14, :cond_21

    .line 1069
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v3

    .line 1070
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 1072
    invoke-interface {v3, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_10

    .line 1074
    :cond_20
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal defaultValue : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_10
    move-object/from16 v18, v2

    .line 1078
    new-instance v2, Lzp;

    iget-wide v3, v7, Lqg;->e:J

    iget-object v5, v7, Lqg;->b:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v11, v2

    move-object/from16 v12, p1

    move-object v6, v13

    move-object v13, v1

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v20, v6

    invoke-direct/range {v11 .. v22}, Lzp;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v2

    :cond_22
    move-object v6, v13

    if-eqz v14, :cond_25

    .line 1093
    array-length v1, v15

    if-eqz v1, :cond_25

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    .line 1094
    :goto_11
    array-length v2, v12

    if-ge v1, v2, :cond_25

    .line 1095
    aget-object v2, v12, v1

    .line 1096
    array-length v3, v15

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_24

    aget-object v5, v15, v4

    .line 1097
    iget-object v7, v5, Lsu;->h:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_23

    iget-object v7, v5, Lsu;->h:Ljava/lang/reflect/Field;

    .line 1098
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, v5, Lsu;->b:Ljava/lang/String;

    .line 1099
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1101
    iget-object v2, v5, Lsu;->b:Ljava/lang/String;

    aput-object v2, v12, v1

    goto :goto_13

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_24
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1110
    :cond_25
    sget-boolean v1, Lxa;->a:Z

    if-eqz v1, :cond_27

    .line 1111
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 1112
    invoke-static {v6}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object v1

    move-object/from16 v19, v1

    move-object/from16 v20, v16

    goto :goto_14

    .line 1113
    :cond_26
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 1114
    invoke-static {v6}, Laat;->c(Ljava/lang/reflect/Constructor;)Ljava/util/function/BiFunction;

    move-result-object v1

    move-object/from16 v20, v1

    move-object/from16 v19, v16

    goto :goto_14

    :cond_27
    move-object/from16 v19, v16

    move-object/from16 v20, v19

    .line 1118
    :goto_14
    new-instance v9, Lsr;

    const/16 v21, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v23

    move-object/from16 v18, v6

    move-object/from16 v22, v12

    invoke-direct/range {v16 .. v22}, Lsr;-><init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v7

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v12

    .line 1127
    invoke-virtual/range {v1 .. v7}, Lxa;->a(Lzx;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Executable;[Ljava/lang/reflect/Parameter;[Ljava/lang/String;)[Lsu;

    move-result-object v20

    .line 1135
    new-instance v1, Lzv;

    iget-object v13, v11, Lqe;->a:Ljava/lang/String;

    iget-object v14, v11, Lqe;->b:Ljava/lang/String;

    iget-wide v2, v11, Lqe;->m:J

    const/16 v22, 0x0

    const/4 v4, 0x0

    move-object v11, v1

    move-object v5, v12

    move-object/from16 v12, p1

    move-object/from16 v21, v15

    move-wide v15, v2

    move-object/from16 v17, v9

    move-object/from16 v18, v23

    move-object/from16 v19, v5

    move-object/from16 v23, v4

    invoke-direct/range {v11 .. v23}, Lzv;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Function;Ljava/util/List;[Ljava/lang/String;[Lsu;[Lsu;[Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1

    :cond_28
    move-object/from16 v21, v15

    .line 1151
    iget-object v1, v11, Lqe;->f:[Ljava/lang/Class;

    if-eqz v1, :cond_29

    iget-object v1, v11, Lqe;->f:[Ljava/lang/Class;

    array-length v1, v1

    if-eqz v1, :cond_29

    .line 1152
    iget-object v3, v11, Lqe;->a:Ljava/lang/String;

    iget-object v4, v11, Lqe;->f:[Ljava/lang/Class;

    iget-object v5, v11, Lqe;->g:[Ljava/lang/String;

    iget-object v6, v11, Lqe;->h:Ljava/lang/Class;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Lxa;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lsu;)Lwk;

    move-result-object v0

    return-object v0

    .line 1162
    :cond_29
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1163
    new-instance v11, Lzt;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lzt;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    return-object v11

    .line 1174
    :cond_2a
    invoke-virtual/range {p0 .. p1}, Lxa;->b(Ljava/lang/Class;)Ljava/util/function/Supplier;

    move-result-object v7

    .line 1175
    iget-object v1, v11, Lqe;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object v1

    invoke-static {v1, v0}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v6

    .line 1176
    iget-object v3, v11, Lqe;->a:Ljava/lang/String;

    iget-wide v4, v11, Lqe;->m:J

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Lxa;->a(Ljava/lang/Class;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object v0

    .line 1185
    instance-of v1, v0, Lwz;

    if-eqz v1, :cond_2c

    .line 1187
    iget-object v1, v11, Lqe;->C:Ljava/lang/Class;

    if-eqz v1, :cond_2b

    .line 1189
    :try_start_1
    iget-object v1, v11, Lqe;->C:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    .line 1190
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1191
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/u$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_15

    :catch_4
    :cond_2b
    move-object/from16 v1, v16

    :goto_15
    if-eqz v1, :cond_2c

    .line 1198
    move-object v2, v0

    check-cast v2, Lwz;

    invoke-virtual {v2, v1}, Lwz;->a(Lcom/alibaba/fastjson2/u$a;)V

    :cond_2c
    return-object v0

    :cond_2d
    move-object/from16 v1, p2

    .line 951
    :goto_16
    invoke-virtual {v10, v0, v1, v8, v11}, Lxa;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lzx;Lqe;)Lwk;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Ljava/lang/Class;Ljava/util/function/Function;[Lsu;)Lwk;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;[",
            "Lsu;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 134
    new-instance v13, Lzv;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v12}, Lzv;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Function;Ljava/util/List;[Ljava/lang/String;[Lsu;[Lsu;[Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v13
.end method

.method public varargs a(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lwk;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    .line 116
    invoke-virtual {p0, p1, p2}, Lxa;->b(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    .line 119
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v6

    move-object v1, p0

    move-object v3, v8

    move-object v4, v8

    move-object v5, p1

    move-object v7, p2

    .line 118
    invoke-virtual/range {v1 .. v7}, Lxa;->a(Lzx;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Executable;[Ljava/lang/reflect/Parameter;[Ljava/lang/String;)[Lsu;

    move-result-object p1

    .line 126
    invoke-virtual {p0, v8, v0, p1}, Lxa;->a(Ljava/lang/Class;Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Lqg;Ljava/lang/reflect/Method;Ljava/util/Map;Lzx;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lqe;",
            "Lqg;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsu;",
            ">;>;",
            "Lzx;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v13, p6

    move-object/from16 v12, p7

    move-object/from16 v11, p8

    move-object/from16 v2, p9

    .line 1339
    invoke-virtual {v2, v13, v14, v12}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 1341
    iget-boolean v3, v13, Lqg;->f:Z

    if-eqz v3, :cond_0

    return-void

    .line 1346
    :cond_0
    iget-object v3, v13, Lqg;->a:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v13, Lqg;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1381
    :cond_1
    iget-object v0, v13, Lqg;->a:Ljava/lang/String;

    :cond_2
    :goto_0
    move-object v9, v0

    goto/16 :goto_5

    .line 1347
    :cond_3
    :goto_1
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "set"

    .line 1348
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1349
    invoke-static {v3, v0}, Laax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1351
    :cond_4
    invoke-static {v12, v0}, Laax;->a(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1355
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1357
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_3

    :cond_5
    move v6, v10

    :goto_3
    if-ne v3, v5, :cond_6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_6

    const/16 v7, 0x7a

    if-le v6, v7, :cond_7

    :cond_6
    if-le v3, v4, :cond_2

    const/16 v7, 0x41

    if-lt v6, v7, :cond_2

    const/16 v8, 0x5a

    if-gt v6, v8, :cond_2

    .line 1361
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_2

    if-gt v6, v8, :cond_2

    .line 1363
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    if-ne v3, v5, :cond_8

    .line 1365
    aget-char v7, v6, v10

    add-int/lit8 v7, v7, -0x20

    int-to-char v7, v7

    aput-char v7, v6, v10

    goto :goto_4

    .line 1367
    :cond_8
    aget-char v7, v6, v10

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    aput-char v7, v6, v10

    .line 1369
    :goto_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    .line 1370
    invoke-static {v14, v7}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1372
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1373
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    if-ne v3, v5, :cond_2

    .line 1375
    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v10

    iput-object v3, v13, Lqg;->g:[Ljava/lang/String;

    .line 1376
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_5
    if-eqz v1, :cond_c

    .line 1384
    array-length v0, v1

    if-lez v0, :cond_c

    move v0, v10

    .line 1386
    :goto_6
    array-length v3, v1

    if-ge v0, v3, :cond_b

    .line 1387
    aget-object v3, v1, v0

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1388
    iput v0, v13, Lqg;->d:I

    move v0, v5

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    move v0, v10

    :goto_7
    if-nez v0, :cond_c

    .line 1394
    iget v0, v13, Lqg;->d:I

    if-nez v0, :cond_c

    .line 1395
    array-length v0, v1

    iput v0, v13, Lqg;->d:I

    .line 1400
    :cond_c
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 1402
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1403
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v16

    .line 1404
    iget v5, v13, Lqg;->d:I

    iget-wide v6, v13, Lqg;->e:J

    iget-object v8, v13, Lqg;->b:Ljava/lang/String;

    iget-object v10, v13, Lqg;->o:Ljava/util/Locale;

    iget-object v4, v13, Lqg;->n:Ljava/lang/String;

    iget-object v3, v13, Lqg;->p:Ljava/lang/String;

    .line 1417
    invoke-virtual/range {p6 .. p6}, Lqg;->a()Lwk;

    move-result-object v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v3

    move-object/from16 v3, p2

    move-object/from16 v18, v4

    move-object v4, v9

    move-object/from16 v19, v9

    move-object v9, v10

    move-object/from16 v10, v18

    move-object v11, v13

    move-object v13, v12

    move-object v12, v0

    move-object v15, v13

    move-object/from16 v13, v16

    move-object/from16 v14, p7

    move-object/from16 v15, v17

    .line 1404
    invoke-virtual/range {v1 .. v15}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v0

    move-object/from16 v14, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p8

    move-object/from16 v9, v19

    .line 1419
    invoke-direct {v14, v11, v9, v0, v12}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    return-void

    :cond_d
    move-object/from16 v24, v15

    move-object v15, v12

    move-object v12, v14

    move-object/from16 v14, v24

    if-ne v0, v4, :cond_e

    .line 1424
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v2, v0, v5

    .line 1425
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v1, v0, v5

    .line 1426
    invoke-virtual {v15, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1427
    new-instance v9, Lsv;

    iget v3, v13, Lqg;->d:I

    iget-wide v4, v13, Lqg;->e:J

    iget-object v6, v13, Lqg;->b:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, v9

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lsv;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Method;)V

    .line 1428
    iget-object v0, v9, Lsv;->b:Ljava/lang/String;

    invoke-direct {v14, v9}, Lxa;->a(Lsu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1432
    :cond_e
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v10

    .line 1433
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v8, v1, v10

    .line 1434
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_11

    const-class v1, Ljava/util/Collection;

    move-object v3, v0

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1435
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    move-object v3, v0

    move v0, v10

    .line 1436
    :goto_8
    array-length v4, v1

    if-ge v0, v4, :cond_10

    .line 1437
    aget-object v4, v1, v0

    invoke-static {v4, v15}, Laax;->a(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1439
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1440
    array-length v6, v4

    if-ne v6, v5, :cond_f

    aget-object v6, v4, v10

    instance-of v6, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_f

    .line 1443
    aget-object v3, v4, v10

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_10
    move-object v6, v3

    goto :goto_9

    :cond_11
    move-object v6, v0

    .line 1450
    :goto_9
    invoke-static {v8}, Labo;->d(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 1454
    :cond_12
    invoke-static {v2, v6, v8, v13}, Lxa;->a(Lzx;Ljava/lang/reflect/Type;Ljava/lang/Class;Lqg;)Lwk;

    move-result-object v16

    const/16 v17, 0x0

    .line 1456
    iget-wide v0, v13, Lqg;->e:J

    const-wide/high16 v2, 0x40000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    goto :goto_a

    :cond_13
    move v5, v10

    :goto_a
    if-eqz v5, :cond_14

    .line 1459
    :try_start_0
    iget v5, v13, Lqg;->d:I

    iget-wide v3, v13, Lqg;->e:J

    iget-object v0, v13, Lqg;->b:Ljava/lang/String;

    iget-object v7, v13, Lqg;->o:Ljava/util/Locale;

    iget-object v2, v13, Lqg;->n:Ljava/lang/String;

    iget-object v1, v13, Lqg;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    move-wide/from16 v20, v3

    move-object/from16 v3, p2

    move-object v4, v9

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v6, v20

    move-object/from16 v20, v8

    move-object v8, v0

    move-object/from16 p3, v9

    move-object/from16 v9, v23

    move/from16 v21, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v18

    move-object/from16 v12, v22

    move-object/from16 v13, v20

    move-object/from16 v14, p7

    move-object/from16 v15, v16

    :try_start_1
    invoke-virtual/range {v1 .. v15}, Lxa;->b(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v17
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v15, p0

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v20, v8

    move-object/from16 p3, v9

    move/from16 v21, v10

    :goto_b
    move-object/from16 v15, p0

    .line 1475
    iget-object v1, v15, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1476
    iput-object v0, v15, Lxa;->d:Ljava/lang/Throwable;

    goto :goto_c

    :cond_14
    move-object/from16 v22, v6

    move-object/from16 v20, v8

    move-object/from16 p3, v9

    move/from16 v21, v10

    move-object v15, v14

    :goto_c
    if-nez v17, :cond_15

    move-object/from16 v14, p6

    .line 1481
    iget v5, v14, Lqg;->d:I

    iget-wide v6, v14, Lqg;->e:J

    iget-object v8, v14, Lqg;->b:Ljava/lang/String;

    iget-object v9, v14, Lqg;->o:Ljava/util/Locale;

    iget-object v10, v14, Lqg;->n:Ljava/lang/String;

    iget-object v11, v14, Lqg;->p:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v12, v22

    move-object/from16 v13, v20

    move-object/from16 v14, p7

    move-object/from16 v15, v16

    invoke-virtual/range {v1 .. v15}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v17

    :cond_15
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p8

    move-object/from16 v0, v17

    .line 1498
    invoke-direct {v15, v13, v12, v0, v14}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    move-object/from16 v11, p6

    .line 1500
    iget-object v0, v11, Lqg;->g:[Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 1501
    iget-object v0, v11, Lqg;->g:[Ljava/lang/String;

    array-length v10, v0

    move/from16 v9, v21

    :goto_d
    if-ge v9, v10, :cond_17

    aget-object v8, v0, v9

    .line 1502
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object/from16 v23, v0

    move/from16 v21, v9

    move/from16 v19, v10

    move-object/from16 v17, v12

    move-object v4, v13

    move-object v3, v14

    move-object v2, v15

    goto :goto_e

    .line 1506
    :cond_16
    iget v5, v11, Lqg;->d:I

    iget-wide v6, v11, Lqg;->e:J

    iget-object v4, v11, Lqg;->b:Ljava/lang/String;

    iget-object v3, v11, Lqg;->o:Ljava/util/Locale;

    iget-object v2, v11, Lqg;->n:Ljava/lang/String;

    iget-object v1, v11, Lqg;->p:Ljava/lang/String;

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move-object/from16 v3, p2

    move-object/from16 v21, v4

    move-object v4, v8

    move-object/from16 v23, v0

    move-object v0, v8

    move-object/from16 v8, v21

    move/from16 v21, v9

    move-object/from16 v9, v19

    move/from16 v19, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v20

    move-object/from16 v14, p7

    move-object/from16 v15, v16

    .line 1508
    invoke-virtual/range {v1 .. v15}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    .line 1506
    invoke-direct {v2, v4, v0, v1, v3}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    :goto_e
    add-int/lit8 v9, v21, 0x1

    move-object/from16 v11, p6

    move-object v15, v2

    move-object v14, v3

    move-object v13, v4

    move-object/from16 v12, v17

    move/from16 v10, v19

    move-object/from16 v0, v23

    goto :goto_d

    :cond_17
    move-object v2, v15

    return-void
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqg;Ljava/lang/reflect/Field;Ljava/util/Map;Lzx;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lqg;",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lsu;",
            ">;>;",
            "Lzx;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v13, p5

    move-object/from16 v12, p7

    move-object/from16 v11, p6

    move-object/from16 v2, p8

    .line 1235
    invoke-virtual {v2, v13, v14, v11}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 1237
    iget-boolean v3, v13, Lqg;->f:Z

    const/4 v4, 0x1

    const/16 v16, 0x0

    if-eqz v3, :cond_1

    .line 1238
    iget-wide v5, v13, Lqg;->e:J

    const-wide/high16 v7, 0x2000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    const-class v3, Ljava/util/Map;

    .line 1239
    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move/from16 v3, v16

    :goto_0
    if-nez v3, :cond_1

    return-void

    .line 1246
    :cond_1
    iget-object v3, v13, Lqg;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v13, Lqg;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1252
    :cond_2
    iget-object v0, v13, Lqg;->a:Ljava/lang/String;

    goto :goto_2

    .line 1247
    :cond_3
    :goto_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 1249
    invoke-static {v3, v0}, Laax;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v10, v0

    goto :goto_3

    :cond_4
    move-object v10, v3

    :goto_3
    if-eqz v1, :cond_7

    .line 1255
    array-length v0, v1

    if-lez v0, :cond_7

    move/from16 v0, v16

    .line 1257
    :goto_4
    array-length v3, v1

    if-ge v0, v3, :cond_6

    .line 1258
    aget-object v3, v1, v0

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1259
    iput v0, v13, Lqg;->d:I

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move/from16 v4, v16

    :goto_5
    if-nez v4, :cond_7

    .line 1265
    iget v0, v13, Lqg;->d:I

    if-nez v0, :cond_7

    .line 1266
    array-length v0, v1

    iput v0, v13, Lqg;->d:I

    .line 1271
    :cond_7
    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 1272
    invoke-virtual/range {p6 .. p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 1274
    invoke-static {v2, v9, v8, v13}, Lxa;->a(Lzx;Ljava/lang/reflect/Type;Ljava/lang/Class;Lqg;)Lwk;

    move-result-object v17

    .line 1275
    iget-object v0, v13, Lqg;->p:Ljava/lang/String;

    .line 1276
    iget-boolean v1, v13, Lqg;->q:Z

    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    const-string v0, "{\"required\":true}"

    :cond_8
    move-object/from16 v18, v0

    .line 1282
    iget v4, v13, Lqg;->d:I

    iget-wide v5, v13, Lqg;->e:J

    iget-object v7, v13, Lqg;->b:Ljava/lang/String;

    iget-object v3, v13, Lqg;->o:Ljava/util/Locale;

    iget-object v2, v13, Lqg;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    move-object/from16 v20, v3

    move-object v3, v10

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move-object v15, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move-object/from16 p3, v15

    move-object v15, v12

    move-object/from16 v12, v21

    move-object/from16 v13, p6

    move-object v15, v14

    move-object/from16 v14, v17

    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lwk;)Lsu;

    move-result-object v0

    move-object/from16 v12, p3

    move-object/from16 v13, p7

    move-object v14, v15

    move-object/from16 v15, p0

    .line 1298
    invoke-direct {v15, v13, v12, v0, v14}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    move-object/from16 v11, p5

    .line 1300
    iget-object v0, v11, Lqg;->g:[Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 1301
    iget-object v10, v11, Lqg;->g:[Ljava/lang/String;

    array-length v9, v10

    move/from16 v8, v16

    :goto_6
    if-ge v8, v9, :cond_a

    aget-object v7, v10, v8

    .line 1302
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move/from16 v16, v8

    move/from16 v22, v9

    move-object/from16 v19, v10

    move-object/from16 v24, v12

    move-object v3, v13

    move-object v2, v14

    move-object v1, v15

    goto :goto_7

    .line 1306
    :cond_9
    iget v4, v11, Lqg;->d:I

    iget-wide v5, v11, Lqg;->e:J

    const/16 v16, 0x0

    iget-object v3, v11, Lqg;->o:Ljava/util/Locale;

    iget-object v2, v11, Lqg;->n:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v2

    move-object/from16 v2, p2

    move-object/from16 v22, v3

    move-object v3, v7

    move-object/from16 v23, v7

    move-object/from16 v7, v16

    move/from16 v16, v8

    move-object/from16 v8, v22

    move/from16 v22, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move-object/from16 v24, v12

    move-object/from16 v12, v21

    move-object/from16 v13, p6

    move-object v15, v14

    move-object/from16 v14, v17

    .line 1308
    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Lwk;)Lsu;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v3, p7

    move-object v2, v15

    move-object/from16 v4, v23

    .line 1306
    invoke-direct {v1, v3, v4, v0, v2}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    :goto_7
    add-int/lit8 v8, v16, 0x1

    move-object/from16 v11, p5

    move-object v15, v1

    move-object v14, v2

    move-object v13, v3

    move-object/from16 v10, v19

    move/from16 v9, v22

    move-object/from16 v12, v24

    goto :goto_6

    :cond_a
    move-object v1, v15

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/reflect/Type;)[Lsu;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")[",
            "Lsu;"
        }
    .end annotation

    .line 1221
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1216
    invoke-virtual/range {v0 .. v5}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lqe;ZLzx;)[Lsu;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Class;Ljava/lang/reflect/Type;Lqe;ZLzx;)[Lsu;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lqe;",
            "Z",
            "Lzx;",
            ")[",
            "Lsu;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p5

    if-nez p3, :cond_2

    .line 1536
    new-instance v0, Lqe;

    invoke-direct {v0}, Lqe;-><init>()V

    .line 1537
    iget-object v1, v15, Lzx;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsm;

    .line 1538
    invoke-interface {v2}, Lsm;->a()Lsl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1540
    invoke-interface {v2, v0, v14}, Lsl;->a(Lqe;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    move-object v12, v0

    goto :goto_1

    :cond_2
    move-object/from16 v12, p3

    .line 1545
    :goto_1
    invoke-static/range {p1 .. p1}, Laax;->g(Ljava/lang/Class;)Z

    move-result v0

    .line 1546
    iget-object v11, v12, Lqe;->p:Ljava/lang/String;

    .line 1548
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1551
    iget-wide v8, v12, Lqe;->m:J

    .line 1552
    iget-object v7, v12, Lqe;->z:Ljava/lang/String;

    .line 1553
    new-instance v16, Lqg;

    invoke-direct/range {v16 .. v16}, Lqg;-><init>()V

    .line 1554
    iget-object v6, v12, Lqe;->r:[Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 1556
    new-instance v12, L-$$Lambda$xa$Ykx1mQ5S312f2RKZrRStrubrGUw;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-wide v3, v8

    move-object v5, v7

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v11

    move-object/from16 v9, v17

    move-object v11, v10

    move-object/from16 p3, v11

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, L-$$Lambda$xa$Ykx1mQ5S312f2RKZrRStrubrGUw;-><init>(Lxa;Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;)V

    invoke-static {v14, v12}, Laax;->b(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    goto/16 :goto_3

    :cond_3
    move-object/from16 v17, v6

    move-object/from16 p3, v10

    if-nez v0, :cond_4

    .line 1566
    new-instance v10, L-$$Lambda$xa$-jZeapEafs-3TQbGGa0eadBL0ak;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-wide v3, v8

    move-object v5, v7

    move-object/from16 v6, p1

    move-object/from16 v18, v7

    move-object/from16 v7, p2

    move-wide/from16 v19, v8

    move-object v8, v11

    move-object/from16 v9, v17

    move-object v13, v10

    move-object/from16 v10, p3

    move-object/from16 v21, v11

    move-object/from16 v11, p5

    move-object/from16 v22, v12

    invoke-direct/range {v0 .. v12}, L-$$Lambda$xa$-jZeapEafs-3TQbGGa0eadBL0ak;-><init>(Lxa;Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lzx;Lqe;)V

    invoke-static {v14, v13}, Laax;->b(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_4
    move-object/from16 v18, v7

    move-wide/from16 v19, v8

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    .line 1583
    :goto_2
    invoke-virtual {v15, v14}, Lzx;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v13

    .line 1584
    new-instance v12, L-$$Lambda$xa$Lc2gINfa-tenaZRjW_TIv9Vg4qo;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-wide/from16 v3, v19

    move-object/from16 v5, v18

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, v21

    move-object/from16 v9, v17

    move-object/from16 v10, v22

    move-object/from16 v11, p3

    move-object v15, v12

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, L-$$Lambda$xa$Lc2gINfa-tenaZRjW_TIv9Vg4qo;-><init>(Lxa;Lqg;JLjava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;)V

    invoke-static {v14, v13, v15}, Laax;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 1591
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1592
    new-instance v12, L-$$Lambda$xa$9VFBz4Z9sEpkpcMNym0fovZOSC4;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-wide/from16 v3, v19

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, v21

    move-object/from16 v8, v17

    move-object/from16 v9, v22

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, L-$$Lambda$xa$9VFBz4Z9sEpkpcMNym0fovZOSC4;-><init>(Lxa;Lqg;JLjava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;[Ljava/lang/String;Lqe;Ljava/util/Map;Lzx;)V

    invoke-static {v14, v12}, Laax;->f(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 1600
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1601
    invoke-static/range {p1 .. p1}, Laax;->h(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1602
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1603
    sget-object v2, L-$$Lambda$xa$nos0UPYOg4MbS0H0refAcMD2dqI;->INSTANCE:L-$$Lambda$xa$nos0UPYOg4MbS0H0refAcMD2dqI;

    const-string v3, "$super$"

    invoke-static {v3, v1, v0, v2}, Lzz;->a(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/BiConsumer;)Lsu;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1617
    invoke-direct {v1, v0}, Lxa;->a(Lsu;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 1620
    :goto_4
    invoke-direct {v1, v2}, Lxa;->a(Ljava/util/Map;)[Lsu;

    move-result-object v0

    return-object v0
.end method

.method public varargs a(Lzx;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Executable;[Ljava/lang/reflect/Parameter;[Ljava/lang/String;)[Lsu;
    .locals 25

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-eqz v7, :cond_0

    .line 184
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Executable;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v15, v0

    .line 187
    array-length v0, v8

    new-array v14, v0, [Lsu;

    const/4 v0, 0x0

    move v13, v0

    .line 188
    :goto_1
    array-length v0, v8

    if-ge v13, v0, :cond_8

    .line 189
    new-instance v10, Lqg;

    invoke-direct {v10}, Lqg;-><init>()V

    .line 191
    aget-object v22, v8, v13

    .line 193
    array-length v0, v9

    if-ge v13, v0, :cond_1

    .line 194
    aget-object v0, v9, v13

    goto :goto_2

    .line 196
    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v11, v0

    .line 199
    instance-of v12, v7, Ljava/lang/reflect/Constructor;

    if-eqz v12, :cond_2

    .line 200
    move-object v3, v7

    check-cast v3, Ljava/lang/reflect/Constructor;

    move-object/from16 v0, p1

    move-object v1, v10

    move-object v2, v15

    move v4, v13

    move-object/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    :cond_2
    if-eqz v12, :cond_3

    .line 204
    invoke-static {v15, v11}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {v6, v10, v15, v0}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 211
    :cond_3
    iget-object v0, v10, Lqg;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v10, Lqg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 214
    :cond_4
    iget-object v0, v10, Lqg;->a:Ljava/lang/String;

    goto :goto_4

    :cond_5
    :goto_3
    move-object v0, v11

    :goto_4
    const-string v1, "arg"

    if-nez v0, :cond_6

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-nez v11, :cond_7

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_5

    :cond_7
    move-object/from16 v20, v11

    .line 225
    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Parameter;->getParameterizedType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v6, v1, v2, v10}, Lxa;->a(Lzx;Ljava/lang/reflect/Type;Ljava/lang/Class;Lqg;)Lwk;

    move-result-object v24

    .line 226
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Parameter;->getParameterizedType()Ljava/lang/reflect/Type;

    move-result-object v18

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 227
    iget-wide v1, v10, Lqg;->e:J

    iget-object v3, v10, Lqg;->b:Ljava/lang/String;

    .line 235
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v19

    const/16 v23, 0x0

    move-object/from16 v10, p0

    move v4, v13

    move-object v13, v0

    move-object v0, v14

    move v14, v4

    move-object v5, v15

    move-wide v15, v1

    move-object/from16 v17, v3

    move-object/from16 v21, v5

    .line 227
    invoke-virtual/range {v10 .. v24}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;Lwk;)Lsu;

    move-result-object v1

    aput-object v1, v0, v4

    add-int/lit8 v13, v4, 0x1

    move-object v14, v0

    move-object v15, v5

    goto/16 :goto_1

    :cond_8
    move-object v0, v14

    return-object v0
.end method

.method protected b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 1721
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 1722
    invoke-static {p1}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1724
    :try_start_0
    sget-object v1, Labo;->F:Ljava/lang/invoke/MethodType;

    invoke-virtual {v0, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 1725
    const-class v1, Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    const-string v1, "apply"

    .line 1726
    sget-object v2, Labo;->m:Ljava/lang/invoke/MethodType;

    sget-object v3, Labo;->w:Ljava/lang/invoke/MethodType;

    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1734
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1736
    iget-object v0, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1737
    iput-object p1, p0, Lxa;->d:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs b(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/util/function/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 253
    new-instance v0, Lsr;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lsr;-><init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected b(Ljava/lang/reflect/Method;)Ljava/util/function/Function;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 1744
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1745
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 1747
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 1748
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "apply"

    .line 1749
    sget-object v3, Labo;->m:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->w:Ljava/lang/invoke/MethodType;

    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1757
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1759
    iget-object v0, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1760
    iput-object p1, p0, Lxa;->d:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Ljava/util/function/Supplier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 1624
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1628
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 1629
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    .line 1635
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    .line 1636
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    invoke-virtual {p0, v0, v2}, Lxa;->a(Ljava/lang/reflect/Constructor;Z)Ljava/util/function/Supplier;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 1640
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get constructor error, class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    return-object v1
.end method

.method protected b(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Lwk;)Lsu;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Method;",
            "Lwk;",
            ")",
            "Lsu;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v13, p13

    if-eqz v0, :cond_1

    .line 3022
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, v5, :cond_1

    .line 3024
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v2

    .line 3025
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3027
    invoke-interface {v2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 3029
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    move-object v11, v0

    const/4 v0, 0x0

    if-eqz p10, :cond_2

    .line 3034
    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3035
    invoke-static/range {p10 .. p10}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object v2

    .line 3036
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3037
    invoke-static {v2, v5}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v0

    :cond_2
    move-object v12, v0

    if-eqz p14, :cond_3

    .line 3042
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/function/BiConsumer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    move-object/from16 v15, p14

    .line 3043
    invoke-virtual/range {v0 .. v15}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lwk;)Lsu;

    move-result-object v0

    return-object v0

    .line 3046
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_4

    move-object/from16 v15, p0

    .line 3047
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqz;

    .line 3048
    new-instance v1, Lto;

    move-object/from16 p5, v1

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, v12

    move-object/from16 p9, p13

    move-object/from16 p10, v0

    invoke-direct/range {p5 .. p10}, Lto;-><init>(Ljava/lang/String;ILaai;Ljava/lang/reflect/Method;Lqz;)V

    return-object v1

    :cond_4
    move-object/from16 v15, p0

    .line 3051
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_5

    .line 3052
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lra;

    .line 3053
    new-instance v1, Lvm;

    move-object/from16 p5, v1

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, v12

    move-object/from16 p9, p13

    move-object/from16 p10, v0

    invoke-direct/range {p5 .. p10}, Lvm;-><init>(Ljava/lang/String;ILaai;Ljava/lang/reflect/Method;Lra;)V

    return-object v1

    .line 3056
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_6

    .line 3057
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lrd;

    .line 3058
    new-instance v14, Lup;

    move-object v7, v11

    check-cast v7, Ljava/lang/Short;

    move-object v0, v14

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v8, v12

    move-object/from16 v9, p13

    invoke-direct/range {v0 .. v10}, Lup;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Laai;Ljava/lang/reflect/Method;Lrd;)V

    return-object v14

    .line 3061
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_7

    .line 3062
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/ObjIntConsumer;

    .line 3063
    new-instance v1, Lux;

    move-object v2, v11

    check-cast v2, Ljava/lang/Integer;

    move-object/from16 p5, v1

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, v2

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    move-object/from16 p11, v0

    invoke-direct/range {p5 .. p11}, Lux;-><init>(Ljava/lang/String;ILjava/lang/Integer;Laai;Ljava/lang/reflect/Method;Ljava/util/function/ObjIntConsumer;)V

    return-object v1

    .line 3066
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_8

    .line 3067
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/ObjLongConsumer;

    .line 3068
    new-instance v1, Lvf;

    move-object v2, v11

    check-cast v2, Ljava/lang/Long;

    move-object/from16 p5, v1

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, v2

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    move-object/from16 p11, v0

    invoke-direct/range {p5 .. p11}, Lvf;-><init>(Ljava/lang/String;ILjava/lang/Long;Laai;Ljava/lang/reflect/Method;Ljava/util/function/ObjLongConsumer;)V

    return-object v1

    .line 3071
    :cond_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_9

    .line 3072
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lrb;

    .line 3073
    new-instance v8, Lts;

    move-object v4, v11

    check-cast v4, Ljava/lang/Character;

    move-object v0, v8

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object v5, v12

    move-object/from16 v6, p13

    invoke-direct/range {v0 .. v7}, Lts;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Character;Laai;Ljava/lang/reflect/Method;Lrb;)V

    return-object v8

    .line 3076
    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_a

    .line 3077
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrc;

    .line 3078
    new-instance v1, Luh;

    move-object v2, v11

    check-cast v2, Ljava/lang/Float;

    move-object/from16 p5, v1

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, v2

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    move-object/from16 p11, v0

    invoke-direct/range {p5 .. p11}, Luh;-><init>(Ljava/lang/String;ILjava/lang/Float;Laai;Ljava/lang/reflect/Method;Lrc;)V

    return-object v1

    .line 3081
    :cond_a
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_b

    .line 3082
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/ObjDoubleConsumer;

    .line 3083
    new-instance v1, Lub;

    move-object v2, v11

    check-cast v2, Ljava/lang/Double;

    move-object/from16 p5, v1

    move-object/from16 p6, p3

    move/from16 p7, p4

    move-object/from16 p8, v2

    move-object/from16 p9, v12

    move-object/from16 p10, p13

    move-object/from16 p11, v0

    invoke-direct/range {p5 .. p11}, Lub;-><init>(Ljava/lang/String;ILjava/lang/Double;Laai;Ljava/lang/reflect/Method;Ljava/util/function/ObjDoubleConsumer;)V

    return-object v1

    .line 3086
    :cond_b
    invoke-virtual {v15, v1, v5, v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/function/BiConsumer;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v13, p13

    move-object/from16 v15, v16

    .line 3087
    invoke-virtual/range {v0 .. v15}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lwk;)Lsu;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lzx;Lqe;)Lwk;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lzx;",
            "Lqe;",
            ")",
            "Lwk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p4

    .line 514
    new-instance v12, Lqg;

    invoke-direct {v12}, Lqg;-><init>()V

    .line 516
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 521
    iget-object v0, v13, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, v13, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    .line 523
    iget-object v1, v13, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 524
    iget-object v2, v13, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-static {v2}, Lrv;->a(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, v13, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    .line 527
    iget-object v1, v13, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 528
    iget-object v2, v13, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-static {v2}, Lrv;->a(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v10, v0

    move-object/from16 v16, v1

    move-object v9, v2

    const/16 v17, 0x0

    move/from16 v8, v17

    .line 531
    :goto_1
    array-length v0, v10

    const-wide/16 v18, 0x0

    const/4 v5, 0x1

    if-ge v8, v0, :cond_f

    .line 532
    invoke-virtual {v12}, Lqg;->b()V

    .line 534
    aget-object v20, v10, v8

    .line 536
    iget-object v0, v13, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 537
    iget-object v3, v13, Lqe;->i:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, p3

    move-object v1, v12

    move-object/from16 v2, p1

    move v4, v8

    move v6, v5

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    goto :goto_2

    :cond_1
    move v6, v5

    .line 539
    iget-object v3, v13, Lqe;->k:Ljava/lang/reflect/Method;

    move-object/from16 v0, p3

    move-object v1, v12

    move-object/from16 v2, p1

    move v4, v8

    move-object/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lzx;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;ILjava/lang/reflect/Parameter;)V

    .line 542
    :goto_2
    array-length v0, v10

    if-ne v0, v6, :cond_2

    iget-wide v0, v12, Lqg;->e:J

    const-wide/high16 v2, 0x1000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v18

    if-eqz v0, :cond_2

    move-object/from16 v25, v9

    move-object v0, v10

    move-object v2, v11

    move-object/from16 v29, v12

    move-object v1, v14

    goto/16 :goto_9

    .line 546
    :cond_2
    iget-object v0, v12, Lqg;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 547
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 548
    :cond_3
    iget-object v1, v13, Lqe;->l:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v13, Lqe;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v8, v1, :cond_4

    .line 549
    iget-object v0, v13, Lqe;->l:[Ljava/lang/String;

    aget-object v0, v0, v8

    :cond_4
    if-eqz v0, :cond_5

    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 553
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v6, "arg"

    if-eqz v0, :cond_9

    .line 556
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    .line 558
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v9, :cond_a

    .line 559
    array-length v1, v9

    if-le v1, v8, :cond_a

    .line 560
    aget-object v0, v9, v8

    goto :goto_4

    .line 563
    :cond_8
    aput-object v0, v9, v8

    goto :goto_4

    .line 557
    :cond_9
    :goto_3
    aget-object v0, v9, v8

    :cond_a
    :goto_4
    move-object v7, v0

    .line 567
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 568
    new-instance v4, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v23, v9

    move-object v9, v4

    move-object v4, v7

    move-object v13, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, L-$$Lambda$xa$DGAYm_I14mD3xVenJtLfXWmf6C8;-><init>(Ljava/lang/Class;Lzx;Ljava/lang/Class;Ljava/lang/String;Lqg;)V

    invoke-static {v14, v9}, Laax;->f(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    if-eqz v7, :cond_c

    .line 586
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move-object v9, v7

    goto :goto_6

    .line 587
    :cond_c
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 590
    :goto_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/reflect/Parameter;->getParameterizedType()Ljava/lang/reflect/Type;

    move-result-object v7

    move-object/from16 v5, p3

    .line 591
    invoke-static {v5, v7, v13, v12}, Lxa;->a(Lzx;Ljava/lang/reflect/Type;Ljava/lang/Class;Lqg;)Lwk;

    move-result-object v18

    .line 592
    iget-wide v3, v12, Lqg;->e:J

    iget-object v6, v12, Lqg;->b:Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v21, v3

    move-object v3, v9

    move v4, v8

    move-object/from16 v24, v6

    move-wide/from16 v5, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v24

    move/from16 v22, v8

    move-object/from16 v8, v21

    move-object/from16 v24, v9

    move-object/from16 v25, v23

    move-object v9, v13

    move-object/from16 v26, v10

    move-object/from16 v10, v24

    move-object/from16 v27, v11

    move-object/from16 v11, v16

    move-object/from16 v28, v12

    move-object/from16 v12, v20

    move-object/from16 v23, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v18

    invoke-virtual/range {v0 .. v14}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;Lwk;)Lsu;

    move-result-object v0

    .line 607
    invoke-direct {v15, v0}, Lxa;->a(Lsu;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v13, v24

    move-object/from16 v14, v27

    invoke-interface {v14, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v28

    .line 609
    iget-object v0, v12, Lqg;->g:[Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 610
    iget-object v11, v12, Lqg;->g:[Ljava/lang/String;

    array-length v10, v11

    move/from16 v9, v17

    :goto_7
    if-ge v9, v10, :cond_e

    aget-object v8, v11, v9

    .line 611
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v1, p1

    move/from16 v19, v9

    move/from16 v24, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object v2, v14

    goto :goto_8

    .line 615
    :cond_d
    iget-wide v5, v12, Lqg;->e:J

    iget-object v7, v12, Lqg;->b:Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v8

    move/from16 v4, v22

    move-object/from16 v27, v14

    move-object v14, v8

    move-object/from16 v8, v21

    move/from16 v19, v9

    move-object/from16 v9, v23

    move/from16 v24, v10

    move-object v10, v13

    move-object/from16 v28, v11

    move-object/from16 v11, v16

    move-object/from16 v29, v12

    move-object/from16 v12, v20

    move-object/from16 v30, v13

    move-object/from16 v13, v18

    .line 617
    invoke-virtual/range {v0 .. v13}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Laai;)Lsu;

    move-result-object v0

    move-object/from16 v2, v27

    .line 615
    invoke-direct {v15, v2, v14, v0, v1}, Lxa;->a(Ljava/util/Map;Ljava/lang/String;Lsu;Ljava/lang/Class;)V

    :goto_8
    add-int/lit8 v9, v19, 0x1

    move-object v14, v2

    move/from16 v10, v24

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    goto :goto_7

    :cond_e
    move-object/from16 v1, p1

    move-object/from16 v29, v12

    move-object v2, v14

    add-int/lit8 v8, v22, 0x1

    move-object/from16 v13, p4

    move-object v14, v1

    move-object v11, v2

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v12, v29

    goto/16 :goto_1

    :cond_f
    move v6, v5

    move-object/from16 v25, v9

    move-object v2, v11

    move-object/from16 v29, v12

    move-object v1, v14

    move-object v0, v10

    .line 636
    :goto_9
    array-length v0, v0

    const/4 v3, 0x0

    if-ne v0, v6, :cond_1f

    move-object/from16 v0, v29

    iget-wide v4, v0, Lqg;->e:J

    const-wide/high16 v7, 0x1000000000000L

    and-long/2addr v4, v7

    cmp-long v4, v4, v18

    if-eqz v4, :cond_1f

    move-object/from16 v4, p4

    .line 637
    iget-object v2, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_10

    .line 638
    iget-object v2, v4, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v17

    goto :goto_a

    .line 639
    :cond_10
    iget-object v2, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v17

    .line 640
    :goto_a
    iget-object v5, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-nez v5, :cond_11

    .line 641
    iget-object v5, v4, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v17

    goto :goto_b

    .line 642
    :cond_11
    iget-object v5, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v17

    .line 645
    :goto_b
    iget-object v7, v0, Lqg;->p:Ljava/lang/String;

    if-eqz v7, :cond_12

    iget-object v7, v0, Lqg;->p:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12

    .line 646
    iget-object v7, v0, Lqg;->p:Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object v7

    .line 647
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    .line 648
    invoke-static {v7, v5}, Laai;->a(Lcom/alibaba/fastjson2/e;Ljava/lang/Class;)Laai;

    move-result-object v7

    move-object v8, v7

    goto :goto_c

    :cond_12
    move-object v8, v3

    .line 652
    :goto_c
    iget-object v7, v0, Lqg;->n:Ljava/lang/String;

    if-eqz v7, :cond_14

    .line 653
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v9, v5, :cond_14

    .line 655
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v9

    .line 656
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 658
    invoke-interface {v9, v7}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_d

    .line 660
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal defaultValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_14
    :goto_d
    sget-boolean v9, Lxa;->a:Z

    if-nez v9, :cond_15

    iget-wide v9, v0, Lqg;->e:J

    const-wide/high16 v11, 0x40000000000000L

    and-long/2addr v9, v11

    cmp-long v9, v9, v18

    if-nez v9, :cond_15

    iget-wide v9, v4, Lqe;->m:J

    and-long/2addr v9, v11

    cmp-long v9, v9, v18

    if-eqz v9, :cond_16

    :cond_15
    move/from16 v17, v6

    :cond_16
    if-nez v7, :cond_1c

    if-eqz v17, :cond_1c

    .line 667
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_19

    .line 669
    iget-object v6, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_17

    .line 670
    iget-object v6, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v15, v6}, Lxa;->a(Ljava/lang/reflect/Constructor;)Ljava/util/function/IntFunction;

    move-result-object v6

    goto :goto_e

    .line 671
    :cond_17
    iget-object v6, v4, Lqe;->k:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_18

    .line 672
    iget-object v6, v4, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v15, v6}, Lxa;->a(Ljava/lang/reflect/Method;)Ljava/util/function/IntFunction;

    move-result-object v6

    goto :goto_e

    :cond_18
    move-object v6, v3

    :goto_e
    if-eqz v6, :cond_1c

    .line 676
    iget-wide v2, v0, Lqg;->e:J

    invoke-static {v1, v2, v3, v8, v6}, Lzq;->a(Ljava/lang/Class;JLaai;Ljava/util/function/IntFunction;)Lzq;

    move-result-object v0

    return-object v0

    .line 678
    :cond_19
    const-class v6, Ljava/lang/String;

    if-ne v5, v6, :cond_1c

    .line 679
    iget-object v6, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_1a

    .line 680
    iget-object v3, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v15, v3}, Lxa;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object v3

    goto :goto_f

    .line 681
    :cond_1a
    iget-object v6, v4, Lqe;->k:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1b

    .line 682
    iget-object v3, v4, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v15, v3}, Lxa;->b(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v3

    :cond_1b
    :goto_f
    if-eqz v3, :cond_1c

    .line 686
    iget-wide v4, v0, Lqg;->e:J

    invoke-static {v1, v4, v5, v8, v3}, Lzr;->a(Ljava/lang/Class;JLaai;Ljava/util/function/Function;)Lzr;

    move-result-object v0

    return-object v0

    :cond_1c
    if-eqz v17, :cond_1e

    .line 691
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 692
    iget-object v6, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_1d

    .line 693
    iget-object v3, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    invoke-virtual {v15, v3, v5}, Lxa;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v3

    goto :goto_10

    .line 694
    :cond_1d
    iget-object v6, v4, Lqe;->k:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1e

    .line 695
    iget-object v3, v4, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v15, v3, v5}, Lxa;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/util/function/Function;

    move-result-object v3

    :cond_1e
    :goto_10
    move-object v11, v3

    .line 699
    new-instance v12, Lzp;

    iget-wide v9, v0, Lqg;->e:J

    iget-object v6, v0, Lqg;->b:Ljava/lang/String;

    iget-object v13, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    iget-object v14, v4, Lqe;->k:Ljava/lang/reflect/Method;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object v3, v5

    move-wide v4, v9

    move-object v9, v13

    move-object v10, v14

    invoke-direct/range {v0 .. v11}, Lzp;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v12

    :cond_1f
    move-object/from16 v4, p4

    .line 714
    iget-object v0, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_20

    .line 715
    iget-object v0, v4, Lqe;->i:Ljava/lang/reflect/Constructor;

    iget-object v5, v4, Lqe;->j:Ljava/lang/reflect/Constructor;

    move-object/from16 v8, v25

    invoke-virtual {v15, v0, v5, v8}, Lxa;->a(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object v0

    goto :goto_11

    :cond_20
    move-object/from16 v8, v25

    .line 717
    iget-object v0, v4, Lqe;->k:Ljava/lang/reflect/Method;

    invoke-virtual {v15, v0, v8}, Lxa;->a(Ljava/lang/reflect/Method;[Ljava/lang/String;)Ljava/util/function/Function;

    move-result-object v0

    :goto_11
    move-object v7, v0

    .line 720
    invoke-virtual/range {p0 .. p2}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)[Lsu;

    move-result-object v0

    .line 721
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz v0, :cond_26

    move-object v9, v3

    move/from16 v3, v17

    move v5, v3

    .line 726
    :goto_12
    array-length v10, v0

    if-ge v3, v10, :cond_23

    .line 727
    aget-object v10, v0, v3

    .line 728
    iget-object v10, v10, Lsu;->b:Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    if-nez v9, :cond_21

    .line 730
    array-length v9, v0

    new-array v9, v9, [Z

    .line 732
    :cond_21
    aput-boolean v6, v9, v3

    add-int/lit8 v5, v5, 0x1

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_23
    if-lez v5, :cond_26

    .line 737
    array-length v3, v0

    sub-int/2addr v3, v5

    new-array v3, v3, [Lsu;

    move/from16 v5, v17

    .line 739
    :goto_13
    array-length v6, v0

    if-ge v5, v6, :cond_25

    .line 740
    aget-boolean v6, v9, v5

    if-nez v6, :cond_24

    add-int/lit8 v6, v17, 0x1

    .line 741
    aget-object v10, v0, v5

    aput-object v10, v3, v17

    move/from16 v17, v6

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_25
    move-object v10, v3

    goto :goto_14

    :cond_26
    move-object v10, v0

    .line 748
    :goto_14
    new-instance v13, Lzv;

    iget-object v3, v4, Lqe;->a:Ljava/lang/String;

    iget-object v5, v4, Lqe;->b:Ljava/lang/String;

    iget-wide v11, v4, Lqe;->m:J

    const/4 v9, 0x0

    .line 756
    invoke-direct {v15, v2}, Lxa;->a(Ljava/util/Map;)[Lsu;

    move-result-object v14

    iget-object v6, v4, Lqe;->f:[Ljava/lang/Class;

    iget-object v4, v4, Lqe;->g:[Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v5

    move-object/from16 v16, v4

    move-wide v4, v11

    move-object v11, v6

    move-object v6, v7

    move-object v7, v9

    move-object v9, v14

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lzv;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/function/Function;Ljava/util/List;[Ljava/lang/String;[Lsu;[Lsu;[Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v13
.end method

.method public c(Ljava/lang/reflect/Method;)Ljava/util/function/Function;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 1815
    :try_start_0
    invoke-virtual {p0, p1}, Lxa;->d(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 1817
    iget-object v1, p0, Lxa;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1818
    iput-object v0, p0, Lxa;->d:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 1821
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1823
    new-instance v0, L-$$Lambda$xa$gY1vPvIh6pYdrRVSRTj1HZZkysw;

    invoke-direct {v0, p1}, L-$$Lambda$xa$gY1vPvIh6pYdrRVSRTj1HZZkysw;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method d(Ljava/lang/reflect/Method;)Ljava/util/function/Function;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation

    .line 1833
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 1835
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1836
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1837
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    .line 1835
    invoke-virtual {v1, v0, v2, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 1839
    invoke-virtual {v5}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v6

    const-string v2, "apply"

    .line 1841
    sget-object v3, Labo;->m:Ljava/lang/invoke/MethodType;

    .line 1845
    invoke-virtual {v6}, Ljava/lang/invoke/MethodType;->erase()Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 1841
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1851
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 1852
    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/lang/Object;

    move-result-object p1

    .line 1853
    check-cast p1, Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1855
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "create fieldReader error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
