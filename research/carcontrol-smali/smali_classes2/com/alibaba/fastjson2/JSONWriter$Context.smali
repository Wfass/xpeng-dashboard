.class public final Lcom/alibaba/fastjson2/JSONWriter$Context;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# static fields
.field static final DEFAULT_ZONE_ID:Ljava/time/ZoneId;


# instance fields
.field afterFilter:Lcom/alibaba/fastjson2/filter/AfterFilter;

.field beforeFilter:Lcom/alibaba/fastjson2/filter/BeforeFilter;

.field contextNameFilter:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

.field contextValueFilter:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

.field dateFormat:Ljava/lang/String;

.field dateFormatISO8601:Z

.field dateFormatMillis:Z

.field dateFormatUnixTime:Z

.field dateFormatter:Ljava/time/format/DateTimeFormatter;

.field features:J

.field formatHasDay:Z

.field formatHasHour:Z

.field formatyyyyMMddhhmmss19:Z

.field hasFilter:Z

.field labelFilter:Lcom/alibaba/fastjson2/filter/LabelFilter;

.field locale:Ljava/util/Locale;

.field maxLevel:I

.field nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

.field propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

.field propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

.field public final provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

.field valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

.field zoneId:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1457
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V
    .locals 2

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 1471
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    if-eqz p1, :cond_1

    .line 1488
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 1489
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 1490
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    .line 1492
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFormat:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1494
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1485
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "objectWriterProvider must not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 4

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 1471
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    if-eqz p1, :cond_2

    .line 1535
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 1536
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 1537
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterZoneId:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    const/4 p1, 0x0

    .line 1539
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 1540
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    aget-object v2, p2, p1

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1543
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFormat:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1545
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1532
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "objectWriterProvider must not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 1471
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    .line 1514
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 1515
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 1516
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterZoneId:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    const/4 v0, 0x0

    .line 1518
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1519
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    aget-object v3, p2, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1523
    sget-object p1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFormat:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 1526
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 1471
    iput v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->maxLevel:I

    .line 1499
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    .line 1500
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 1501
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterZoneId:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    .line 1503
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1508
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1509
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1569
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    goto :goto_0

    .line 1571
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    :goto_0
    return-void
.end method

.method public varargs config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    const/4 v0, 0x0

    .line 1562
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1563
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1576
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_b

    .line 1577
    aget-object v2, p1, v1

    .line 1578
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz v3, :cond_1

    .line 1579
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-nez v3, :cond_0

    .line 1580
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/NameFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    goto :goto_1

    .line 1582
    :cond_0
    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson2/filter/NameFilter;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/filter/NameFilter;->compose(Lcom/alibaba/fastjson2/filter/NameFilter;Lcom/alibaba/fastjson2/filter/NameFilter;)Lcom/alibaba/fastjson2/filter/NameFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    .line 1586
    :cond_1
    :goto_1
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz v3, :cond_3

    .line 1587
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-nez v3, :cond_2

    .line 1588
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/ValueFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    goto :goto_2

    .line 1590
    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/alibaba/fastjson2/filter/ValueFilter;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/filter/ValueFilter;->compose(Lcom/alibaba/fastjson2/filter/ValueFilter;Lcom/alibaba/fastjson2/filter/ValueFilter;)Lcom/alibaba/fastjson2/filter/ValueFilter;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    .line 1594
    :cond_3
    :goto_2
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-eqz v3, :cond_4

    .line 1595
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    .line 1598
    :cond_4
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz v3, :cond_5

    .line 1599
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    .line 1602
    :cond_5
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/BeforeFilter;

    if-eqz v3, :cond_6

    .line 1603
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/BeforeFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->beforeFilter:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    .line 1606
    :cond_6
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/AfterFilter;

    if-eqz v3, :cond_7

    .line 1607
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/AfterFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->afterFilter:Lcom/alibaba/fastjson2/filter/AfterFilter;

    .line 1610
    :cond_7
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-eqz v3, :cond_8

    .line 1611
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/LabelFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->labelFilter:Lcom/alibaba/fastjson2/filter/LabelFilter;

    .line 1614
    :cond_8
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    if-eqz v3, :cond_9

    .line 1615
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    iput-object v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextValueFilter:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    .line 1618
    :cond_9
    instance-of v3, v2, Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    if-eqz v3, :cond_a

    .line 1619
    check-cast v2, Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextNameFilter:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1623
    :cond_b
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->beforeFilter:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->afterFilter:Lcom/alibaba/fastjson2/filter/AfterFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->labelFilter:Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextValueFilter:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextNameFilter:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    if-eqz p1, :cond_d

    :cond_c
    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    return-void
.end method

.method public getAfterFilter()Lcom/alibaba/fastjson2/filter/AfterFilter;
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->afterFilter:Lcom/alibaba/fastjson2/filter/AfterFilter;

    return-object v0
.end method

.method public getBeforeFilter()Lcom/alibaba/fastjson2/filter/BeforeFilter;
    .locals 1

    .line 1820
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->beforeFilter:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    return-object v0
.end method

.method public getContextNameFilter()Lcom/alibaba/fastjson2/filter/ContextNameFilter;
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextNameFilter:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    return-object v0
.end method

