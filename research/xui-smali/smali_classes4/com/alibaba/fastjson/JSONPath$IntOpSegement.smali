.class Lcom/alibaba/fastjson/JSONPath$IntOpSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final value:J

.field private valueDecimal:Ljava/math/BigDecimal;

.field private valueDouble:Ljava/lang/Double;

.field private valueFloat:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "op"    # Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2740
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    .line 2741
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyNameHash:J

    .line 2742
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    .line 2743
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2744
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 2747
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2749
    .local v0, "propertyValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2750
    return v1

    .line 2753
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 2754
    return v1

    .line 2757
    :cond_1
    instance-of v2, v0, Ljava/math/BigDecimal;

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    .line 2758
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    if-nez v2, :cond_2

    .line 2759
    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    .line 2762
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDecimal:Ljava/math/BigDecimal;

    move-object v4, v0

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    .line 2763
    .local v2, "result":I
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2778
    return v1

    .line 2775
    :pswitch_0
    if-lez v2, :cond_3

    move v1, v3

    nop

    :cond_3
    return v1

    .line 2773
    :pswitch_1
    if-ltz v2, :cond_4

    move v1, v3

    nop

    :cond_4
    return v1

    .line 2771
    :pswitch_2
    if-gez v2, :cond_5

    move v1, v3

    nop

    :cond_5
    return v1

    .line 2769
    :pswitch_3
    if-gtz v2, :cond_6

    move v1, v3

    nop

    :cond_6
    return v1

    .line 2767
    :pswitch_4
    if-eqz v2, :cond_7

    move v1, v3

    nop

    :cond_7
    return v1

    .line 2765
    :pswitch_5
    if-nez v2, :cond_8

    move v1, v3

    nop

    :cond_8
    return v1

    .line 2781
    .end local v2    # "result":I
    :cond_9
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_11

    .line 2782
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    if-nez v2, :cond_a

    .line 2783
    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-float v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    .line 2786
    :cond_a
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueFloat:Ljava/lang/Float;

    move-object v4, v0

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v2, v4}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v2

    .line 2787
    .restart local v2    # "result":I
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 2802
    return v1

    .line 2799
    :pswitch_6
    if-lez v2, :cond_b

    move v1, v3

    nop

    :cond_b
    return v1

    .line 2797
    :pswitch_7
    if-ltz v2, :cond_c

    move v1, v3

    nop

    :cond_c
    return v1

    .line 2795
    :pswitch_8
    if-gez v2, :cond_d

    move v1, v3

    nop

    :cond_d
    return v1

    .line 2793
    :pswitch_9
    if-gtz v2, :cond_e

    move v1, v3

    nop

    :cond_e
    return v1

    .line 2791
    :pswitch_a
    if-eqz v2, :cond_f

    move v1, v3

    nop

    :cond_f
    return v1

    .line 2789
    :pswitch_b
    if-nez v2, :cond_10

    move v1, v3

    nop

    :cond_10
    return v1

    .line 2805
    .end local v2    # "result":I
    :cond_11
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_19

    .line 2806
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    if-nez v2, :cond_12

    .line 2807
    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    .line 2810
    :cond_12
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->valueDouble:Ljava/lang/Double;

    move-object v4, v0

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v2, v4}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    .line 2811
    .restart local v2    # "result":I
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 2826
    return v1

    .line 2823
    :pswitch_c
    if-lez v2, :cond_13

    move v1, v3

    nop

    :cond_13
    return v1

    .line 2821
    :pswitch_d
    if-ltz v2, :cond_14

    move v1, v3

    nop

    :cond_14
    return v1

    .line 2819
    :pswitch_e
    if-gez v2, :cond_15

    move v1, v3

    nop

    :cond_15
    return v1

    .line 2817
    :pswitch_f
    if-gtz v2, :cond_16

    move v1, v3

    nop

    :cond_16
    return v1

    .line 2815
    :pswitch_10
    if-eqz v2, :cond_17

    move v1, v3

    nop

    :cond_17
    return v1

    .line 2813
    :pswitch_11
    if-nez v2, :cond_18

    move v1, v3

    nop

    :cond_18
    return v1

    .line 2829
    .end local v2    # "result":I
    :cond_19
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v4

    .line 2831
    .local v4, "longValue":J
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_3

    .line 2846
    return v1

    .line 2843
    :pswitch_12
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_1a

    move v1, v3

    nop

    :cond_1a
    return v1

    .line 2841
    :pswitch_13
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1b

    move v1, v3

    nop

    :cond_1b
    return v1

    .line 2839
    :pswitch_14
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_1c

    move v1, v3

    nop

    :cond_1c
    return v1

    .line 2837
    :pswitch_15
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1d

    move v1, v3

    nop

    :cond_1d
    return v1

    .line 2835
    :pswitch_16
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1e

    move v1, v3

    nop

    :cond_1e
    return v1

    .line 2833
    :pswitch_17
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;->value:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1f

    move v1, v3

    nop

    :cond_1f
    return v1

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

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method
