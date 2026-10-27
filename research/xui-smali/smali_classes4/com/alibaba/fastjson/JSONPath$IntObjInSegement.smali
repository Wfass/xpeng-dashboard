.class Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;
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
    name = "IntObjInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final values:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Long;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Long;
    .param p3, "not"    # Z

    .line 2662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2663
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    .line 2664
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyNameHash:J

    .line 2665
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    .line 2666
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    .line 2667
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 2670
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2672
    .local v0, "propertyValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2673
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 2674
    .local v4, "value":Ljava/lang/Long;
    if-nez v4, :cond_0

    .line 2675
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 2673
    .end local v4    # "value":Ljava/lang/Long;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2679
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return v1

    .line 2682
    :cond_2
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_5

    .line 2683
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v2

    .line 2684
    .local v2, "longPropertyValue":J
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v5, v4

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    .line 2685
    .local v6, "value":Ljava/lang/Long;
    if-nez v6, :cond_3

    .line 2686
    goto :goto_2

    .line 2689
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_4

    .line 2690
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 2684
    .end local v6    # "value":Ljava/lang/Long;
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2695
    .end local v2    # "longPropertyValue":J
    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    return v1
.end method
