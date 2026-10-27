.class final Lcom/alibaba/fastjson2/k$c;
.super Lcom/alibaba/fastjson2/k$a;
.source "JSONPathFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:J

.field transient b:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 507
    invoke-direct {p0}, Lcom/alibaba/fastjson2/k$a;-><init>()V

    .line 508
    iput-wide p1, p0, Lcom/alibaba/fastjson2/k$c;->a:J

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Z
    .locals 7

    .line 512
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Byte;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 518
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 520
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 521
    check-cast p1, Ljava/math/BigDecimal;

    .line 522
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    .line 523
    iget-object v0, p0, Lcom/alibaba/fastjson2/k$c;->b:Ljava/math/BigDecimal;

    if-nez v0, :cond_2

    .line 524
    iget-wide v0, p0, Lcom/alibaba/fastjson2/k$c;->a:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/k$c;->b:Ljava/math/BigDecimal;

    .line 526
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/k$c;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2

    .line 519
    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/alibaba/fastjson2/k$c;->a:J

    long-to-double v5, v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 517
    :cond_6
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alibaba/fastjson2/k$c;->a:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1
.end method