.method public getContextValueFilter()Lcom/alibaba/fastjson2/filter/ContextValueFilter;
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextValueFilter:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormatter()Ljava/time/format/DateTimeFormatter;
    .locals 2

    .line 1688
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatMillis:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatISO8601:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatUnixTime:Z

    if-nez v1, :cond_1

    .line 1689
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->locale:Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 1690
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0

    .line 1691
    :cond_0
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    .line 1693
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public getFeatures()J
    .locals 2

    .line 1550
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    return-wide v0
.end method

.method public getLabelFilter()Lcom/alibaba/fastjson2/filter/LabelFilter;
    .locals 1

    .line 1831
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->labelFilter:Lcom/alibaba/fastjson2/filter/LabelFilter;

    return-object v0
.end method

.method public getNameFilter()Lcom/alibaba/fastjson2/filter/NameFilter;
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "TT;>;"
        }
    .end annotation

    .line 1635
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1636
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v1, p1, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "TT;>;"
        }
    .end annotation

    .line 1640
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1641
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyFilter()Lcom/alibaba/fastjson2/filter/PropertyFilter;
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    return-object v0
.end method

.method public getPropertyPreFilter()Lcom/alibaba/fastjson2/filter/PropertyPreFilter;
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    return-object v0
.end method

.method public getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
    .locals 1

    .line 1645
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    return-object v0
.end method

.method public getValueFilter()Lcom/alibaba/fastjson2/filter/ValueFilter;
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    return-object v0
.end method

.method public getZoneId()Ljava/time/ZoneId;
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    .line 1650
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    return-object v0
.end method

.method public isDateFormatHasDay()Z
    .locals 1

    .line 1676
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->formatHasDay:Z

    return v0
.end method

.method public isDateFormatHasHour()Z
    .locals 1

    .line 1680
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->formatHasHour:Z

    return v0
.end method

.method public isDateFormatISO8601()Z
    .locals 1

    .line 1672
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatISO8601:Z

    return v0
.end method

.method public isDateFormatMillis()Z
    .locals 1

    .line 1664
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatMillis:Z

    return v0
.end method

.method public isDateFormatUnixTime()Z
    .locals 1

    .line 1668
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatUnixTime:Z

    return v0
.end method

.method public isEnabled(J)Z
    .locals 2

    .line 1558
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z
    .locals 4

    .line 1554
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFormatyyyyMMddhhmmss19()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->formatyyyyMMddhhmmss19:Z

    return v0
.end method

.method public setAfterFilter(Lcom/alibaba/fastjson2/filter/AfterFilter;)V
    .locals 0

    .line 1813
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->afterFilter:Lcom/alibaba/fastjson2/filter/AfterFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1815
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setBeforeFilter(Lcom/alibaba/fastjson2/filter/BeforeFilter;)V
    .locals 0

    .line 1824
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->beforeFilter:Lcom/alibaba/fastjson2/filter/BeforeFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1826
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setContextNameFilter(Lcom/alibaba/fastjson2/filter/ContextNameFilter;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextNameFilter:Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1793
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setContextValueFilter(Lcom/alibaba/fastjson2/filter/ContextValueFilter;)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->contextValueFilter:Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1782
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1698
    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatter:Ljava/time/format/DateTimeFormatter;

    :cond_1
    if-eqz p1, :cond_7

    .line 1701
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1703
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "iso8601"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "unixtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :sswitch_4
    const-string v1, "millis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string v0, "d"

    .line 1727
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v0, "H"

    .line 1728
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v4, v0

    move v1, v2

    goto :goto_1

    :pswitch_0
    move v0, v3

    move v1, v0

    move v4, v1

    move v5, v4

    move v3, v2

    move v2, v5

    goto :goto_3

    :pswitch_1
    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    move v1, v2

    move v4, v1

    :goto_1
    move v0, v3

    move v2, v0

    move v5, v2

    goto :goto_3

    :pswitch_2
    move v1, v2

    move v4, v1

    move v5, v4

    move v0, v3

    move v2, v0

    goto :goto_3

    :pswitch_3
    move v0, v2

    move v1, v3

    move v2, v1

    move v4, v2

    goto :goto_2

    :pswitch_4
    move v0, v3

    move v1, v0

    move v4, v1

    :goto_2
    move v5, v4

    .line 1731
    :goto_3
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatMillis:Z

    .line 1732
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatISO8601:Z

    .line 1733
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormatUnixTime:Z

    .line 1734
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->formatHasDay:Z

    .line 1735
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->formatHasHour:Z

    .line 1736
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->formatyyyyMMddhhmmss19:Z

    .line 1739
    :cond_7
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->dateFormat:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_4
        -0x112ad7ab -> :sswitch_3
        0x4f76f1a0 -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLabelFilter(Lcom/alibaba/fastjson2/filter/LabelFilter;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->labelFilter:Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1837
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V
    .locals 0

    .line 1758
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->nameFilter:Lcom/alibaba/fastjson2/filter/NameFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1760
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyFilter:Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1804
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V
    .locals 0

    .line 1747
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->propertyPreFilter:Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1749
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V
    .locals 0

    .line 1769
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->valueFilter:Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1771
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->hasFilter:Z

    :cond_0
    return-void
.end method

.method public setZoneId(Ljava/time/ZoneId;)V
    .locals 0

    .line 1656
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Context;->zoneId:Ljava/time/ZoneId;

    return-void
.end method
