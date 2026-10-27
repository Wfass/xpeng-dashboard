.class final Lcom/alibaba/fastjson2/n$o;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegment.java"

# interfaces
.implements Lcom/alibaba/fastjson2/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/n$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1737
    new-instance v0, Lcom/alibaba/fastjson2/n$o;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/n$o;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/n$o;->a:Lcom/alibaba/fastjson2/n$o;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1734
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4

    .line 1745
    instance-of v0, p0, Ljava/lang/Byte;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1746
    :goto_1
    instance-of v3, p1, Ljava/lang/Byte;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 1748
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1751
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    .line 1752
    :goto_5
    instance-of v3, p1, Ljava/lang/Float;

    if-nez v3, :cond_7

    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    if-nez v0, :cond_e

    if-eqz v1, :cond_9

    goto :goto_8

    .line 1757
    :cond_9
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-nez v0, :cond_d

    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_a

    goto :goto_7

    .line 1761
    :cond_a
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_c

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_b

    goto :goto_6

    .line 1765
    :cond_b
    new-instance p0, Lcom/alibaba/fastjson2/c;

    const-string p1, "not support operation"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1762
    :cond_c
    :goto_6
    invoke-static {p0}, Labo;->d(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1}, Labo;->d(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1758
    :cond_d
    :goto_7
    invoke-static {p0}, Labo;->c(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p1}, Labo;->c(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1754
    :cond_e
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 5

    .line 1770
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 1771
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1772
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1778
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1779
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_3

    .line 1780
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 1785
    :cond_2
    check-cast v1, Ljava/lang/Number;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/n$o;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    goto :goto_1

    .line 1787
    :cond_3
    instance-of v3, v0, [Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 1788
    check-cast v0, [Ljava/lang/Object;

    .line 1789
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_7

    aget-object v4, v0, v1

    if-nez v4, :cond_4

    goto :goto_3

    .line 1794
    :cond_4
    check-cast v4, Ljava/lang/Number;

    invoke-static {v2, v4}, Lcom/alibaba/fastjson2/n$o;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1796
    :cond_5
    instance-of v1, v0, Lcom/alibaba/fastjson2/g$e;

    if-eqz v1, :cond_8

    .line 1797
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 1802
    :cond_6
    check-cast v1, Ljava/lang/Number;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/n$o;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    goto :goto_4

    .line 1808
    :cond_7
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1809
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1805
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 0

    .line 1741
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/n$o;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void
.end method
