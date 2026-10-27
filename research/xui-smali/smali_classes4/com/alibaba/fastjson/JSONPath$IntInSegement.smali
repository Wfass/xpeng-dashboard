.class Lcom/alibaba/fastjson/JSONPath$IntInSegement;
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
    name = "IntInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final values:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[JZ)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [J
    .param p3, "not"    # Z

    .line 2594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2595
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    .line 2596
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyNameHash:J

    .line 2597
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    .line 2598
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    .line 2599
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 2602
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2604
    .local v0, "propertyValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2605
    return v1

    .line 2608
    :cond_0
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 2609
    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide v2

    .line 2610
    .local v2, "longPropertyValue":J
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_2

    aget-wide v6, v4, v1

    .line 2611
    .local v6, "value":J
    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    .line 2612
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 2610
    .end local v6    # "value":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2617
    .end local v2    # "longPropertyValue":J
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    return v1
.end method
