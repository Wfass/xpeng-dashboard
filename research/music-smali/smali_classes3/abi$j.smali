.class Labi$j;
.super Lqf;
.source "JodaSupport.java"

# interfaces
.implements Laem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field final o:Ljava/lang/Class;

.field final p:Ljava/util/function/ToIntFunction;

.field final q:Ljava/util/function/ToIntFunction;

.field final r:Ljava/util/function/ToIntFunction;

.field final s:Ljava/util/function/Function;

.field final t:Ljava/lang/Class;

.field final u:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4

    .line 418
    invoke-direct {p0, p2}, Lqf;-><init>(Ljava/lang/String;)V

    .line 420
    iput-object p1, p0, Labi$j;->o:Ljava/lang/Class;

    .line 422
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const-string v0, "org.joda.time.chrono.ISOChronology"

    .line 423
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Labi$j;->t:Ljava/lang/Class;

    .line 424
    iget-object p2, p0, Labi$j;->t:Ljava/lang/Class;

    const-string v0, "getInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 425
    iget-object v0, p0, Labi$j;->t:Ljava/lang/Class;

    const-string v2, "withUTC"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Labi$j;->u:Ljava/lang/Object;

    const-string p2, "getYear"

    .line 427
    new-array v0, v1, [Ljava/lang/Class;

    .line 428
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 427
    invoke-static {p2}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Labi$j;->p:Ljava/util/function/ToIntFunction;

    const-string p2, "getMonthOfYear"

    .line 430
    new-array v0, v1, [Ljava/lang/Class;

    .line 431
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 430
    invoke-static {p2}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Labi$j;->q:Ljava/util/function/ToIntFunction;

    const-string p2, "getDayOfMonth"

    .line 433
    new-array v0, v1, [Ljava/lang/Class;

    .line 434
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 433
    invoke-static {p2}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Labi$j;->r:Ljava/util/function/ToIntFunction;

    const-string p2, "getChronology"

    .line 436
    new-array v0, v1, [Ljava/lang/Class;

    .line 437
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 436
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Labi$j;->s:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    .line 444
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "create LocalDateWriter error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 3

    .line 450
    iget-object p3, p0, Labi$j;->p:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p3

    .line 451
    iget-object v0, p0, Labi$j;->q:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 452
    iget-object v1, p0, Labi$j;->r:Ljava/util/function/ToIntFunction;

    invoke-interface {v1, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    .line 453
    iget-object v2, p0, Labi$j;->s:Ljava/util/function/Function;

    invoke-interface {v2, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 455
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 456
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->c(Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object p2, p0, Labi$j;->u:Ljava/lang/Object;

    if-eq v2, p2, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    const-string/jumbo p2, "year"

    .line 466
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->d(I)V

    const-string p2, "month"

    .line 469
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->d(I)V

    const-string p2, "day"

    .line 472
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/ab;->d(I)V

    const-string p2, "chronology"

    .line 475
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    .line 478
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void

    .line 460
    :cond_2
    :goto_0
    invoke-static {p3, v0, v1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalDate;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 483
    iget-object p3, p0, Labi$j;->p:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p3

    .line 484
    iget-object p4, p0, Labi$j;->q:Ljava/util/function/ToIntFunction;

    invoke-interface {p4, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p4

    .line 485
    iget-object p5, p0, Labi$j;->r:Ljava/util/function/ToIntFunction;

    invoke-interface {p5, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p5

    .line 486
    iget-object p6, p0, Labi$j;->s:Ljava/util/function/Function;

    invoke-interface {p6, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 488
    iget-object p6, p0, Labi$j;->u:Ljava/lang/Object;

    if-eq p2, p6, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    const-string/jumbo p6, "year"

    .line 508
    invoke-virtual {p1, p6}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->d(I)V

    const-string p3, "month"

    .line 511
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->d(I)V

    const-string p3, "day"

    .line 514
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/ab;->d(I)V

    const-string p3, "chronology"

    .line 517
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    .line 520
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void

    .line 489
    :cond_1
    :goto_0
    invoke-static {p3, p4, p5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p2

    .line 491
    invoke-virtual {p0}, Labi$j;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    if-nez p3, :cond_2

    .line 493
    iget-object p3, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    :cond_2
    if-nez p3, :cond_3

    .line 497
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/time/LocalDate;)V

    return-void

    .line 501
    :cond_3
    invoke-virtual {p3, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 502
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method
