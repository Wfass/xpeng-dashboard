.class Lcom/alibaba/fastjson/JSONPath$RlikeSegement;
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
    name = "RlikeSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final pattern:Ljava/util/regex/Pattern;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "not"    # Z

    .line 3059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3060
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyName:Ljava/lang/String;

    .line 3061
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyNameHash:J

    .line 3062
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    .line 3063
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    .line 3064
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 3067
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 3069
    .local v0, "propertyValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 3070
    const/4 v1, 0x0

    return v1

    .line 3073
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3074
    .local v1, "strPropertyValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3075
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    .line 3077
    .local v3, "match":Z
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;->not:Z

    if-eqz v4, :cond_1

    .line 3078
    xor-int/lit8 v4, v3, 0x1

    move v3, v4

    .line 3081
    :cond_1
    return v3
.end method
