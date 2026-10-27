.class Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;
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
    name = "IntBetweenSegement"
.end annotation


# instance fields
.field private final endValue:J

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final startValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZ)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "startValue"    # J
    .param p4, "endValue"    # J
    .param p6, "not"    # Z

    .line 2629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2630
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    .line 2631
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyNameHash:J

    .line 2632
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    .line 2633
    iput-wide p4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    .line 2634
    iput-boolean p6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    .line 2635
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 2638
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2640
    .local v0, "propertyValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2641
    const/4 v1, 0x0

    return v1

    .line 2644
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 2645
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v1

    .line 2646
    .local v1, "longPropertyValue":J
    iget-wide v3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    iget-wide v3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 2647
    iget-boolean v3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    xor-int/lit8 v3, v3, 0x1

    return v3

    .line 2651
    .end local v1    # "longPropertyValue":J
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    return v1
.end method
