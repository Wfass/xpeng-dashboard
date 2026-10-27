.class Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;
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
    name = "RegMatchSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final pattern:Ljava/util/regex/Pattern;

.field private final propertyName:Ljava/lang/String;

.field private final propertyNameHash:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/util/regex/Pattern;
    .param p3, "op"    # Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 3134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->propertyName:Ljava/lang/String;

    .line 3136
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->propertyNameHash:J

    .line 3137
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->pattern:Ljava/util/regex/Pattern;

    .line 3138
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 3139
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .line 3142
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->propertyName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->propertyNameHash:J

    invoke-virtual {p1, p4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    .line 3143
    .local v0, "propertyValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 3144
    const/4 v1, 0x0

    return v1

    .line 3147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3149
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$RegMatchSegement;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3150
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method
