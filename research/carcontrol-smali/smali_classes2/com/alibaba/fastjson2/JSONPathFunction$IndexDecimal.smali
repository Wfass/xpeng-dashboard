.class final Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;
.super Lcom/alibaba/fastjson2/JSONPathFunction$Index;
.source "JSONPathFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IndexDecimal"
.end annotation


# instance fields
.field final value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathFunction$Index;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;->value:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method protected eq(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 546
    :cond_0
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 547
    check-cast p1, Ljava/math/BigDecimal;

    .line 548
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    .line 549
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 552
    :cond_1
    instance-of v1, p1, Ljava/lang/Float;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 558
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 559
    check-cast p1, Ljava/lang/String;

    .line 560
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0

    .line 553
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 554
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    .line 555
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathFunction$IndexDecimal;->value:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
