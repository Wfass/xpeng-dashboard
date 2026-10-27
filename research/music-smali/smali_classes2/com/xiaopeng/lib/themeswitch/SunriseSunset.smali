.class final Lcom/xiaopeng/lib/themeswitch/SunriseSunset;
.super Ljava/lang/Object;
.source "SunriseSunset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;,
        Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;
    }
.end annotation


# static fields
.field private static final CONST_0009:D = 9.0E-4

.field private static final CONST_360:D = 360.0

.field private static final JULIAN_DATE_2000_01_01:I = 0x256859

.field private static final MILLISECONDS_IN_DAY:J = 0x5265c00L

.field public static final SUN_ALTITUDE_ASTRONOMICAL_TWILIGHT:D = -18.0

.field public static final SUN_ALTITUDE_CIVIL_TWILIGHT:D = -6.0

.field public static final SUN_ALTITUDE_NAUTICAL_TWILIGHT:D = -12.0

.field public static final SUN_ALTITUDE_SUNRISE_SUNSET:D = -0.833


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAstronomicalTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;
    .locals 7

    const-wide/high16 v5, -0x3fce000000000000L    # -18.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 271
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSunriseSunset(Ljava/util/Calendar;DDD)[Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getCivilTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;
    .locals 7

    const-wide/high16 v5, -0x3fe8000000000000L    # -6.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 241
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSunriseSunset(Ljava/util/Calendar;DDD)[Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getDayLength(Ljava/util/Calendar;DD)J
    .locals 3

    .line 656
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSunriseSunset(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object p3

    if-nez p3, :cond_3

    const/4 p3, 0x2

    .line 658
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    const-wide/16 p2, 0x0

    const/16 p4, 0xa

    const-wide/32 v0, 0x5265c00

    const/4 v2, 0x3

    if-lez p1, :cond_1

    if-lt p0, v2, :cond_0

    if-gt p0, p4, :cond_0

    return-wide v0

    :cond_0
    return-wide p2

    :cond_1
    if-lt p0, v2, :cond_2

    if-gt p0, p4, :cond_2

    return-wide p2

    :cond_2
    return-wide v0

    :cond_3
    const/4 p0, 0x1

    .line 673
    aget-object p0, p3, p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public static getDayPeriod(Ljava/util/Calendar;DD)Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;
    .locals 1

    .line 636
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isDay(Ljava/util/Calendar;DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    sget-object p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->DAY:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object p0

    .line 638
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isCivilTwilight(Ljava/util/Calendar;DD)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    sget-object p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->CIVIL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object p0

    .line 640
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isNauticalTwilight(Ljava/util/Calendar;DD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    sget-object p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->NAUTICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object p0

    .line 642
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isAstronomicalTwilight(Ljava/util/Calendar;DD)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 643
    sget-object p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->ASTRONOMICAL_TWILIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object p0

    .line 644
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isNight(Ljava/util/Calendar;DD)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 645
    sget-object p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->NIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object p0

    .line 646
    :cond_4
    sget-object p0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;->NIGHT:Lcom/xiaopeng/lib/themeswitch/SunriseSunset$DayPeriod;

    return-object p0
.end method

.method public static getGregorianDate(D)Ljava/util/Calendar;
    .locals 14

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int v2, p0

    add-int/lit16 v3, v2, 0x7d2c

    const v4, 0x23ab1

    .line 160
    div-int v5, v3, v4

    .line 161
    rem-int/2addr v3, v4

    const v4, 0x8eac

    .line 164
    div-int v6, v3, v4

    const/4 v7, 0x1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    mul-int/2addr v4, v6

    sub-int/2addr v3, v4

    .line 168
    div-int/lit16 v4, v3, 0x5b5

    .line 169
    rem-int/lit16 v3, v3, 0x5b5

    .line 172
    div-int/lit16 v8, v3, 0x16d

    add-int/2addr v8, v7

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    mul-int/lit16 v9, v8, 0x16d

    sub-int/2addr v3, v9

    mul-int/lit16 v5, v5, 0x190

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v5, v6

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v5, v4

    add-int/2addr v5, v8

    mul-int/lit8 v4, v3, 0x5

    add-int/lit16 v4, v4, 0x134

    .line 181
    div-int/lit16 v4, v4, 0x99

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    add-int/lit8 v8, v4, 0x4

    mul-int/lit16 v8, v8, 0x99

    const/4 v9, 0x5

    .line 186
    div-int/2addr v8, v9

    sub-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x7a

    add-int/lit16 v5, v5, -0x12c0

    add-int/2addr v4, v6

    .line 189
    div-int/lit8 v8, v4, 0xc

    add-int/2addr v5, v8

    const/16 v8, 0xc

    .line 192
    rem-int/2addr v4, v8

    add-int/2addr v3, v7

    int-to-double v10, v2

    sub-double/2addr p0, v10

    const-wide/high16 v10, 0x4038000000000000L    # 24.0

    mul-double/2addr p0, v10

    double-to-int v2, p0

    int-to-double v10, v2

    sub-double v10, p0, v10

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    const-wide v11, 0x40ac200000000000L    # 3600.0

    mul-double/2addr p0, v11

    mul-int/lit16 v11, v2, 0xe10

    mul-int/lit8 v12, v10, 0x3c

    add-int/2addr v11, v12

    int-to-double v11, v11

    sub-double/2addr p0, v11

    add-double/2addr p0, v0

    double-to-int p0, p0

    const-string p1, "UTC"

    .line 214
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 213
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 215
    invoke-virtual {p1, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 216
    invoke-virtual {p1, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 217
    invoke-virtual {p1, v9, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 218
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 219
    invoke-virtual {p1, v8, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 220
    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    .line 224
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 225
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0
.end method

.method public static getJulianDate(Ljava/util/Calendar;)D
    .locals 8

    const-string v0, "UTC"

    .line 109
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 110
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 111
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 114
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, p0

    const/4 p0, 0x5

    .line 118
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    rsub-int/lit8 v5, v3, 0xe

    const/16 v6, 0xc

    .line 119
    div-int/2addr v5, v6

    add-int/lit16 v1, v1, 0x12c0

    sub-int/2addr v1, v5

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x3

    mul-int/lit16 v3, v3, 0x99

    add-int/2addr v3, v2

    .line 123
    div-int/2addr v3, p0

    add-int/2addr v4, v3

    mul-int/lit16 p0, v1, 0x16d

    add-int/2addr v4, p0

    div-int/lit8 p0, v1, 0x4

    add-int/2addr v4, p0

    div-int/lit8 p0, v1, 0x64

    sub-int/2addr v4, p0

    div-int/lit16 v1, v1, 0x190

    add-int/2addr v4, v1

    add-int/lit16 v4, v4, -0x7d2d

    const/16 p0, 0xb

    .line 125
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 126
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xd

    .line 127
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-double v2, v4

    int-to-double v4, p0

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    int-to-double v4, v1

    const-wide v6, 0x4096800000000000L    # 1440.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    int-to-double v0, v0

    const-wide v4, 0x40f5180000000000L    # 86400.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public static getNauticalTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;
    .locals 7

    const-wide/high16 v5, -0x3fd8000000000000L    # -12.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 256
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSunriseSunset(Ljava/util/Calendar;DDD)[Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method private static getSolarEquationVariables(Ljava/util/Calendar;D)Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;
    .locals 20

    move-wide/from16 v0, p1

    neg-double v0, v0

    .line 303
    invoke-static/range {p0 .. p0}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getJulianDate(Ljava/util/Calendar;)D

    move-result-wide v2

    const-wide v4, 0x4142b42c80000000L    # 2451545.0

    sub-double/2addr v2, v4

    const-wide v6, 0x3f4d7dbf487fcb92L    # 9.0E-4

    sub-double/2addr v2, v6

    const-wide v6, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v6

    sub-double/2addr v2, v0

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v9, v2

    const-wide v2, 0x4142b42c801d7dbfL    # 2451545.0009

    add-double/2addr v0, v2

    add-double/2addr v0, v9

    sub-double v2, v0, v4

    const-wide v4, 0x3fef8a099930e901L    # 0.98560028

    mul-double/2addr v2, v4

    const-wide v4, 0x40765877318fc505L    # 357.5291

    add-double/2addr v2, v4

    rem-double/2addr v2, v6

    .line 315
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .line 319
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ffea305532617c2L    # 1.9148

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v13, v11, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide v15, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v13, v15

    add-double/2addr v2, v13

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    mul-double/2addr v13, v11

    .line 320
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide v15, 0x3f33a92a30553261L    # 3.0E-4

    mul-double/2addr v13, v15

    add-double/2addr v2, v13

    .line 324
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    const-wide v15, 0x4059bbfb15b573ebL    # 102.9372

    add-double/2addr v13, v15

    add-double/2addr v13, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v13, v2

    rem-double/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    .line 327
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v6, 0x3f75b573eab367a1L    # 0.0053

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    mul-double/2addr v4, v13

    .line 328
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3f7c432ca57a786cL    # 0.0069

    mul-double/2addr v2, v4

    sub-double v15, v0, v2

    .line 331
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x403770624dd2f1aaL    # 23.439

    .line 332
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 331
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v17

    .line 335
    new-instance v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;

    const/16 v19, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v19}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;-><init>(DDDDDLcom/xiaopeng/lib/themeswitch/SunriseSunset$1;)V

    return-object v0
.end method

.method public static getSolarNoon(Ljava/util/Calendar;DD)Ljava/util/Calendar;
    .locals 6

    .line 399
    invoke-static {p0, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSolarEquationVariables(Ljava/util/Calendar;D)Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;

    move-result-object p3

    .line 405
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    const-wide v0, -0x40155810624dd2f2L    # -0.833

    .line 408
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 409
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v4, p3, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->delta:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 410
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iget-wide v2, p3, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->delta:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr p1, v2

    div-double/2addr v0, p1

    .line 408
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 412
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_0
    iget-wide p1, p3, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->jtransit:D

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getGregorianDate(D)Ljava/util/Calendar;

    move-result-object p1

    .line 418
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 419
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0
.end method

.method public static getSunriseSunset(Ljava/util/Calendar;DD)[Ljava/util/Calendar;
    .locals 7

    const-wide v5, -0x40155810624dd2f2L    # -0.833

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 287
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSunriseSunset(Ljava/util/Calendar;DDD)[Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getSunriseSunset(Ljava/util/Calendar;DDD)[Ljava/util/Calendar;
    .locals 5

    .line 354
    invoke-static {p0, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSolarEquationVariables(Ljava/util/Calendar;D)Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;

    move-result-object v0

    neg-double p3, p3

    .line 357
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    .line 360
    invoke-static {p5, p6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide p5

    .line 361
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-wide v3, v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->delta:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    sub-double/2addr p5, v1

    .line 362
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iget-wide v1, v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->delta:D

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr p1, v1

    div-double/2addr p5, p1

    .line 360
    invoke-static {p5, p6}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    .line 364
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide p5, 0x4142b42c801d7dbfL    # 2451545.0009

    .line 371
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    add-double/2addr p1, p3

    const-wide p3, 0x4076800000000000L    # 360.0

    div-double/2addr p1, p3

    iget-wide p3, v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->n:D

    add-double/2addr p1, p3

    const-wide p3, 0x3f75b573eab367a1L    # 0.0053

    iget-wide v1, v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->m:D

    .line 372
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, p3

    add-double/2addr p1, v1

    const-wide p3, 0x3f7c432ca57a786cL    # 0.0069

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    iget-wide v3, v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->lambda:D

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v1, p3

    sub-double/2addr p1, v1

    add-double/2addr p1, p5

    .line 375
    iget-wide p3, v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->jtransit:D

    iget-wide p5, v0, Lcom/xiaopeng/lib/themeswitch/SunriseSunset$SolarEquationVariables;->jtransit:D

    sub-double p5, p1, p5

    sub-double/2addr p3, p5

    .line 377
    invoke-static {p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getGregorianDate(D)Ljava/util/Calendar;

    move-result-object p3

    .line 378
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getGregorianDate(D)Ljava/util/Calendar;

    move-result-object p1

    .line 381
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    .line 382
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    .line 384
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x2

    .line 385
    new-array p1, p1, [Ljava/util/Calendar;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    aput-object p0, p1, p2

    return-object p1
.end method

.method public static isAstronomicalTwilight(DD)Z
    .locals 1

    .line 588
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 589
    invoke-static {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isAstronomicalTwilight(Ljava/util/Calendar;DD)Z

    move-result p0

    return p0
.end method

.method public static isAstronomicalTwilight(Ljava/util/Calendar;DD)Z
    .locals 2

    .line 601
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getNauticalTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 604
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getAstronomicalTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p2, 0x1

    .line 608
    aget-object p3, v0, p2

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    aget-object p3, p1, p2

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_2
    aget-object p1, p1, v1

    .line 609
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move p2, v1

    :cond_4
    :goto_0
    return p2
.end method

.method public static isCivilTwilight(DD)Z
    .locals 1

    .line 522
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 523
    invoke-static {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isCivilTwilight(Ljava/util/Calendar;DD)Z

    move-result p0

    return p0
.end method

.method public static isCivilTwilight(Ljava/util/Calendar;DD)Z
    .locals 2

    .line 535
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSunriseSunset(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 538
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getCivilTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p2, 0x1

    .line 542
    aget-object p3, v0, p2

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    aget-object p3, p1, p2

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_2
    aget-object p1, p1, v1

    .line 543
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move p2, v1

    :cond_4
    :goto_0
    return p2
.end method

.method public static isDay(DD)Z
    .locals 1

    .line 431
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 432
    invoke-static {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isDay(Ljava/util/Calendar;DD)Z

    move-result p0

    return p0
.end method

.method public static isDay(Ljava/util/Calendar;DD)Z
    .locals 3

    .line 444
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getSunriseSunset(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_3

    const/4 p3, 0x2

    .line 448
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-wide/16 v1, 0x0

    cmpl-double p1, p1, v1

    const/16 p2, 0xa

    const/4 p3, 0x3

    if-lez p1, :cond_1

    if-lt p0, p3, :cond_0

    if-gt p0, p2, :cond_0

    return p4

    :cond_0
    return v0

    :cond_1
    if-lt p0, p3, :cond_2

    if-gt p0, p2, :cond_2

    return v0

    :cond_2
    return p4

    .line 463
    :cond_3
    aget-object p1, p3, v0

    .line 464
    aget-object p2, p3, p4

    .line 465
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move p4, v0

    :goto_0
    return p4
.end method

.method public static isNauticalTwilight(DD)Z
    .locals 1

    .line 555
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    invoke-static {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isNauticalTwilight(Ljava/util/Calendar;DD)Z

    move-result p0

    return p0
.end method

.method public static isNauticalTwilight(Ljava/util/Calendar;DD)Z
    .locals 2

    .line 568
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getCivilTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 571
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getNauticalTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p2, 0x1

    .line 575
    aget-object p3, v0, p2

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    aget-object p3, p1, p2

    invoke-virtual {p0, p3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_2
    aget-object p1, p1, v1

    .line 576
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    aget-object p1, v0, v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move p2, v1

    :cond_4
    :goto_0
    return p2
.end method

.method public static isNight(DD)Z
    .locals 1

    .line 476
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 477
    invoke-static {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isNight(Ljava/util/Calendar;DD)Z

    move-result p0

    return p0
.end method

.method public static isNight(Ljava/util/Calendar;DD)Z
    .locals 3

    .line 489
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->getAstronomicalTwilight(Ljava/util/Calendar;DD)[Ljava/util/Calendar;

    move-result-object p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_3

    const/4 p3, 0x2

    .line 491
    invoke-virtual {p0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const-wide/16 v1, 0x0

    cmpl-double p1, p1, v1

    const/16 p2, 0xa

    const/4 p3, 0x3

    if-lez p1, :cond_1

    if-lt p0, p3, :cond_0

    if-gt p0, p2, :cond_0

    return v0

    :cond_0
    return p4

    :cond_1
    if-lt p0, p3, :cond_2

    if-gt p0, p2, :cond_2

    return p4

    :cond_2
    return v0

    .line 506
    :cond_3
    aget-object p1, p3, v0

    .line 507
    aget-object p2, p3, p4

    .line 508
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss z"

    invoke-direct {p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 510
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move p4, v0

    :cond_5
    :goto_0
    return p4
.end method

.method public static isTwilight(DD)Z
    .locals 1

    .line 619
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 620
    invoke-static {v0, p0, p1, p2, p3}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isTwilight(Ljava/util/Calendar;DD)Z

    move-result p0

    return p0
.end method

.method public static isTwilight(Ljava/util/Calendar;DD)Z
    .locals 1

    .line 630
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isCivilTwilight(Ljava/util/Calendar;DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 631
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isNauticalTwilight(Ljava/util/Calendar;DD)Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/themeswitch/SunriseSunset;->isAstronomicalTwilight(Ljava/util/Calendar;DD)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
