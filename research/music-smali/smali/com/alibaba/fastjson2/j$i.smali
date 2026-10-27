.class final Lcom/alibaba/fastjson2/j$i;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field final a:Lcom/alibaba/fastjson2/j$r;

.field final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;J)V
    .locals 0

    .line 138
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    .line 139
    iput-object p7, p0, Lcom/alibaba/fastjson2/j$i;->a:Lcom/alibaba/fastjson2/j$r;

    .line 140
    iput-wide p8, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 7

    .line 150
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v3, p1, Ljava/lang/Byte;

    if-nez v3, :cond_1

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_1

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_1

    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_a

    if-eqz v0, :cond_3

    .line 158
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_2

    .line 160
    :cond_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 163
    :goto_2
    sget-object p1, Lcom/alibaba/fastjson2/j$1;->a:[I

    iget-object v0, p0, Lcom/alibaba/fastjson2/j$i;->a:Lcom/alibaba/fastjson2/j$r;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/j$r;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 167
    :pswitch_0
    iget-wide v5, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    cmp-long p1, v3, v5

    if-gtz p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 165
    :pswitch_1
    iget-wide v5, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 175
    :pswitch_2
    iget-wide v5, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 173
    :pswitch_3
    iget-wide v5, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 171
    :pswitch_4
    iget-wide v5, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 169
    :pswitch_5
    iget-wide v5, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 182
    :cond_a
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_b

    .line 183
    check-cast p1, Ljava/math/BigDecimal;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    .line 185
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    goto :goto_3

    .line 186
    :cond_b
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_c

    .line 187
    check-cast p1, Ljava/math/BigInteger;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    .line 189
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 188
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    goto :goto_3

    .line 190
    :cond_c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_d

    .line 191
    check-cast p1, Ljava/lang/Float;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    long-to-float v0, v3

    .line 193
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result p1

    goto :goto_3

    .line 194
    :cond_d
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_e

    .line 195
    check-cast p1, Ljava/lang/Double;

    iget-wide v3, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    long-to-double v3, v3

    .line 197
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    goto :goto_3

    .line 198
    :cond_e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 199
    check-cast p1, Ljava/lang/String;

    .line 200
    invoke-static {p1}, Labe;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 204
    :catch_0
    iget-wide v3, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    .line 207
    :cond_f
    iget-wide v3, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 213
    :goto_3
    sget-object v0, Lcom/alibaba/fastjson2/j$1;->a:[I

    iget-object v3, p0, Lcom/alibaba/fastjson2/j$i;->a:Lcom/alibaba/fastjson2/j$r;

    invoke-virtual {v3}, Lcom/alibaba/fastjson2/j$r;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 227
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_6
    if-gtz p1, :cond_10

    move v1, v2

    :cond_10
    return v1

    :pswitch_7
    if-gez p1, :cond_11

    move v1, v2

    :cond_11
    return v1

    :pswitch_8
    if-ltz p1, :cond_12

    move v1, v2

    :cond_12
    return v1

    :pswitch_9
    if-lez p1, :cond_13

    move v1, v2

    :cond_13
    return v1

    :pswitch_a
    if-eqz p1, :cond_14

    move v1, v2

    :cond_14
    return v1

    :pswitch_b
    if-nez p1, :cond_15

    move v1, v2

    :cond_15
    return v1

    .line 210
    :cond_16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V
    .locals 3

    .line 233
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 237
    :goto_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 238
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 239
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 241
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson2/j$i;->a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 248
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "UnsupportedOperation "

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$i;->a:Lcom/alibaba/fastjson2/j$r;

    sget-object v1, Lcom/alibaba/fastjson2/j$r;->NE:Lcom/alibaba/fastjson2/j$r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[?("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v1, p0, Lcom/alibaba/fastjson2/j$i;->e:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "@"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/j$i;->e:[Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/j$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson2/j$i;->a:Lcom/alibaba/fastjson2/j$r;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/fastjson2/j$i;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
