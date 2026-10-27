.class public Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;
.super Lcom/alibaba/fastjson2/JSONPathSegmentName;
.source "JSONPathCompilerReflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathCompilerReflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameSegmentTyped"
.end annotation


# instance fields
.field final fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

.field final fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field final objectClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/String;J)V
    .locals 0

    .line 177
    invoke-direct {p0, p6, p7, p8}, Lcom/alibaba/fastjson2/JSONPathSegmentName;-><init>(Ljava/lang/String;J)V

    .line 178
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->objectClass:Ljava/lang/Class;

    .line 179
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    .line 180
    iput-object p5, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    return-void
.end method

.method public bridge synthetic contains(Lcom/alibaba/fastjson2/JSONPath$Context;)Z
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->contains(Lcom/alibaba/fastjson2/JSONPath$Context;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 186
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Lcom/alibaba/fastjson2/JSONPath$Context;)Z
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->remove(Lcom/alibaba/fastjson2/JSONPath$Context;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic setCallback(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->setCallback(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public bridge synthetic setInt(Lcom/alibaba/fastjson2/JSONPath$Context;I)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->setInt(Lcom/alibaba/fastjson2/JSONPath$Context;I)V

    return-void
.end method

.method public bridge synthetic setLong(Lcom/alibaba/fastjson2/JSONPath$Context;J)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->setLong(Lcom/alibaba/fastjson2/JSONPath$Context;J)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONPathSegmentName;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
