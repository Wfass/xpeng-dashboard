.class Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;
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
    name = "DoubleOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "op"    # Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2858
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    .line 2859
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 2860
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 2861
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyNameHash:J

    .line 2862
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 2865
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2867
    .local v0, "propertyValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2868
    return v1

    .line 2871
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_1

    .line 2872
    return v1

    .line 2875
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 2877
    .local v2, "doubleValue":D
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONPath$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    .line 2892
    return v1

    .line 2889
    :pswitch_0
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v4, v2, v6

    if-gez v4, :cond_2

    move v1, v5

    nop

    :cond_2
    return v1

    .line 2887
    :pswitch_1
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v4, v2, v6

    if-gtz v4, :cond_3

    move v1, v5

    nop

    :cond_3
    return v1

    .line 2885
    :pswitch_2
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v4, v2, v6

    if-lez v4, :cond_4

    move v1, v5

    nop

    :cond_4
    return v1

    .line 2883
    :pswitch_3
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v4, v2, v6

    if-ltz v4, :cond_5

    move v1, v5

    nop

    :cond_5
    return v1

    .line 2881
    :pswitch_4
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v4, v2, v6

    if-eqz v4, :cond_6

    move v1, v5

    nop

    :cond_6
    return v1

    .line 2879
    :pswitch_5
    iget-wide v6, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v4, v2, v6

    if-nez v4, :cond_7

    move v1, v5

    nop

    :cond_7
    return v1

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
