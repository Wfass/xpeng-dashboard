.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$FilterGroup;,
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegment;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$RefOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegment;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegment;,
        Lcom/alibaba/fastjson/JSONPath$KeySetSegment;,
        Lcom/alibaba/fastjson/JSONPath$MinSegment;,
        Lcom/alibaba/fastjson/JSONPath$MaxSegment;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegment;,
        Lcom/alibaba/fastjson/JSONPath$Segment;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;,
        Lcom/alibaba/fastjson/JSONPath$Context;
    }
.end annotation


# static fields
.field static final LENGTH:J = -0x15eea8c0e50a614bL

.field static final SIZE:J = 0x4dea9618e618ae3cL

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasRefSegment:Z

.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializeConfig"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p3, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 66
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 67
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v1, "json-path can not be null or empty"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 567
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 568
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 569
    return-void
.end method

.method static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 1962
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1963
    move-object v0, p0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1966
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1967
    .local v0, "typeA":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1969
    .local v1, "typeB":Ljava/lang/Class;
    const-class v2, Ljava/math/BigDecimal;

    if-ne v0, v2, :cond_4

    .line 1970
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    .line 1971
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    move-object p1, v2

    goto/16 :goto_0

    .line 1972
    :cond_1
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_2

    .line 1973
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, p1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    move-object p1, v2

    goto/16 :goto_0

    .line 1974
    :cond_2
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_3

    .line 1975
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, p1

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    move-object p1, v2

    goto/16 :goto_0

    .line 1976
    :cond_3
    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_12

    .line 1977
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, p1

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    move-object p1, v2

    goto/16 :goto_0

    .line 1979
    :cond_4
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_8

    .line 1980
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_5

    .line 1981
    new-instance v2, Ljava/lang/Long;

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    move-object p1, v2

    goto/16 :goto_0

    .line 1982
    :cond_5
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_6

    .line 1983
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, p0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(J)V

    move-object p0, v2

    goto/16 :goto_0

    .line 1984
    :cond_6
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_7

    .line 1985
    new-instance v2, Ljava/lang/Float;

    move-object v3, p0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v2

    goto/16 :goto_0

    .line 1986
    :cond_7
    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_12

    .line 1987
    new-instance v2, Ljava/lang/Double;

    move-object v3, p0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v2

    goto/16 :goto_0

    .line 1989
    :cond_8
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_c

    .line 1990
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_9

    .line 1991
    new-instance v2, Ljava/lang/Long;

    move-object v3, p0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v2

    goto/16 :goto_0

    .line 1992
    :cond_9
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_a

    .line 1993
    new-instance v2, Ljava/math/BigDecimal;

    move-object v3, p0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    move-object p0, v2

    goto/16 :goto_0

    .line 1994
    :cond_a
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_b

    .line 1995
    new-instance v2, Ljava/lang/Float;

    move-object v3, p0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v2

    goto/16 :goto_0

    .line 1996
    :cond_b
    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_12

    .line 1997
    new-instance v2, Ljava/lang/Double;

    move-object v3, p0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v2

    goto/16 :goto_0

    .line 1999
    :cond_c
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_f

    .line 2000
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_d

    .line 2001
    new-instance v2, Ljava/lang/Double;

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v2

    goto :goto_0

    .line 2002
    :cond_d
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_e

    .line 2003
    new-instance v2, Ljava/lang/Double;

    move-object v3, p1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v2

    goto :goto_0

    .line 2004
    :cond_e
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_12

    .line 2005
    new-instance v2, Ljava/lang/Double;

    move-object v3, p1

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v2

    goto :goto_0

    .line 2007
    :cond_f
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_12

    .line 2008
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_10

    .line 2009
    new-instance v2, Ljava/lang/Float;

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    move-object p1, v2

    goto :goto_0

    .line 2010
    :cond_10
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_11

    .line 2011
    new-instance v2, Ljava/lang/Float;

    move-object v3, p1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    move-object p1, v2

    goto :goto_0

    .line 2012
    :cond_11
    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_12

    .line 2013
    new-instance v2, Ljava/lang/Double;

    move-object v3, p0

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v2

    .line 2017
    :cond_12
    :goto_0
    move-object v2, p0

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 582
    if-eqz p0, :cond_1

    .line 586
    sget-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 587
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    if-nez v0, :cond_0

    .line 588
    new-instance v1, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 589
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 590
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 594
    :cond_0
    return-object v0

    .line 583
    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v1, "jsonpath can not be null"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 553
    if-nez p0, :cond_0

    .line 554
    const/4 v0, 0x0

    return v0

    .line 557
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 558
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 562
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 563
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 3443
    if-ne p0, p1, :cond_0

    .line 3444
    const/4 v0, 0x1

    return v0

    .line 3447
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    .line 3451
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 3452
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3455
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_4

    .line 3456
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 3457
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0

    .line 3460
    :cond_3
    return v0

    .line 3463
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3448
    :cond_5
    :goto_0
    return v0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 12
    .param p0, "a"    # Ljava/lang/Number;
    .param p1, "b"    # Ljava/lang/Number;

    .line 3468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3469
    .local v0, "clazzA":Ljava/lang/Class;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v1

    .line 3471
    .local v1, "isIntA":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3472
    .local v2, "clazzB":Ljava/lang/Class;
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v3

    .line 3474
    .local v3, "isIntB":Z
    instance-of v4, p0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_0

    .line 3475
    move-object v4, p0

    check-cast v4, Ljava/math/BigDecimal;

    .line 3477
    .local v4, "decimalA":Ljava/math/BigDecimal;
    if-eqz v3, :cond_0

    .line 3478
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 3482
    .end local v4    # "decimalA":Ljava/math/BigDecimal;
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 3483
    if-eqz v3, :cond_2

    .line 3484
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    return v4

    .line 3487
    :cond_2
    instance-of v6, p1, Ljava/math/BigInteger;

    if-eqz v6, :cond_3

    .line 3488
    move-object v4, p0

    check-cast v4, Ljava/math/BigInteger;

    .line 3489
    .local v4, "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 3491
    .local v5, "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 3495
    .end local v4    # "bigIntB":Ljava/math/BigInteger;
    .end local v5    # "bigIntA":Ljava/math/BigInteger;
    :cond_3
    if-eqz v3, :cond_4

    .line 3496
    instance-of v6, p0, Ljava/math/BigInteger;

    if-eqz v6, :cond_4

    .line 3497
    move-object v4, p0

    check-cast v4, Ljava/math/BigInteger;

    .line 3498
    .local v4, "bigIntA":Ljava/math/BigInteger;
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 3500
    .local v5, "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 3505
    .end local v4    # "bigIntA":Ljava/math/BigInteger;
    .end local v5    # "bigIntB":Ljava/math/BigInteger;
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v6

    .line 3506
    .local v6, "isDoubleA":Z
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v7

    .line 3508
    .local v7, "isDoubleB":Z
    if-eqz v6, :cond_5

    if-nez v7, :cond_7

    :cond_5
    if-eqz v6, :cond_6

    if-nez v3, :cond_7

    :cond_6
    if-eqz v7, :cond_9

    if-eqz v1, :cond_9

    .line 3509
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-nez v8, :cond_8

    goto :goto_1

    :cond_8
    move v4, v5

    :goto_1
    return v4

    .line 3513
    :cond_9
    return v5
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 529
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 530
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 626
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs extract(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I
    .param p4, "optionFeatures"    # [Lcom/alibaba/fastjson/parser/Feature;

    .line 617
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p3, v0

    .line 618
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 619
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v1

    .line 620
    .local v1, "jsonPath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONPath;->extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v2

    .line 621
    .local v2, "result":Ljava/lang/Object;
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 622
    return-object v2
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3517
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3521
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static keySet(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 547
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 548
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 549
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 630
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .locals 3
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 635
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 637
    .local v1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "/"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 638
    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 10
    .param p2, "parent"    # Ljava/lang/String;
    .param p3, "javaObject"    # Ljava/lang/Object;
    .param p4, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .line 642
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    .local p1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p3, :cond_0

    .line 643
    return-void

    .line 646
    :cond_0
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 647
    .local v0, "p":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 648
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 649
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/lang/Character;

    if-eq v2, v3, :cond_2

    const-class v3, Ljava/util/UUID;

    if-eq v2, v3, :cond_2

    .line 653
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, p3, Ljava/lang/Number;

    if-nez v3, :cond_2

    instance-of v3, p3, Ljava/util/Date;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 658
    .local v3, "basicType":Z
    :goto_1
    if-nez v3, :cond_3

    .line 659
    return-void

    .line 663
    .end local v2    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "basicType":Z
    :cond_3
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    instance-of v2, p3, Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 666
    move-object v1, p3

    check-cast v1, Ljava/util/Map;

    .line 668
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 669
    .local v3, "entryObj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/util/Map$Entry;

    .line 670
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 672
    .local v5, "key":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 673
    const-string v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 674
    .local v6, "path":Ljava/lang/String;
    :goto_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, p1, v6, v7, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 676
    .end local v3    # "entryObj":Ljava/lang/Object;
    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "path":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 677
    :cond_6
    return-void

    .line 680
    .end local v1    # "map":Ljava/util/Map;
    :cond_7
    instance-of v2, p3, Ljava/util/Collection;

    if-eqz v2, :cond_a

    .line 681
    move-object v1, p3

    check-cast v1, Ljava/util/Collection;

    .line 683
    .local v1, "collection":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 684
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 685
    .local v4, "item":Ljava/lang/Object;
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 686
    .local v5, "path":Ljava/lang/String;
    :goto_7
    invoke-static {p0, p1, v5, v4, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 687
    add-int/lit8 v2, v2, 0x1

    .line 688
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "path":Ljava/lang/String;
    goto :goto_5

    .line 690
    :cond_9
    return-void

    .line 693
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v2    # "i":I
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 695
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 696
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 698
    .local v3, "len":I
    nop

    .local v1, "i":I
    :goto_8
    if-ge v1, v3, :cond_c

    .line 699
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 701
    .restart local v4    # "item":Ljava/lang/Object;
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 702
    .restart local v5    # "path":Ljava/lang/String;
    :goto_a
    invoke-static {p0, p1, v5, v4, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 698
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 705
    .end local v1    # "i":I
    :cond_c
    return-void

    .line 708
    .end local v3    # "len":I
    :cond_d
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_e

    .line 712
    :cond_e
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 713
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v3, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v3, :cond_12

    .line 714
    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 717
    .local v3, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_start_0
    invoke-virtual {v3, p3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 718
    .local v4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 719
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 721
    .local v7, "key":Ljava/lang/String;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_10

    .line 722
    const-string v8, "/"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 723
    .local v8, "path":Ljava/lang/String;
    :goto_d
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-static {p0, p1, v8, v9, p4}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    :cond_10
    goto :goto_b

    .line 728
    .end local v4    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_11
    nop

    .line 729
    return-void

    .line 726
    :catch_0
    move-exception v4

    .line 727
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "toJSON error"

    invoke-direct {v5, v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 732
    .end local v3    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_12
    return-void

    .line 709
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_13
    :goto_e
    return-void
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 604
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 606
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 605
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    return-object v0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "root"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 577
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 578
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static varargs reserveToArray(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "paths"    # [Ljava/lang/String;

    .line 4006
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 4008
    .local v0, "reserved":Lcom/alibaba/fastjson/JSONArray;
    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 4012
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 4013
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v4

    .line 4014
    .local v4, "path":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 4016
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 4017
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 4012
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "path":Lcom/alibaba/fastjson/JSONPath;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4020
    :cond_1
    return-object v0

    .line 4009
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs reserveToObject(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "paths"    # [Ljava/lang/String;

    .line 4024
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 4028
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 4029
    .local v0, "reserved":Lcom/alibaba/fastjson/JSONObject;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 4030
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v5

    .line 4031
    .local v5, "path":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 4032
    iget-object v6, v5, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    iget-object v7, v5, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v7, v7

    sub-int/2addr v7, v1

    aget-object v6, v6, v7

    .line 4033
    .local v6, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segment;
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v7, :cond_2

    .line 4034
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4035
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_1

    .line 4036
    goto :goto_1

    .line 4038
    :cond_1
    invoke-virtual {v5, v0, v7}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4029
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "path":Lcom/alibaba/fastjson/JSONPath;
    .end local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4044
    :cond_3
    return-object v0

    .line 4025
    .end local v0    # "reserved":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    :goto_2
    return-object p0
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 572
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 573
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .line 534
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 535
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 536
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 272
    if-eqz p2, :cond_b

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 276
    :cond_0
    if-nez p1, :cond_1

    .line 277
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 282
    move-object v0, p1

    .line 283
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 284
    .local v1, "parentObject":Ljava/lang/Object;
    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "currentObject":Ljava/lang/Object;
    .local v3, "parentObject":Ljava/lang/Object;
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 285
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 286
    move-object v3, v1

    .line 288
    :cond_2
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v4, v4, v0

    invoke-interface {v4, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v0    # "i":I
    :cond_3
    move-object v0, v1

    .line 293
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_a

    .line 297
    instance-of v4, v0, Ljava/util/Collection;

    if-eqz v4, :cond_5

    .line 298
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    .line 299
    .local v4, "collection":Ljava/util/Collection;
    array-length v5, p2

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, p2, v2

    .line 300
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v6    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    :cond_4
    return-void

    .line 305
    .end local v4    # "collection":Ljava/util/Collection;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 308
    .local v4, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 309
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 310
    .local v5, "length":I
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    array-length v7, p2

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 312
    .local v6, "descArray":Ljava/lang/Object;
    invoke-static {v0, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    nop

    .local v2, "i":I
    :goto_2
    array-length v7, p2

    if-ge v2, v7, :cond_6

    .line 314
    add-int v7, v5, v2

    aget-object v8, p2, v2

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 317
    .end local v2    # "i":I
    :cond_6
    nop

    .end local v5    # "length":I
    move-object v2, v6

    .line 318
    .end local v6    # "descArray":Ljava/lang/Object;
    .local v2, "newResult":Ljava/lang/Object;
    nop

    .line 319
    nop

    .line 322
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    .line 323
    .local v5, "lastSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v6, :cond_7

    .line 324
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 325
    .local v6, "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    invoke-virtual {v6, p0, v3, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    return-void

    .line 329
    .end local v6    # "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :cond_7
    instance-of v6, v5, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v6, :cond_8

    .line 330
    move-object v6, v5

    check-cast v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {v6, p0, v3, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    return-void

    .line 334
    :cond_8
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 319
    .end local v2    # "newResult":Ljava/lang/Object;
    .end local v5    # "lastSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    :cond_9
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported array put operation. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    .end local v4    # "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "value not found in path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    .end local v0    # "result":Ljava/lang/Object;
    .end local v1    # "currentObject":Ljava/lang/Object;
    .end local v3    # "parentObject":Ljava/lang/Object;
    :cond_b
    :goto_3
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 185
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 186
    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 191
    move-object v1, p1

    .line 192
    .local v1, "currentObject":Ljava/lang/Object;
    move-object v2, v1

    move v1, v0

    .local v1, "i":I
    .local v2, "currentObject":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 193
    move-object v3, v2

    .line 194
    .local v3, "parentObject":Ljava/lang/Object;
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v4, v4, v1

    invoke-interface {v4, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 195
    if-nez v2, :cond_1

    .line 196
    return v0

    .line 199
    :cond_1
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v2, v4, :cond_2

    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 200
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 192
    .end local v3    # "parentObject":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 209
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    .line 212
    return v1

    .line 215
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 216
    return v2

    .line 219
    :cond_1
    instance-of v3, v0, Ljava/lang/Iterable;

    if-eqz v3, :cond_4

    .line 220
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 221
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 223
    .local v4, "item":Ljava/lang/Object;
    invoke-static {v4, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    return v1

    .line 226
    .end local v4    # "item":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 228
    :cond_3
    return v2

    .line 231
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_4
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3410
    .local p2, "outValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3412
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 3414
    .local v1, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    const/4 v2, 0x0

    .line 3415
    .local v2, "collection":Ljava/util/Collection;
    if-eqz v1, :cond_0

    .line 3417
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 3420
    goto :goto_0

    .line 3418
    :catch_0
    move-exception v3

    .line 3419
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonpath error, path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3421
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 3422
    move-object v3, p1

    check-cast v3, Ljava/util/Map;

    .line 3423
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 3424
    .end local v3    # "map":Ljava/util/Map;
    goto :goto_0

    :cond_1
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 3425
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    .line 3428
    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    .line 3429
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3430
    .local v4, "fieldValue":Ljava/lang/Object;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 3433
    :cond_3
    invoke-virtual {p0, v4, p2}, Lcom/alibaba/fastjson/JSONPath;->deepGetPropertyValues(Ljava/lang/Object;Ljava/util/List;)V

    .end local v4    # "fieldValue":Ljava/lang/Object;
    goto :goto_3

    .line 3431
    .restart local v4    # "fieldValue":Ljava/lang/Object;
    :cond_4
    :goto_2
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3435
    .end local v4    # "fieldValue":Ljava/lang/Object;
    :goto_3
    goto :goto_1

    .line 3436
    :cond_5
    return-void

    .line 3439
    :cond_6
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3685
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 3686
    return-void

    .line 3689
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 3690
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 3692
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3693
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 3695
    .local v3, "val":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3696
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 3697
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {p3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3699
    :cond_2
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3701
    goto :goto_0

    .line 3704
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3705
    goto :goto_0

    .line 3708
    :cond_4
    invoke-virtual {p0, v3, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 3709
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 3711
    :cond_5
    return-void

    .line 3714
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_9

    .line 3715
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3716
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3717
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3718
    .local v1, "next":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3719
    goto :goto_1

    .line 3721
    :cond_7
    invoke-virtual {p0, v1, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 3722
    .end local v1    # "next":Ljava/lang/Object;
    goto :goto_1

    .line 3723
    :cond_8
    return-void

    .line 3726
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3728
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 3729
    .local v1, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v1, :cond_c

    .line 3731
    :try_start_0
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3732
    .local v2, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v2, :cond_a

    .line 3734
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3735
    .restart local v3    # "val":Ljava/lang/Object;
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3740
    .end local v3    # "val":Ljava/lang/Object;
    nop

    .line 3741
    return-void

    .line 3738
    :catch_0
    move-exception v3

    .line 3739
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldValue error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3736
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 3737
    .local v3, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFieldValue error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 3743
    .end local v3    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :cond_a
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 3744
    .local v3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3745
    .local v5, "val":Ljava/lang/Object;
    invoke-virtual {p0, v5, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3746
    .end local v5    # "val":Ljava/lang/Object;
    goto :goto_2

    .line 3747
    :cond_b
    return-void

    .line 3748
    .end local v2    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v3    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_2
    move-exception v2

    .line 3749
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonpath error, path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", segement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3753
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_e

    .line 3754
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 3756
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 3757
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3758
    .local v4, "val":Ljava/lang/Object;
    invoke-virtual {p0, v4, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 3756
    .end local v4    # "val":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3760
    .end local v3    # "i":I
    :cond_d
    return-void

    .line 3762
    .end local v2    # "list":Ljava/util/List;
    :cond_e
    return-void
.end method

.method protected deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 16
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J
    .param p5, "value"    # Ljava/lang/Object;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 3765
    move-object/from16 v10, p5

    if-nez v8, :cond_0

    .line 3766
    return-void

    .line 3769
    :cond_0
    instance-of v0, v8, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 3770
    move-object v0, v8

    check-cast v0, Ljava/util/Map;

    .line 3772
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3773
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3774
    .local v1, "val":Ljava/lang/Object;
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3775
    return-void

    .line 3778
    .end local v1    # "val":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 3779
    .local v12, "val":Ljava/lang/Object;
    move-object v1, v7

    move-object v2, v12

    move-object v3, v9

    move-wide/from16 v4, p3

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    .line 3780
    .end local v12    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 3781
    :cond_2
    return-void

    .line 3784
    .end local v0    # "map":Ljava/util/Map;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 3786
    .local v11, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v12

    .line 3787
    .local v12, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v12, :cond_6

    .line 3789
    :try_start_0
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 3790
    .local v0, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v0, :cond_4

    .line 3791
    invoke-virtual {v0, v8, v10}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3792
    return-void

    .line 3795
    :cond_4
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    move-object v13, v1

    .line 3796
    .local v13, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    invoke-virtual {v13, v8}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v14, v1

    .line 3797
    .local v14, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3798
    .local v2, "val":Ljava/lang/Object;
    move-object v1, v7

    move-object v3, v9

    move-wide/from16 v4, p3

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3799
    .end local v2    # "val":Ljava/lang/Object;
    goto :goto_1

    .line 3800
    :cond_5
    return-void

    .line 3801
    .end local v0    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v13    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v14    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 3802
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonpath error, path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", segement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3806
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    instance-of v0, v8, Ljava/util/List;

    if-eqz v0, :cond_8

    .line 3807
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 3809
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    move v13, v1

    .end local v1    # "i":I
    .local v13, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_7

    .line 3810
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 3811
    .local v14, "val":Ljava/lang/Object;
    move-object v1, v7

    move-object v2, v14

    move-object v3, v9

    move-wide/from16 v4, p3

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/JSONPath;->deepSet(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)V

    .line 3809
    .end local v14    # "val":Ljava/lang/Object;
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 3813
    .end local v1    # "i":I
    :cond_7
    return-void

    .line 3815
    .end local v0    # "list":Ljava/util/List;
    :cond_8
    return-void
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 98
    if-nez p1, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 104
    move-object v0, p1

    .line 105
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v2, v2, v1

    .line 107
    .local v2, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    .end local v2    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method evalKeySet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 5
    .param p1, "currentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 3975
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3976
    return-object v0

    .line 3979
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 3981
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3984
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_4

    instance-of v1, p1, [Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 3985
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3989
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 3990
    .local v1, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-nez v1, :cond_3

    .line 3991
    return-object v0

    .line 3995
    :cond_3
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldNames(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3996
    :catch_0
    move-exception v0

    .line 3997
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalKeySet error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3986
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :cond_4
    :goto_0
    return-object v0
.end method

.method evalSize(Ljava/lang/Object;)I
    .locals 5
    .param p1, "currentObject"    # Ljava/lang/Object;

    .line 3933
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 3934
    return v0

    .line 3937
    :cond_0
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 3938
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0

    .line 3941
    :cond_1
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3942
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0

    .line 3945
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3946
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 3949
    :cond_3
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 3950
    const/4 v0, 0x0

    .line 3952
    .local v0, "count":I
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3953
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 3954
    add-int/lit8 v0, v0, 0x1

    .line 3956
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 3957
    :cond_5
    return v0

    .line 3960
    .end local v0    # "count":I
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 3962
    .local v1, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-nez v1, :cond_7

    .line 3963
    return v0

    .line 3967
    :cond_7
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3968
    :catch_0
    move-exception v0

    .line 3969
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalSize error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public extract(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 8
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 113
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 114
    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 119
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "root":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0    # "root":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 128
    :cond_2
    const/4 v1, 0x0

    .line 129
    .local v1, "context":Lcom/alibaba/fastjson/JSONPath$Context;
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "context":Lcom/alibaba/fastjson/JSONPath$Context;
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v4

    if-ge v1, v4, :cond_b

    .line 130
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v4, v4, v1

    .line 131
    .local v4, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v1, v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v2

    .line 133
    .local v5, "last":Z
    :goto_1
    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    if-eqz v7, :cond_4

    .line 134
    iget-object v6, v3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    invoke-interface {v4, p0, v0, v6}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    .line 135
    goto :goto_5

    .line 140
    :cond_4
    if-nez v5, :cond_a

    .line 141
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    add-int/lit8 v7, v1, 0x1

    aget-object v6, v6, v7

    .line 142
    .local v6, "nextSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    instance-of v7, v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v7, :cond_6

    move-object v7, v4

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 143
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$100(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-nez v7, :cond_5

    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-nez v7, :cond_5

    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegment;

    if-nez v7, :cond_5

    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    if-nez v7, :cond_5

    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-nez v7, :cond_5

    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v7, :cond_6

    .line 151
    :cond_5
    const/4 v7, 0x1

    .end local v6    # "nextSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .local v7, "eval":Z
    :goto_2
    goto :goto_3

    .line 152
    .end local v7    # "eval":Z
    .restart local v6    # "nextSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    :cond_6
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v7, :cond_7

    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 153
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->access$200(Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;)I

    move-result v7

    if-gez v7, :cond_7

    .line 154
    const/4 v7, 0x1

    goto :goto_2

    .line 155
    :cond_7
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v7, :cond_8

    .line 156
    const/4 v7, 0x1

    goto :goto_2

    .line 157
    :cond_8
    instance-of v7, v4, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    if-eqz v7, :cond_9

    .line 158
    const/4 v7, 0x1

    goto :goto_2

    .line 160
    :cond_9
    nop

    .end local v6    # "nextSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    move v7, v2

    .restart local v7    # "eval":Z
    :goto_3
    move v6, v7

    .line 162
    .end local v7    # "eval":Z
    .local v6, "eval":Z
    goto :goto_4

    .line 163
    .end local v6    # "eval":Z
    :cond_a
    nop

    .line 166
    .restart local v6    # "eval":Z
    :goto_4
    new-instance v7, Lcom/alibaba/fastjson/JSONPath$Context;

    invoke-direct {v7, v3, v6}, Lcom/alibaba/fastjson/JSONPath$Context;-><init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V

    move-object v3, v7

    .line 167
    invoke-interface {v4, p0, p1, v3}, Lcom/alibaba/fastjson/JSONPath$Segment;->extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V

    .line 129
    .end local v4    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v5    # "last":Z
    .end local v6    # "eval":Z
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_b
    iget-object v0, v3, Lcom/alibaba/fastjson/JSONPath$Context;->object:Ljava/lang/Object;

    return-object v0
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .line 3258
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3259
    return-object v0

    .line 3262
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 3263
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 3265
    .local v1, "list":Ljava/util/List;
    if-ltz p2, :cond_2

    .line 3266
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_1

    .line 3267
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3269
    :cond_1
    return-object v0

    .line 3271
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_3

    .line 3272
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3274
    :cond_3
    return-object v0

    .line 3278
    .end local v1    # "list":Ljava/util/List;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3279
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 3281
    .local v1, "arrayLenth":I
    if-ltz p2, :cond_6

    .line 3282
    if-ge p2, v1, :cond_5

    .line 3283
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3285
    :cond_5
    return-object v0

    .line 3287
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v1, :cond_7

    .line 3288
    add-int v0, v1, p2

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3290
    :cond_7
    return-object v0

    .line 3294
    .end local v1    # "arrayLenth":I
    :cond_8
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_a

    .line 3295
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 3296
    .local v0, "map":Ljava/util/Map;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3297
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_9

    .line 3298
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3300
    :cond_9
    return-object v1

    .line 3303
    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_d

    .line 3304
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 3305
    .local v1, "collection":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 3306
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3307
    .local v4, "item":Ljava/lang/Object;
    if-ne v2, p2, :cond_b

    .line 3308
    return-object v4

    .line 3310
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 3311
    .end local v4    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 3312
    :cond_c
    return-object v0

    .line 3315
    .end local v1    # "collection":Ljava/util/Collection;
    .end local v2    # "i":I
    :cond_d
    if-nez p2, :cond_e

    .line 3316
    return-object p1

    .line 3319
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;"
        }
    .end annotation

    .line 3921
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 3923
    .local v0, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 3924
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v2, :cond_0

    .line 3925
    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 3928
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_0
    return-object v0
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .line 3910
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 3912
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 3913
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_0

    .line 3914
    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 3917
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 24
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    .line 3528
    move-wide/from16 v9, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3529
    return-object v3

    .line 3532
    :cond_0
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3534
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3535
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    nop

    .line 3538
    .end local p1    # "currentObject":Ljava/lang/Object;
    .local v0, "currentObject":Ljava/lang/Object;
    nop

    .line 3541
    move-object v11, v0

    goto :goto_0

    .line 3536
    .end local v0    # "currentObject":Ljava/lang/Object;
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 3541
    :cond_1
    move-object v11, v2

    .end local p1    # "currentObject":Ljava/lang/Object;
    .local v11, "currentObject":Ljava/lang/Object;
    :goto_0
    instance-of v0, v11, Ljava/util/Map;

    const-wide v4, -0x15eea8c0e50a614bL    # -8.49505883430448E202

    const-wide v6, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    if-eqz v0, :cond_4

    .line 3542
    move-object v0, v11

    check-cast v0, Ljava/util/Map;

    .line 3543
    .local v0, "map":Ljava/util/Map;
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3545
    .local v2, "val":Ljava/lang/Object;
    if-nez v2, :cond_3

    cmp-long v3, v6, v9

    if-eqz v3, :cond_2

    cmp-long v3, v4, v9

    if-nez v3, :cond_3

    .line 3546
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3549
    :cond_3
    return-object v2

    .line 3552
    .end local v0    # "map":Ljava/util/Map;
    .end local v2    # "val":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 3554
    .local v12, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v13

    .line 3555
    .local v13, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v13, :cond_5

    .line 3557
    const/4 v7, 0x0

    move-object v2, v13

    move-object v3, v11

    move-object v4, v8

    move-wide v5, v9

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 3558
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 3559
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonpath error, path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", segement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 3563
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    instance-of v0, v11, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 3564
    move-object v0, v11

    check-cast v0, Ljava/util/List;

    .line 3566
    .local v0, "list":Ljava/util/List;
    cmp-long v3, v6, v9

    if-eqz v3, :cond_f

    cmp-long v3, v4, v9

    if-nez v3, :cond_6

    goto :goto_3

    .line 3570
    :cond_6
    const/4 v3, 0x0

    .line 3572
    .local v3, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    nop

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 3573
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3576
    .local v4, "obj":Ljava/lang/Object;
    if-ne v4, v0, :cond_8

    .line 3577
    if-nez v3, :cond_7

    .line 3578
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    move-object v3, v5

    .line 3580
    :cond_7
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3581
    goto :goto_2

    .line 3584
    :cond_8
    invoke-virtual {v1, v4, v8, v9, v10}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v5

    .line 3585
    .local v5, "itemValue":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_a

    .line 3586
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    .line 3587
    .local v6, "collection":Ljava/util/Collection;
    if-nez v3, :cond_9

    .line 3588
    new-instance v7, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v7, v14}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    move-object v3, v7

    .line 3590
    :cond_9
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3591
    .end local v6    # "collection":Ljava/util/Collection;
    goto :goto_2

    :cond_a
    if-eqz v5, :cond_c

    .line 3592
    if-nez v3, :cond_b

    .line 3593
    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    move-object v3, v6

    .line 3595
    :cond_b
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3572
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "itemValue":Ljava/lang/Object;
    :cond_c
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3599
    .end local v2    # "i":I
    :cond_d
    if-nez v3, :cond_e

    .line 3600
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 3603
    :cond_e
    return-object v3

    .line 3567
    .end local v3    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_f
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3606
    .end local v0    # "list":Ljava/util/List;
    :cond_10
    instance-of v0, v11, [Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 3607
    move-object v0, v11

    check-cast v0, [Ljava/lang/Object;

    .line 3609
    .local v0, "array":[Ljava/lang/Object;
    cmp-long v3, v6, v9

    if-eqz v3, :cond_16

    cmp-long v3, v4, v9

    if-nez v3, :cond_11

    goto :goto_6

    .line 3613
    :cond_11
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    array-length v4, v0

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 3615
    .restart local v3    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    nop

    .restart local v2    # "i":I
    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_15

    .line 3616
    aget-object v4, v0, v2

    .line 3619
    .restart local v4    # "obj":Ljava/lang/Object;
    if-ne v4, v0, :cond_12

    .line 3620
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3621
    goto :goto_5

    .line 3624
    :cond_12
    invoke-virtual {v1, v4, v8, v9, v10}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v5

    .line 3625
    .restart local v5    # "itemValue":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_13

    .line 3626
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    .line 3627
    .restart local v6    # "collection":Ljava/util/Collection;
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3628
    .end local v6    # "collection":Ljava/util/Collection;
    goto :goto_5

    :cond_13
    if-eqz v5, :cond_14

    .line 3629
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3615
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "itemValue":Ljava/lang/Object;
    :cond_14
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3633
    .end local v2    # "i":I
    :cond_15
    return-object v3

    .line 3610
    .end local v3    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_16
    :goto_6
    array-length v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3636
    .end local v0    # "array":[Ljava/lang/Object;
    :cond_17
    instance-of v0, v11, Ljava/lang/Enum;

    if-eqz v0, :cond_19

    .line 3637
    const-wide v4, -0x3b435245719ce47aL    # -1.3543099103600943E23

    .line 3638
    .local v4, "NAME":J
    const-wide v6, -0xe14383dfcdd03deL    # -5.788733405278088E240

    .line 3640
    .local v6, "ORDINAL":J
    move-object v0, v11

    check-cast v0, Ljava/lang/Enum;

    .line 3641
    .local v0, "e":Ljava/lang/Enum;
    const-wide v14, -0x3b435245719ce47aL    # -1.3543099103600943E23

    cmp-long v2, v14, v9

    if-nez v2, :cond_18

    .line 3642
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3645
    :cond_18
    const-wide v14, -0xe14383dfcdd03deL    # -5.788733405278088E240

    cmp-long v2, v14, v9

    if-nez v2, :cond_19

    .line 3646
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3650
    .end local v0    # "e":Ljava/lang/Enum;
    .end local v4    # "NAME":J
    .end local v6    # "ORDINAL":J
    :cond_19
    instance-of v0, v11, Ljava/util/Calendar;

    if-eqz v0, :cond_1f

    .line 3651
    const-wide v4, 0x7c64634977425edcL

    .line 3652
    .local v4, "YEAR":J
    const-wide v6, -0xb423c6c9050a95bL

    .line 3653
    .local v6, "MONTH":J
    const-wide v14, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    .line 3654
    .local v14, "DAY":J
    const-wide v16, 0x407efecc7eb5764fL    # 495.924925526463

    .line 3655
    .local v16, "HOUR":J
    const-wide v18, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    .line 3656
    .local v18, "MINUTE":J
    const-wide v20, -0x5b667a10b311df43L

    .line 3658
    .local v20, "SECOND":J
    move-object v0, v11

    check-cast v0, Ljava/util/Calendar;

    .line 3659
    .local v0, "e":Ljava/util/Calendar;
    const-wide v22, 0x7c64634977425edcL

    cmp-long v2, v22, v9

    if-nez v2, :cond_1a

    .line 3660
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3662
    :cond_1a
    const-wide v22, -0xb423c6c9050a95bL

    cmp-long v2, v22, v9

    if-nez v2, :cond_1b

    .line 3663
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3665
    :cond_1b
    const-wide v22, -0x3572c6e70ba870e3L    # -1.3667045267075351E51

    cmp-long v2, v22, v9

    if-nez v2, :cond_1c

    .line 3666
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3668
    :cond_1c
    const-wide v22, 0x407efecc7eb5764fL    # 495.924925526463

    cmp-long v2, v22, v9

    if-nez v2, :cond_1d

    .line 3669
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3671
    :cond_1d
    const-wide v22, 0x5bb2f9bdf2fad1e9L    # 5.387565597711505E133

    cmp-long v2, v22, v9

    if-nez v2, :cond_1e

    .line 3672
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3674
    :cond_1e
    const-wide v22, -0x5b667a10b311df43L

    cmp-long v2, v22, v9

    if-nez v2, :cond_1f

    .line 3675
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 3679
    .end local v0    # "e":Ljava/util/Calendar;
    .end local v4    # "YEAR":J
    .end local v6    # "MONTH":J
    .end local v14    # "DAY":J
    .end local v16    # "HOUR":J
    .end local v18    # "MINUTE":J
    .end local v20    # "SECOND":J
    :cond_1f
    return-object v3
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 6
    .param p1, "currentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3381
    if-nez p1, :cond_0

    .line 3382
    const/4 v0, 0x0

    return-object v0

    .line 3385
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3387
    .local v0, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v1

    .line 3389
    .local v1, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v1, :cond_1

    .line 3391
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 3392
    :catch_0
    move-exception v2

    .line 3393
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jsonpath error, path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3397
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 3398
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 3399
    .local v2, "map":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    return-object v3

    .line 3402
    .end local v2    # "map":Ljava/util/Map;
    :cond_2
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 3403
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    return-object v2

    .line 3406
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected init()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    const-string v0, "*"

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segment;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/JSONPath$WildCardSegment;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegment;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segment;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->access$000(Lcom/alibaba/fastjson/JSONPath$JSONPathParser;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath;->hasRefSegment:Z

    .line 81
    .end local v0    # "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    :goto_0
    return-void
.end method

.method public isRef()Z
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 85
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v2, v2, v1

    .line 87
    .local v2, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 88
    .local v3, "segmentType":Ljava/lang/Class;
    const-class v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eq v3, v4, :cond_1

    const-class v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-ne v3, v4, :cond_0

    .line 90
    goto :goto_1

    .line 92
    :cond_0
    return v0

    .line 85
    .end local v2    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v3    # "segmentType":Ljava/lang/Class;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public keySet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 256
    if-nez p1, :cond_0

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 262
    move-object v0, p1

    .line 263
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->evalKeySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 338
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 339
    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 344
    move-object v1, p1

    .line 345
    .local v1, "currentObject":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 347
    .local v2, "parentObject":Ljava/lang/Object;
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    .line 348
    .local v3, "lastSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    move-object v4, v1

    move v1, v0

    .local v1, "i":I
    .local v4, "currentObject":Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v6

    if-ge v1, v6, :cond_9

    .line 349
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v6, v6

    sub-int/2addr v6, v5

    if-ne v1, v6, :cond_1

    .line 350
    move-object v2, v4

    .line 351
    goto/16 :goto_3

    .line 353
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v6, v6, v1

    .line 354
    .local v6, "segement":Lcom/alibaba/fastjson/JSONPath$Segment;
    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x2

    if-ne v1, v7, :cond_7

    instance-of v7, v3, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v7, :cond_7

    instance-of v7, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v7, :cond_7

    .line 358
    move-object v7, v3

    check-cast v7, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 360
    .local v7, "filterSegment":Lcom/alibaba/fastjson/JSONPath$FilterSegment;
    instance-of v8, v4, Ljava/util/List;

    if-eqz v8, :cond_5

    .line 361
    move-object v0, v6

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 362
    .local v0, "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    move-object v8, v4

    check-cast v8, Ljava/util/List;

    .line 364
    .local v8, "list":Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 365
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 366
    .local v10, "item":Ljava/lang/Object;
    invoke-virtual {v0, p0, p1, v10}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 367
    .local v11, "result":Ljava/lang/Object;
    instance-of v12, v11, Ljava/lang/Iterable;

    if-eqz v12, :cond_2

    .line 368
    invoke-virtual {v7, p0, p1, v11}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    .line 369
    :cond_2
    instance-of v12, v11, Ljava/util/Map;

    if-eqz v12, :cond_3

    .line 370
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v12

    invoke-interface {v12, p0, p1, v4, v11}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 371
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 374
    .end local v10    # "item":Ljava/lang/Object;
    .end local v11    # "result":Ljava/lang/Object;
    :cond_3
    :goto_2
    goto :goto_1

    .line 375
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_4
    return v5

    .line 376
    .end local v0    # "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    .end local v8    # "list":Ljava/util/List;
    :cond_5
    instance-of v8, v4, Ljava/util/Map;

    if-eqz v8, :cond_7

    .line 377
    move-object v8, v6

    check-cast v8, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 378
    .local v8, "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    invoke-virtual {v8, p0, p1, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 379
    .local v9, "result":Ljava/lang/Object;
    if-nez v9, :cond_6

    .line 380
    return v0

    .line 382
    :cond_6
    instance-of v10, v9, Ljava/util/Map;

    if-eqz v10, :cond_7

    .line 383
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->access$300(Lcom/alibaba/fastjson/JSONPath$FilterSegment;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v10

    invoke-interface {v10, p0, p1, v4, v9}, Lcom/alibaba/fastjson/JSONPath$Filter;->apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 384
    invoke-virtual {v8, p0, v4}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    .line 385
    return v5

    .line 390
    .end local v7    # "filterSegment":Lcom/alibaba/fastjson/JSONPath$FilterSegment;
    .end local v8    # "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    .end local v9    # "result":Ljava/lang/Object;
    :cond_7
    invoke-interface {v6, p0, p1, v4}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 391
    if-nez v4, :cond_8

    .line 392
    goto :goto_3

    .line 348
    .end local v6    # "segement":Lcom/alibaba/fastjson/JSONPath$Segment;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 396
    .end local v1    # "i":I
    :cond_9
    :goto_3
    if-nez v2, :cond_a

    .line 397
    return v0

    .line 401
    :cond_a
    instance-of v0, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v0, :cond_f

    .line 402
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 404
    .restart local v0    # "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    instance-of v1, v2, Ljava/util/Collection;

    if-eqz v1, :cond_e

    .line 405
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v1, v1

    if-le v1, v5, :cond_e

    .line 406
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    aget-object v1, v1, v5

    .line 407
    .local v1, "parentSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    instance-of v5, v1, Lcom/alibaba/fastjson/JSONPath$RangeSegment;

    if-nez v5, :cond_b

    instance-of v5, v1, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegment;

    if-eqz v5, :cond_e

    .line 408
    :cond_b
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    .line 409
    .local v5, "collection":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 410
    .local v6, "removedOnce":Z
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 411
    .local v8, "item":Ljava/lang/Object;
    invoke-virtual {v0, p0, v8}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v9

    .line 412
    .local v9, "removed":Z
    if-eqz v9, :cond_c

    .line 413
    const/4 v6, 0x1

    .line 415
    .end local v8    # "item":Ljava/lang/Object;
    .end local v9    # "removed":Z
    :cond_c
    goto :goto_4

    .line 416
    :cond_d
    return v6

    .line 420
    .end local v1    # "parentSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v6    # "removedOnce":Z
    :cond_e
    invoke-virtual {v0, p0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 423
    .end local v0    # "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :cond_f
    instance-of v0, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v0, :cond_10

    .line 424
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {v0, p0, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 427
    :cond_10
    instance-of v0, v3, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    if-eqz v0, :cond_11

    .line 428
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$FilterSegment;

    .line 429
    .local v0, "filterSegment":Lcom/alibaba/fastjson/JSONPath$FilterSegment;
    invoke-virtual {v0, p0, p1, v2}, Lcom/alibaba/fastjson/JSONPath$FilterSegment;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 432
    .end local v0    # "filterSegment":Lcom/alibaba/fastjson/JSONPath$FilterSegment;
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .line 3356
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3357
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 3358
    .local v0, "list":Ljava/util/List;
    const/4 v1, 0x0

    if-ltz p3, :cond_1

    .line 3359
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 3360
    return v1

    .line 3362
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3364
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    .line 3366
    .local v2, "newIndex":I
    if-gez v2, :cond_2

    .line 3367
    return v1

    .line 3370
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3372
    .end local v2    # "newIndex":I
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3375
    .end local v0    # "list":Ljava/util/List;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3376
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported set operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "deep"    # Z

    .line 3860
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3861
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3862
    .local v0, "origin":Ljava/lang/Object;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 3864
    .local v1, "found":Z
    :cond_0
    if-eqz p3, :cond_1

    .line 3865
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3866
    .local v3, "item":Ljava/lang/Object;
    invoke-virtual {p0, v3, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    .line 3867
    .end local v3    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 3870
    :cond_1
    return v1

    .line 3873
    .end local v0    # "origin":Ljava/lang/Object;
    .end local v1    # "found":Z
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 3875
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v2, 0x0

    .line 3876
    .local v2, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v3, :cond_3

    .line 3877
    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 3880
    :cond_3
    if-eqz v2, :cond_7

    .line 3881
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    .line 3883
    .local v1, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    const/4 v3, 0x0

    .line 3884
    .local v3, "found":Z
    if-eqz v1, :cond_4

    .line 3885
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3886
    const/4 v3, 0x1

    .line 3889
    :cond_4
    if-eqz p3, :cond_6

    .line 3890
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 3891
    .local v4, "propertyValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3892
    .local v6, "item":Ljava/lang/Object;
    if-nez v6, :cond_5

    .line 3893
    goto :goto_1

    .line 3895
    :cond_5
    invoke-virtual {p0, v6, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->removePropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Z

    .line 3896
    .end local v6    # "item":Ljava/lang/Object;
    goto :goto_1

    .line 3899
    .end local v4    # "propertyValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_6
    return v3

    .line 3902
    .end local v1    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v3    # "found":Z
    :cond_7
    if-eqz p3, :cond_8

    .line 3903
    return v1

    .line 3906
    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 436
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 17
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "p"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 440
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 441
    return v3

    .line 444
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 446
    move-object v4, v1

    .line 447
    .local v4, "currentObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 448
    .local v5, "parentObject":Ljava/lang/Object;
    move-object v6, v5

    move-object v5, v4

    move v4, v3

    .local v4, "i":I
    .local v5, "currentObject":Ljava/lang/Object;
    .local v6, "parentObject":Ljava/lang/Object;
    :goto_0
    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v7, v7

    const/4 v8, 0x1

    if-ge v4, v7, :cond_9

    .line 454
    move-object v6, v5

    .line 455
    iget-object v7, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v7, v7, v4

    .line 456
    .local v7, "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    invoke-interface {v7, v0, v1, v5}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 457
    if-nez v5, :cond_8

    .line 458
    const/4 v9, 0x0

    .line 459
    .local v9, "nextSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    iget-object v10, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v10, v10

    sub-int/2addr v10, v8

    if-ge v4, v10, :cond_1

    .line 460
    iget-object v10, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    add-int/lit8 v11, v4, 0x1

    aget-object v9, v10, v11

    .line 463
    :cond_1
    const/4 v10, 0x0

    .line 464
    .local v10, "newObj":Ljava/lang/Object;
    instance-of v11, v9, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v11, :cond_5

    .line 465
    const/4 v11, 0x0

    .line 466
    .local v11, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    const/4 v12, 0x0

    .line 467
    .local v12, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v13, v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v13, :cond_2

    .line 468
    move-object v13, v7

    check-cast v13, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    invoke-static {v13}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->access$400(Lcom/alibaba/fastjson/JSONPath$PropertySegment;)Ljava/lang/String;

    move-result-object v13

    .line 469
    .local v13, "propertyName":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 470
    .local v14, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v15

    .line 471
    .local v15, "parentBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v15, :cond_2

    .line 472
    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v8

    .line 473
    .local v8, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    iget-object v3, v8, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v12, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 474
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanDeserializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v11

    .line 478
    .end local v8    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .end local v13    # "propertyName":Ljava/lang/String;
    .end local v14    # "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "parentBeanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_2
    if-eqz v11, :cond_4

    .line 480
    iget-object v3, v11, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_3

    .line 481
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v12}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .end local v10    # "newObj":Ljava/lang/Object;
    .local v3, "newObj":Ljava/lang/Object;
    goto :goto_1

    .line 483
    .end local v3    # "newObj":Ljava/lang/Object;
    .restart local v10    # "newObj":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    return v3

    .line 486
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 488
    .end local v11    # "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .end local v12    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    move-object v10, v3

    goto :goto_2

    :cond_5
    instance-of v3, v9, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v3, :cond_6

    .line 489
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    move-object v10, v3

    .line 492
    :cond_6
    :goto_2
    if-eqz v10, :cond_9

    .line 493
    instance-of v3, v7, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v3, :cond_7

    .line 494
    move-object v3, v7

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 495
    .local v3, "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    invoke-virtual {v3, v0, v6, v10}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 496
    move-object v5, v10

    .line 497
    goto :goto_3

    .line 498
    .end local v3    # "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :cond_7
    instance-of v3, v7, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v3, :cond_9

    .line 499
    move-object v3, v7

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    .line 500
    .local v3, "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;
    invoke-virtual {v3, v0, v6, v10}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 501
    move-object v5, v10

    .line 502
    nop

    .line 448
    .end local v3    # "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;
    .end local v7    # "segment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v9    # "nextSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    .end local v10    # "newObj":Ljava/lang/Object;
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 510
    .end local v4    # "i":I
    :cond_9
    if-nez v6, :cond_a

    .line 511
    const/4 v3, 0x0

    return v3

    .line 514
    :cond_a
    iget-object v3, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    iget-object v4, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v4, v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    aget-object v3, v3, v4

    .line 515
    .local v3, "lastSegment":Lcom/alibaba/fastjson/JSONPath$Segment;
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    if-eqz v4, :cond_b

    .line 516
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegment;

    .line 517
    .local v4, "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    invoke-virtual {v4, v0, v6, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 518
    return v7

    .line 521
    .end local v4    # "propertySegment":Lcom/alibaba/fastjson/JSONPath$PropertySegment;
    :cond_b
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    if-eqz v4, :cond_c

    .line 522
    move-object v4, v3

    check-cast v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;

    invoke-virtual {v4, v0, v6, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegment;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 525
    :cond_c
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .line 3324
    instance-of v0, p2, Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3325
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 3326
    .local v0, "list":Ljava/util/List;
    if-ltz p3, :cond_0

    .line 3327
    invoke-interface {v0, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3329
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v0, v2, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3331
    :goto_0
    return v1

    .line 3334
    .end local v0    # "list":Ljava/util/List;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3335
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3336
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 3338
    .local v2, "arrayLenth":I
    if-ltz p3, :cond_2

    .line 3339
    if-ge p3, v2, :cond_3

    .line 3340
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 3343
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_3

    .line 3344
    add-int v3, v2, p3

    invoke-static {p2, v3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 3348
    :cond_3
    :goto_1
    return v1

    .line 3351
    .end local v2    # "arrayLenth":I
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported set operation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z
    .locals 9
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "propertyNameHash"    # J
    .param p5, "value"    # Ljava/lang/Object;

    .line 3819
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3820
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3821
    return v1

    .line 3824
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3825
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3826
    .local v2, "element":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 3827
    goto :goto_0

    .line 3829
    :cond_1
    move-object v3, p0

    move-object v4, v2

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;JLjava/lang/Object;)Z

    .line 3830
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 3831
    :cond_2
    return v1

    .line 3834
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 3836
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v2, 0x0

    .line 3837
    .local v2, "beanDeserializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v3, v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v3, :cond_4

    .line 3838
    move-object v2, v0

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 3841
    :cond_4
    if-eqz v2, :cond_7

    .line 3842
    invoke-virtual {v2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(J)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 3843
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v3, :cond_5

    .line 3844
    const/4 v1, 0x0

    return v1

    .line 3847
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-eq v4, v5, :cond_6

    .line 3848
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p5, v4, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p5

    .line 3851
    :cond_6
    invoke-virtual {v3, p1, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3852
    return v1

    .line 3855
    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public size(Ljava/lang/Object;)I
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;

    .line 235
    if-nez p1, :cond_0

    .line 236
    const/4 v0, -0x1

    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 241
    move-object v0, p1

    .line 242
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 243
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segment;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 4002
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
