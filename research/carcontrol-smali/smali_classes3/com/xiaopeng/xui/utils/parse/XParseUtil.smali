.class public Lcom/xiaopeng/xui/utils/parse/XParseUtil;
.super Ljava/lang/Object;
.source "XParseUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPressureUnitTo()Ljava/lang/String;
    .locals 3

    .line 101
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_pressure_unit"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "bar"

    goto :goto_0

    :cond_0
    const-string v0, "psi"

    goto :goto_0

    :cond_1
    const-string v0, "kPa"

    :goto_0
    return-object v0
.end method

.method public static isMetric()Z
    .locals 3

    .line 91
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "speed_unit"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static isMetricUnit(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "km"

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "m"

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cm"

    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mm"

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "km/h"

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "kwh/100km"

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public static parse(Ljava/lang/Number;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;
    .locals 2

    .line 21
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->unitScale:Ljava/util/HashMap;

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->getPressureUnitTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    move-result-object p0

    return-object p0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse: unit not found numFrom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XParseUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 24
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->isMetricUnit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-static {}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->isMetric()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 28
    :cond_3
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->metricImperialPair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    move-result-object p0

    return-object p0

    .line 30
    :cond_4
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 31
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->metricImperialPair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    move-result-object p0

    return-object p0

    .line 32
    :cond_5
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->metricImperialPair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    move-result-object p0

    return-object p0

    .line 35
    :cond_6
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->isMetric()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->metricImperialPair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    move-result-object p0

    return-object p0

    .line 42
    :cond_8
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 43
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->metricImperialPair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    move-result-object p0

    return-object p0

    .line 44
    :cond_9
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 45
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->metricImperialPair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/utils/parse/XParseUtil;->parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    move-result-object p0

    return-object p0

    .line 47
    :cond_a
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 50
    :cond_b
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;
    .locals 3

    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance p1, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object p1

    .line 72
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/LengthUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 74
    :cond_1
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/SpeedUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 76
    :cond_2
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/PowerUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 78
    :cond_3
    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    new-instance v0, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr v1, p0

    sget-object p0, Lcom/xiaopeng/xui/utils/parse/unit/PressureUnit;->unitScale:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse: unit not found numFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XParseUtil"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p2, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/xui/utils/parse/XUnitParsedBean;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    return-object p2
.end method
