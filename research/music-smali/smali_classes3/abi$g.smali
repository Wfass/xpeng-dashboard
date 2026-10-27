.class Labi$g;
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
    name = "g"
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
    .locals 7

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Labi$g;->a:Ljava/lang/Class;

    .line 322
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.joda.time.Chronology"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Labi$g;->e:Ljava/lang/Class;

    const/4 v1, 0x3

    .line 325
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

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Labi$g;->b:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    .line 326
    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    iget-object v3, p0, Labi$g;->e:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Labi$g;->c:Ljava/lang/reflect/Constructor;

    const-string p1, "org.joda.time.chrono.ISOChronology"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Labi$g;->d:Ljava/lang/Class;

    .line 329
    iget-object p1, p0, Labi$g;->d:Ljava/lang/Class;

    const-string v0, "getInstance"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Labi$g;->g:Ljava/lang/Object;
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

    .line 335
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "create LocalDateWriter error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9

    .line 364
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result p2

    const/4 p3, 0x2

    const/4 p4, 0x1

    const/4 p5, 0x0

    const-string v0, "read org.joda.time.LocalDate error"

    const/4 v1, 0x3

    const/16 v2, -0x57

    if-ne p2, v2, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object p2

    .line 369
    :try_start_0
    iget-object v2, p0, Labi$g;->b:Ljava/lang/reflect/Constructor;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p5

    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v1, p4

    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 371
    :goto_0
    new-instance p3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 378
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    const/4 p2, 0x0

    move-object v2, p2

    move-object v3, v2

    move-object v4, v3

    .line 379
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v5

    if-nez v5, :cond_5

    .line 380
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v5

    .line 381
    sget-wide v7, Labi;->a:J

    cmp-long v7, v5, v7

    if-nez v7, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    .line 383
    :cond_1
    sget-wide v7, Labi;->b:J

    cmp-long v7, v5, v7

    if-nez v7, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 385
    :cond_2
    sget-wide v7, Labi;->c:J

    cmp-long v7, v5, v7

    if-nez v7, :cond_3

    .line 386
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 387
    :cond_3
    sget-wide v7, Labi;->h:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_4

    .line 388
    iget-object v4, p0, Labi$g;->e:Ljava/lang/Class;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 390
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support fieldName "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 395
    :cond_5
    :try_start_1
    iget-object v5, p0, Labi$g;->c:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, p5

    aput-object v2, v6, p4

    aput-object v3, v6, p3

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    return-object p1

    :catch_3
    move-exception p2

    goto :goto_2

    :catch_4
    move-exception p2

    goto :goto_2

    :catch_5
    move-exception p2

    .line 397
    :goto_2
    new-instance p3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 401
    :cond_6
    new-instance p3, Lcom/alibaba/fastjson2/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "not support "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/fastjson2/b;->a(B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 341
    iget-object v0, p0, Labi$g;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 346
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 350
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p3

    .line 356
    :cond_1
    :try_start_0
    iget-object p4, p0, Labi$g;->c:Ljava/lang/reflect/Constructor;

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p5, v0

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p5, v0

    const/4 v0, 0x2

    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, v0

    const/4 p2, 0x3

    aput-object p3, p5, p2

    invoke-virtual {p4, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    .line 358
    :goto_0
    new-instance p3, Lcom/alibaba/fastjson2/c;

    const-string p4, "read org.joda.time.LocalDate error"

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method
