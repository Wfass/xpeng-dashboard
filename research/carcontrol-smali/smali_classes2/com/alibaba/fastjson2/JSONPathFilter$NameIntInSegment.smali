.class final Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;
.super Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameIntInSegment"
.end annotation


# instance fields
.field private final not:Z

.field private final values:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;[JZ)V
    .locals 0

    .line 1208
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    .line 1209
    iput-object p7, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->values:[J

    .line 1210
    iput-boolean p8, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 8

    .line 1219
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_b

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_b

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1235
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1249
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    .line 1250
    check-cast p1, Ljava/math/BigDecimal;

    .line 1251
    invoke-virtual {p1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    .line 1252
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->values:[J

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-wide v5, v0, v1

    cmp-long v7, v5, v2

    if-nez v7, :cond_2

    .line 1253
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-nez v5, :cond_2

    .line 1254
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1258
    :cond_3
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    return p1

    .line 1261
    :cond_4
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_7

    .line 1262
    check-cast p1, Ljava/math/BigInteger;

    .line 1263
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 1264
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->values:[J

    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_6

    aget-wide v5, v0, v1

    cmp-long v7, v5, v2

    if-nez v7, :cond_5

    .line 1265
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1266
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1270
    :cond_6
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    return p1

    .line 1273
    :cond_7
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    return p1

    .line 1238
    :cond_8
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 1240
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->values:[J

    array-length v0, p1

    :goto_3
    if-ge v1, v0, :cond_a

    aget-wide v4, p1, v1

    long-to-double v4, v4

    cmpl-double v4, v4, v2

    if-nez v4, :cond_9

    .line 1242
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1246
    :cond_a
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    return p1

    .line 1224
    :cond_b
    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1226
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->values:[J

    array-length v0, p1

    :goto_5
    if-ge v1, v0, :cond_d

    aget-wide v4, p1, v1

    cmp-long v4, v4, v2

    if-nez v4, :cond_c

    .line 1228
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1232
    :cond_d
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    return p1
.end method

.method protected applyNull()Z
    .locals 1

    .line 1214
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathFilter$NameIntInSegment;->not:Z

    return v0
.end method
