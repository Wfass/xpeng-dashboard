.class Lcom/alibaba/fastjson/JSONPath$StringInSegement;
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
    name = "StringInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J

.field private final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "not"    # Z

    .line 2706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2707
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    .line 2708
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyNameHash:J

    .line 2709
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    .line 2710
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    .line 2711
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 2714
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 2716
    .local v0, "propertyValue":Ljava/lang/Object;
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->values:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 2717
    .local v4, "value":Ljava/lang/String;
    if-ne v4, v0, :cond_0

    .line 2718
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 2719
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2720
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 2716
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2724
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;->not:Z

    return v1
.end method
