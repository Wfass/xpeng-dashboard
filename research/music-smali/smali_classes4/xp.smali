.class public Lxp;
.super Lqf;
.source "ObjectReaderImplDate.java"

# interfaces
.implements Lwk;


# static fields
.field public static final o:Lxp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lxp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lxp;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lxp;->o:Lxp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Locale;)Lxp;
    .locals 1

    if-nez p0, :cond_0

    .line 26
    sget-object p0, Lxp;->o:Lxp;

    return-object p0

    .line 28
    :cond_0
    new-instance v0, Lxp;

    invoke-direct {v0, p0, p1}, Lxp;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 13

    .line 76
    iget-boolean v0, p0, Lxp;->g:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v0

    .line 79
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lxp;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 81
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 89
    :cond_1
    iget-boolean v0, p0, Lxp;->b:Z

    const-wide/16 v2, 0x3e8

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lxp;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v0

    .line 91
    iget-boolean p1, p0, Lxp;->b:Z

    if-eqz p1, :cond_18

    mul-long/2addr v0, v2

    goto/16 :goto_7

    .line 94
    :cond_3
    iget-object v0, p0, Lxp;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_14

    .line 96
    iget-boolean v0, p0, Lxp;->i:Z

    if-eqz v0, :cond_7

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->as()J

    move-result-wide v7

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aA()J

    move-result-wide v7

    :goto_0
    cmp-long v0, v7, v5

    if-nez v0, :cond_6

    .line 102
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aT()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->an()Ljava/time/ZonedDateTime;

    move-result-object p1

    goto/16 :goto_4

    .line 103
    :cond_6
    :goto_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v7, v8}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 107
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->i()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lxp;->a(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v7

    .line 111
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "null"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_3

    .line 116
    :cond_8
    iget-boolean v8, p0, Lxp;->a_:Z

    const/16 v9, 0x13

    if-nez v8, :cond_c

    .line 117
    iget-boolean v8, p0, Lxp;->e:Z

    if-nez v8, :cond_9

    .line 118
    invoke-virtual {v0, v7}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    .line 119
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v4

    .line 120
    sget-object v7, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v7}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v0

    const/4 v7, 0x1

    .line 123
    invoke-static {v4, v0, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sget-object v4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 122
    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_2

    .line 128
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_a

    sget-object v8, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson2/u;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 129
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v7, v4, v0}, Laay;->a(Ljava/lang/String;II)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_2

    .line 131
    :cond_a
    iget-object v4, p0, Lxp;->a:Ljava/lang/String;

    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v9, :cond_b

    invoke-static {v7}, Labo;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 132
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 133
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 136
    :cond_b
    invoke-static {v7, v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    .line 137
    sget-object v4, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_2

    .line 141
    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_f

    iget-boolean v8, p0, Lxp;->j:Z

    if-nez v8, :cond_d

    sget-object v8, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson2/u;->a(Lcom/alibaba/fastjson2/u$d;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 142
    :cond_d
    iget-boolean v0, p0, Lxp;->j:Z

    if-eqz v0, :cond_e

    const/16 v9, 0x10

    .line 143
    :cond_e
    invoke-static {v7, v4, v9}, Laay;->a(Ljava/lang/String;II)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_2

    .line 145
    :cond_f
    invoke-static {v7, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 148
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    goto :goto_4

    :cond_10
    :goto_3
    return-object v1

    .line 150
    :cond_11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->an()Ljava/time/ZonedDateTime;

    move-result-object p1

    :goto_4
    if-nez p1, :cond_12

    return-object v1

    .line 158
    :cond_12
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v0

    .line 159
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalTime;->getNano()I

    move-result p1

    cmp-long v4, v0, v5

    const v5, 0xf4240

    if-gez v4, :cond_13

    if-lez p1, :cond_13

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    mul-long/2addr v0, v2

    .line 162
    div-int/2addr p1, v5

    add-int/lit16 p1, p1, -0x3e8

    goto :goto_5

    :cond_13
    mul-long/2addr v0, v2

    .line 166
    div-int/2addr p1, v5

    :goto_5
    int-to-long v2, p1

    add-long/2addr v0, v2

    goto :goto_7

    .line 169
    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->L()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v8, 0x22

    const/16 v9, 0x76

    const/16 v10, 0x61

    const/16 v11, 0x6c

    const/16 v12, 0x22

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson2/u;->a(CCCCC)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x3a

    .line 170
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(C)Z

    .line 171
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v7

    .line 172
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    .line 173
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/u;->a(Z)V

    goto :goto_6

    .line 175
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->as()J

    move-result-wide v7

    :goto_6
    cmp-long v0, v7, v5

    if-nez v0, :cond_16

    .line 178
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aT()Z

    move-result p1

    if-eqz p1, :cond_16

    return-object v1

    .line 182
    :cond_16
    iget-boolean p1, p0, Lxp;->b:Z

    if-eqz p1, :cond_17

    mul-long v0, v7, v2

    goto :goto_7

    :cond_17
    move-wide v0, v7

    .line 187
    :cond_18
    :goto_7
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 43
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide p1

    .line 44
    iget-boolean p3, p0, Lxp;->b:Z

    if-eqz p3, :cond_0

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    .line 47
    :cond_0
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p3

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_2
    invoke-direct {p0, p1}, Lxp;->b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 37
    const-class v0, Ljava/util/Date;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide p1

    .line 61
    iget-boolean p3, p0, Lxp;->b:Z

    if-eqz p3, :cond_0

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    .line 64
    :cond_0
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p3

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 71
    :cond_2
    invoke-direct {p0, p1}, Lxp;->b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
