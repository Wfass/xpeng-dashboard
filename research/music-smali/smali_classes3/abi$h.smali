.class Labi$h;
.super Ljava/lang/Object;
.source "JodaSupport.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/reflect/Constructor;

.field final c:Ljava/lang/reflect/Constructor;

.field final d:Ljava/lang/Class;

.field final e:Ljava/lang/Class;

.field final g:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 11

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p1, p0, Labi$h;->a:Ljava/lang/Class;

    .line 537
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.joda.time.Chronology"

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Labi$h;->e:Ljava/lang/Class;

    const/4 v1, 0x7

    .line 540
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Labi$h;->b:Ljava/lang/reflect/Constructor;

    const/16 v2, 0x8

    .line 541
    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v10

    iget-object v3, p0, Labi$h;->e:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Labi$h;->c:Ljava/lang/reflect/Constructor;

    const-string p1, "org.joda.time.chrono.ISOChronology"

    .line 543
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Labi$h;->d:Ljava/lang/Class;

    .line 544
    iget-object p1, p0, Labi$h;->d:Ljava/lang/Class;

    const-string v0, "getInstance"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Labi$h;->g:Ljava/lang/Object;
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

    .line 550
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "create LocalDateWriter error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 579
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v0

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "read org.joda.time.LocalDate error"

    const/4 v10, 0x7

    const/4 v11, 0x0

    .line 581
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, -0x57

    if-ne v0, v13, :cond_0

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object v0

    .line 584
    :try_start_0
    iget-object v13, v1, Labi$h;->b:Ljava/lang/reflect/Constructor;

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getYear()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v10, v11

    invoke-virtual {v0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v7

    aput-object v12, v10, v6

    aput-object v12, v10, v5

    aput-object v12, v10, v4

    aput-object v12, v10, v3

    invoke-virtual {v13, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 586
    :goto_0
    new-instance v3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    const/16 v12, -0x58

    if-ne v0, v12, :cond_1

    .line 591
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->al()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 593
    :try_start_1
    iget-object v12, v1, Labi$h;->b:Ljava/lang/reflect/Constructor;

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v5

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    const v4, 0xf4240

    div-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v3

    invoke-virtual {v12, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    .line 595
    :goto_1
    new-instance v3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 599
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->m()Z

    const/4 v0, 0x0

    move-object v12, v0

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    .line 603
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v19

    if-nez v19, :cond_a

    .line 604
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v19

    .line 605
    sget-wide v21, Labi;->a:J

    cmp-long v21, v19, v21

    if-nez v21, :cond_2

    .line 606
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 607
    :cond_2
    sget-wide v21, Labi;->b:J

    cmp-long v21, v19, v21

    if-nez v21, :cond_3

    .line 608
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_3

    .line 609
    :cond_3
    sget-wide v21, Labi;->c:J

    cmp-long v21, v19, v21

    if-nez v21, :cond_4

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_3

    .line 611
    :cond_4
    sget-wide v21, Labi;->d:J

    cmp-long v21, v19, v21

    if-nez v21, :cond_5

    .line 612
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_3

    .line 613
    :cond_5
    sget-wide v21, Labi;->e:J

    cmp-long v21, v19, v21

    if-nez v21, :cond_6

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    .line 615
    :cond_6
    sget-wide v21, Labi;->f:J

    cmp-long v21, v19, v21

    if-nez v21, :cond_7

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    goto :goto_3

    .line 617
    :cond_7
    sget-wide v21, Labi;->g:J

    cmp-long v21, v19, v21

    if-nez v21, :cond_8

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_3

    .line 619
    :cond_8
    sget-wide v21, Labi;->h:J

    cmp-long v18, v19, v21

    if-nez v18, :cond_9

    .line 620
    iget-object v10, v1, Labi$h;->e:Ljava/lang/Class;

    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v18, v10

    :goto_3
    const/4 v10, 0x7

    goto/16 :goto_2

    .line 622
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support fieldName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_a
    :try_start_2
    iget-object v10, v1, Labi$h;->c:Ljava/lang/reflect/Constructor;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v11

    aput-object v12, v3, v8

    aput-object v13, v3, v7

    aput-object v14, v3, v6

    aput-object v15, v3, v5

    aput-object v16, v3, v4

    const/4 v0, 0x6

    aput-object v17, v3, v0

    const/4 v0, 0x7

    aput-object v18, v3, v0

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    .line 629
    :goto_4
    new-instance v3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 633
    :cond_b
    new-instance v3, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 556
    iget-object v0, p0, Labi$h;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .line 561
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "not support"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 562
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->al()Ljava/time/LocalDateTime;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 568
    :cond_2
    :try_start_0
    iget-object p3, p0, Labi$h;->b:Ljava/lang/reflect/Constructor;

    const/4 p4, 0x7

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x1

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x2

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x3

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x4

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x5

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p5

    const/4 p5, 0x6

    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getNano()I

    move-result p2

    const v0, 0xf4240

    div-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, p5

    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_1

    :catch_2
    move-exception p2

    .line 570
    :goto_1
    new-instance p3, Lcom/alibaba/fastjson2/c;

    const-string p4, "read org.joda.time.LocalDate error"

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
