.class final Lxk;
.super Lqf;
.source "ObjectReaderImplCalendar.java"

# interfaces
.implements Lwk;


# static fields
.field static final o:Lxk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lxk;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lxk;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lxk;->o:Lxk;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Locale;)Lxk;
    .locals 1

    if-nez p0, :cond_0

    .line 20
    sget-object p0, Lxk;->o:Lxk;

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lxk;

    invoke-direct {v0, p0, p1}, Lxk;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p2

    const-wide/16 p3, 0x3e8

    if-eqz p2, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide p1

    .line 40
    iget-boolean p5, p0, Lxk;->b:Z

    if-eqz p5, :cond_0

    mul-long/2addr p1, p3

    .line 44
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 45
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p3

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->as()J

    move-result-wide p1

    .line 54
    iget-boolean p5, p0, Lxk;->b:Z

    if-eqz p5, :cond_3

    mul-long/2addr p1, p3

    .line 58
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 59
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p3
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 32
    const-class v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result p2

    const-wide/16 p3, 0x3e8

    const/4 p5, 0x0

    if-eqz p2, :cond_4

    .line 66
    iget-object p2, p0, Lxk;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p0}, Lxk;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p3

    .line 70
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    return-object p5

    .line 74
    :cond_0
    invoke-static {p3, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 79
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p3

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->as()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aT()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p5

    .line 89
    :cond_2
    iget-boolean p1, p0, Lxk;->b:Z

    if-eqz p1, :cond_3

    mul-long/2addr v0, p3

    .line 93
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1

    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p5

    .line 102
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v0

    .line 103
    iget-boolean p2, p0, Lxk;->b:Z

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    mul-long/2addr v0, p3

    .line 107
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method
