.class public final Lyd;
.super Lqf;
.source "ObjectReaderImplInstant.java"

# interfaces
.implements Lwk;


# static fields
.field public static final o:Lyd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lyd;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lyd;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lyd;->o:Lyd;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Locale;)Lyd;
    .locals 1

    if-nez p0, :cond_0

    .line 20
    sget-object p0, Lyd;->o:Lyd;

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Lyd;

    invoke-direct {v0, p0, p1}, Lyd;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ar()Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 2

    const-string p2, "nano"

    .line 37
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    const-string p3, "epochSecond"

    .line 38
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 41
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    .line 45
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "epochMilli"

    .line 48
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 53
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "can not create instant."

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 32
    const-class v0, Ljava/time/Instant;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p3

    const-wide/16 p4, 0x3e8

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->g()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide p1

    .line 67
    iget-boolean p3, p0, Lyd;->b:Z

    if-eqz p3, :cond_0

    mul-long/2addr p1, p4

    .line 71
    :cond_0
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    return-object v0

    .line 78
    :cond_2
    iget-object p3, p0, Lyd;->a:Ljava/lang/String;

    if-eqz p3, :cond_a

    iget-boolean p3, p0, Lyd;->i:Z

    if-nez p3, :cond_a

    iget-boolean p3, p0, Lyd;->d:Z

    if-nez p3, :cond_a

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p3

    .line 84
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    .line 88
    :cond_4
    iget-boolean v0, p0, Lyd;->c:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lyd;->b:Z

    if-eqz v0, :cond_5

    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->i()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyd;->a(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 97
    iget-boolean p4, p0, Lyd;->a_:Z

    if-nez p4, :cond_6

    .line 99
    invoke-static {p3, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    sget-object p3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    .line 101
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p2

    .line 98
    invoke-static {p1, p3, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 105
    :cond_6
    iget-boolean p4, p0, Lyd;->e:Z

    if-nez p4, :cond_7

    const/16 p4, 0x7b2

    const/4 p5, 0x1

    .line 107
    invoke-static {p4, p5, p5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p4

    .line 108
    invoke-static {p3, p1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object p1

    .line 109
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p2

    .line 106
    invoke-static {p4, p1, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 112
    :cond_7
    invoke-static {p3, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 113
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 89
    :cond_8
    :goto_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 90
    iget-boolean p3, p0, Lyd;->b:Z

    if-eqz p3, :cond_9

    mul-long/2addr p1, p4

    .line 93
    :cond_9
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 79
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ar()Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method
