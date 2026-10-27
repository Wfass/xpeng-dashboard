.class Lcom/alibaba/fastjson/JSONPath$RefOpSegement;
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
    name = "RefOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Segment;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "refSgement"    # Lcom/alibaba/fastjson/JSONPath$Segment;
    .param p3, "op"    # Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2903
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->propertyName:Ljava/lang/String;

    .line 2904
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 2905
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2906
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->propertyNameHash:J

    .line 2907
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 2910
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2912
    .local v0, "propertyValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2913
    return v1

    .line 2916
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 2917
    return v1

    .line 2920
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->refSgement:Lcom/alibaba/fastjson/JSONPath$Segment;

    invoke-interface {v2, p1, p2, p2}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2922
    .local v2, "refValue":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/Short;

    if-nez v3, :cond_2

    instance-of v3, v2, Ljava/lang/Byte;

    if-eqz v3, :cond_11

    .line 2923
    :cond_2
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v3

    .line 2925
    .local v3, "value":J
    instance-of v5, v0, Ljava/lang/Integer;

    const/4 v6, 0x1

    if-nez v5, :cond_a

    instance-of v5, v0, Ljava/lang/Long;

    if-nez v5, :cond_a

    instance-of v5, v0, Ljava/lang/Short;

    if-nez v5, :cond_a

    instance-of v5, v0, Ljava/lang/Byte;

    if-eqz v5, :cond_3

    goto :goto_0

    .line 2942
    :cond_3
    instance-of v5, v0, Ljava/math/BigDecimal;

    if-eqz v5, :cond_11

    .line 2943
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    .line 2945
    .local v5, "valueDecimal":Ljava/math/BigDecimal;
    move-object v7, v0

    check-cast v7, Ljava/math/BigDecimal;

    invoke-virtual {v5, v7}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v7

    .line 2946
    .local v7, "result":I
    sget-object v8, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v9, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2961
    return v1

    .line 2958
    :pswitch_0
    if-lez v7, :cond_4

    move v1, v6

    nop

    :cond_4
    return v1

    .line 2956
    :pswitch_1
    if-ltz v7, :cond_5

    move v1, v6

    nop

    :cond_5
    return v1

    .line 2954
    :pswitch_2
    if-gez v7, :cond_6

    move v1, v6

    nop

    :cond_6
    return v1

    .line 2952
    :pswitch_3
    if-gtz v7, :cond_7

    move v1, v6

    nop

    :cond_7
    return v1

    .line 2950
    :pswitch_4
    if-eqz v7, :cond_8

    move v1, v6

    nop

    :cond_8
    return v1

    .line 2948
    :pswitch_5
    if-nez v7, :cond_9

    move v1, v6

    nop

    :cond_9
    return v1

    .line 2926
    .end local v5    # "valueDecimal":Ljava/math/BigDecimal;
    .end local v7    # "result":I
    :cond_a
    :goto_0
    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v7

    .line 2928
    .local v7, "longValue":J
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v9, p0, Lcom/alibaba/fastjson/JSONPath$RefOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v9

    aget v5, v5, v9

    packed-switch v5, :pswitch_data_1

    .line 2942
    .end local v7    # "longValue":J
    goto :goto_1

    .line 2940
    .restart local v7    # "longValue":J
    :pswitch_6
    cmp-long v5, v7, v3

    if-gez v5, :cond_b

    move v1, v6

    nop

    :cond_b
    return v1

    .line 2938
    :pswitch_7
    cmp-long v5, v7, v3

    if-gtz v5, :cond_c

    move v1, v6

    nop

    :cond_c
    return v1

    .line 2936
    :pswitch_8
    cmp-long v5, v7, v3

    if-lez v5, :cond_d

    move v1, v6

    nop

    :cond_d
    return v1

    .line 2934
    :pswitch_9
    cmp-long v5, v7, v3

    if-ltz v5, :cond_e

    move v1, v6

    nop

    :cond_e
    return v1

    .line 2932
    :pswitch_a
    cmp-long v5, v7, v3

    if-eqz v5, :cond_f

    move v1, v6

    nop

    :cond_f
    return v1

    .line 2930
    :pswitch_b
    cmp-long v5, v7, v3

    if-nez v5, :cond_10

    move v1, v6

    nop

    :cond_10
    return v1

    .line 2965
    .end local v3    # "value":J
    .end local v7    # "longValue":J
    :cond_11
    :goto_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

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
