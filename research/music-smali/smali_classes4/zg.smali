.class final Lzg;
.super Lqf;
.source "ObjectReaderImplOffsetTime.java"

# interfaces
.implements Lwk;


# static fields
.field static final o:Lzg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lzg;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lzg;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lzg;->o:Lzg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lqf;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual/range {p0 .. p5}, Lzg;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 29
    const-class v0, Ljava/time/OffsetDateTime;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->d()Z

    move-result p3

    const-wide/16 p4, 0x3e8

    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v0

    .line 43
    iget-boolean p1, p0, Lzg;->b:Z

    if-eqz p1, :cond_0

    mul-long/2addr v0, p4

    .line 47
    :cond_0
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 48
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p3

    .line 50
    invoke-virtual {p3}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p3

    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/time/OffsetTime;->of(Ljava/time/LocalTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_2
    iget-object p3, p0, Lzg;->a:Ljava/lang/String;

    if-nez p3, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ao()Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p3

    .line 62
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->h()Ljava/time/ZoneId;

    move-result-object p2

    .line 63
    iget-boolean v0, p0, Lzg;->c:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lzg;->b:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->i()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzg;->a(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    .line 74
    iget-boolean p4, p0, Lzg;->a_:Z

    if-nez p4, :cond_5

    .line 75
    invoke-static {p3, p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p1

    sget-object p3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, p3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 76
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 79
    :cond_5
    iget-boolean p4, p0, Lzg;->e:Z

    if-nez p4, :cond_6

    const/16 p4, 0x7b2

    const/4 p5, 0x1

    .line 81
    invoke-static {p4, p5, p5}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p4

    .line 82
    invoke-static {p3, p1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalTime;

    move-result-object p1

    .line 80
    invoke-static {p4, p1, p2}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 86
    :cond_6
    invoke-static {p3, p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 87
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 64
    :cond_7
    :goto_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 65
    iget-boolean p1, p0, Lzg;->b:Z

    if-eqz p1, :cond_8

    mul-long/2addr v0, p4

    .line 68
    :cond_8
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 69
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p3

    .line 70
    invoke-virtual {p2}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1
.end method
