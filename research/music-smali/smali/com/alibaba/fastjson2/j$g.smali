.class final Lcom/alibaba/fastjson2/j$g;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJZ)V
    .locals 0

    .line 1044
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J)V

    .line 1045
    iput-wide p4, p0, Lcom/alibaba/fastjson2/j$g;->a:J

    .line 1046
    iput-wide p6, p0, Lcom/alibaba/fastjson2/j$g;->b:J

    .line 1047
    iput-boolean p8, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 4

    .line 1056
    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1070
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1082
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 1083
    check-cast p1, Ljava/math/BigDecimal;

    .line 1084
    iget-wide v0, p0, Lcom/alibaba/fastjson2/j$g;->a:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    .line 1085
    iget-wide v1, p0, Lcom/alibaba/fastjson2/j$g;->b:J

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz v0, :cond_2

    if-gtz p1, :cond_2

    .line 1088
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 1091
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    return p1

    .line 1094
    :cond_3
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    .line 1095
    check-cast p1, Ljava/math/BigInteger;

    .line 1096
    iget-wide v0, p0, Lcom/alibaba/fastjson2/j$g;->a:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 1097
    iget-wide v1, p0, Lcom/alibaba/fastjson2/j$g;->b:J

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-ltz v0, :cond_4

    if-gtz p1, :cond_4

    .line 1100
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 1103
    :cond_4
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    return p1

    .line 1106
    :cond_5
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    return p1

    .line 1073
    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1075
    iget-wide v2, p0, Lcom/alibaba/fastjson2/j$g;->a:J

    long-to-double v2, v2

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_7

    iget-wide v2, p0, Lcom/alibaba/fastjson2/j$g;->b:J

    long-to-double v2, v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_7

    .line 1076
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 1079
    :cond_7
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    return p1

    .line 1061
    :cond_8
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1063
    iget-wide v2, p0, Lcom/alibaba/fastjson2/j$g;->a:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_9

    iget-wide v2, p0, Lcom/alibaba/fastjson2/j$g;->b:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_9

    .line 1064
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 1067
    :cond_9
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    return p1
.end method

.method protected b()Z
    .locals 1

    .line 1051
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/j$g;->i:Z

    return v0
.end method
