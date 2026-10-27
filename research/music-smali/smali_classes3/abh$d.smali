.class Labh$d;
.super Lqf;
.source "JdbcSupport.java"

# interfaces
.implements Laem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field public static final o:Labh$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 294
    new-instance v0, Labh$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labh$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Labh$d;->o:Labh$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lqf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    if-nez p2, :cond_0

    .line 303
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 307
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 308
    iget-boolean v3, v0, Labh$d;->b:Z

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 315
    :cond_1
    iget-boolean v3, v0, Labh$d;->c:Z

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 321
    :cond_2
    iget-boolean v3, v0, Labh$d;->d:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 340
    iget-object v4, v0, Labh$d;->a:Ljava/lang/String;

    const-string v5, "dd"

    if-eqz v4, :cond_4

    iget-object v4, v0, Labh$d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 341
    invoke-virtual {p0}, Labh$d;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    .line 345
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 346
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 347
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 352
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 356
    :cond_6
    move-object v4, p2

    check-cast v4, Ljava/util/Date;

    .line 358
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v2

    .line 359
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v4

    .line 360
    invoke-static {v4, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 362
    invoke-virtual {v3, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 322
    :cond_7
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v2

    .line 323
    move-object v3, p2

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 324
    invoke-static {v3, v4}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 325
    invoke-static {v3, v2}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v9

    .line 328
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v3

    .line 329
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v4

    .line 330
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v5

    .line 331
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v6

    .line 332
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    .line 333
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    .line 335
    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/ab;->a(IIIIIIIIZ)V

    return-void

    .line 316
    :cond_8
    :goto_1
    move-object v2, p2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 317
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void

    .line 309
    :cond_9
    :goto_2
    move-object v2, p2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 310
    div-long/2addr v2, v4

    .line 311
    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method
