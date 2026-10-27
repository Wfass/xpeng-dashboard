.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# static fields
.field public static final MS_OF_DAY:J = 0x5265c00L

.field public static final MS_OF_HOUR:J = 0x36ee80L

.field public static final MS_OF_MINUTE:J = 0xea60L

.field public static final MS_OF_SECOND:J = 0x3e8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calendar(J)Ljava/util/Calendar;
    .locals 1
    .param p0, "ms"    # J

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 17
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 18
    return-object v0
.end method

.method private static getMsOfTheDay(Ljava/util/Calendar;)J
    .locals 10
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 113
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 114
    .local v0, "hour":I
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 115
    .local v1, "minute":I
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 116
    .local v2, "second":I
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 118
    .local v3, "milli":I
    int-to-long v4, v3

    int-to-long v6, v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v1

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v0

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private static getMsOfTheMonth(Ljava/util/Calendar;)J
    .locals 11
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 141
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 142
    .local v0, "day":I
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 143
    .local v1, "hour":I
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 144
    .local v2, "minute":I
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 145
    .local v3, "second":I
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 147
    .local v4, "milli":I
    int-to-long v5, v4

    int-to-long v7, v3

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    int-to-long v7, v2

    const-wide/32 v9, 0xea60

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    int-to-long v7, v1

    const-wide/32 v9, 0x36ee80

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    int-to-long v7, v0

    const-wide/32 v9, 0x5265c00

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    return-wide v5
.end method

.method private static getMsOfTheWeek(Ljava/util/Calendar;)J
    .locals 11
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 126
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 127
    .local v0, "day":I
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 128
    .local v1, "hour":I
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 129
    .local v2, "minute":I
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 130
    .local v3, "second":I
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 132
    .local v4, "milli":I
    int-to-long v5, v4

    int-to-long v7, v3

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    int-to-long v7, v2

    const-wide/32 v9, 0xea60

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    int-to-long v7, v1

    const-wide/32 v9, 0x36ee80

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    int-to-long v7, v0

    const-wide/32 v9, 0x5265c00

    mul-long/2addr v7, v9

    add-long/2addr v5, v7

    return-wide v5
.end method

.method public static intervalString2milliSecond(Ljava/lang/String;)J
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 172
    const-string v0, ""

    .line 173
    .local v0, "s1":Ljava/lang/String;
    const-string v1, ""

    .line 175
    .local v1, "s2":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 176
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 177
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 178
    .local v4, "c":C
    const/16 v5, 0x30

    if-lt v4, v5, :cond_0

    const/16 v5, 0x39

    if-gt v4, v5, :cond_0

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .restart local v4    # "c":C
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 182
    nop

    .line 186
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, "number":I
    if-lez v3, :cond_6

    .line 195
    const-string v4, "s"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4

    .line 197
    :cond_2
    const-string v4, "m"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    int-to-long v4, v3

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    return-wide v4

    .line 199
    :cond_3
    const-string v4, "h"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 200
    int-to-long v4, v3

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    return-wide v4

    .line 201
    :cond_4
    const-string v4, "d"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 202
    int-to-long v4, v3

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    return-wide v4

    .line 204
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid interval str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", unknown unit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid interval str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", must > 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    .end local v3    # "number":I
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid interval str = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static isMatchDaily(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 8
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "end"    # Ljava/util/Calendar;
    .param p2, "c"    # Ljava/util/Calendar;

    .line 22
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheDay(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 23
    .local v0, "msCurrent":J
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheDay(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 24
    .local v2, "msTargetStart":J
    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 25
    return v5

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheDay(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 28
    .local v6, "msTargetEnd":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    .line 29
    return v5

    .line 31
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public static isMatchMonthly(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 8
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "end"    # Ljava/util/Calendar;
    .param p2, "c"    # Ljava/util/Calendar;

    .line 48
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheMonth(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 49
    .local v0, "msCurrent":J
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheMonth(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 50
    .local v2, "msTargetStart":J
    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 51
    return v5

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheMonth(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 54
    .local v6, "msTargetEnd":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    .line 55
    return v5

    .line 57
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public static isMatchWeekly(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 8
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "end"    # Ljava/util/Calendar;
    .param p2, "c"    # Ljava/util/Calendar;

    .line 35
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheWeek(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 36
    .local v0, "msCurrent":J
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheWeek(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 37
    .local v2, "msTargetStart":J
    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gez v4, :cond_0

    .line 38
    return v5

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheWeek(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 41
    .local v6, "msTargetEnd":J
    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    .line 42
    return v5

    .line 44
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public static isMatchYearly(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 9
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "end"    # Ljava/util/Calendar;
    .param p2, "c"    # Ljava/util/Calendar;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 63
    .local v1, "month":I
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 64
    .local v2, "monthStart":I
    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 65
    return v3

    .line 68
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 69
    .local v0, "monthEnd":I
    if-le v1, v0, :cond_1

    .line 70
    return v3

    .line 73
    :cond_1
    const-wide/16 v4, 0x0

    .line 74
    .local v4, "ms":J
    if-ne v1, v2, :cond_2

    .line 75
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheMonth(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 76
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheMonth(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 77
    .local v6, "msStart":J
    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 78
    return v3

    .line 82
    .end local v6    # "msStart":J
    :cond_2
    if-ne v1, v0, :cond_4

    .line 83
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 84
    invoke-static {p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheMonth(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 86
    :cond_3
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->getMsOfTheMonth(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 87
    .local v6, "msEnd":J
    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 88
    return v3

    .line 92
    .end local v6    # "msEnd":J
    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .line 108
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .line 100
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .line 104
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    invoke-static {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
