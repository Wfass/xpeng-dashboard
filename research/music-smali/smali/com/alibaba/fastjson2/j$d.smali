.class final Lcom/alibaba/fastjson2/j$d;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/alibaba/fastjson2/j$r;

.field final b:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/alibaba/fastjson2/j$r;Ljava/math/BigDecimal;)V
    .locals 0

    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J)V

    .line 290
    iput-object p4, p0, Lcom/alibaba/fastjson2/j$d;->a:Lcom/alibaba/fastjson2/j$r;

    .line 291
    iput-object p5, p0, Lcom/alibaba/fastjson2/j$d;->b:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 306
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 307
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_1

    .line 308
    :cond_2
    instance-of v1, p1, Ljava/lang/Byte;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljava/lang/Short;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 315
    :cond_3
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_4

    .line 316
    check-cast p1, Ljava/math/BigDecimal;

    goto :goto_1

    .line 317
    :cond_4
    instance-of v1, p1, Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    .line 318
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p1, v1

    goto :goto_1

    .line 320
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 312
    :cond_6
    :goto_0
    check-cast p1, Ljava/lang/Number;

    .line 313
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 312
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 323
    :goto_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/j$d;->b:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    .line 324
    sget-object v1, Lcom/alibaba/fastjson2/j$1;->a:[I

    iget-object v2, p0, Lcom/alibaba/fastjson2/j$d;->a:Lcom/alibaba/fastjson2/j$r;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/j$r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 338
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-gtz p1, :cond_7

    move v0, v2

    :cond_7
    return v0

    :pswitch_1
    if-gez p1, :cond_8

    move v0, v2

    :cond_8
    return v0

    :pswitch_2
    if-ltz p1, :cond_9

    move v0, v2

    :cond_9
    return v0

    :pswitch_3
    if-lez p1, :cond_a

    move v0, v2

    :cond_a
    return v0

    :pswitch_4
    if-eqz p1, :cond_b

    move v0, v2

    :cond_b
    return v0

    :pswitch_5
    if-nez p1, :cond_c

    move v0, v2

    :cond_c
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Z
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$d;->a:Lcom/alibaba/fastjson2/j$r;

    sget-object v1, Lcom/alibaba/fastjson2/j$r;->NE:Lcom/alibaba/fastjson2/j$r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
