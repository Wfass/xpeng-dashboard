.class final Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathSegment.java"

# interfaces
.implements Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LengthSegment"
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1816
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1813
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 1

    .line 1820
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1821
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1822
    iput-boolean p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    .line 1824
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONPathSegment$LengthSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    return-void
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 3

    .line 1829
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 1831
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 1838
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_2

    .line 1839
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_1

    .line 1840
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1841
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    goto :goto_1

    .line 1842
    :cond_3
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 1843
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_1

    .line 1844
    :cond_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1845
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 1846
    :cond_5
    instance-of v2, v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    if-eqz v2, :cond_6

    .line 1847
    check-cast v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1849
    :cond_6
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void
.end method
