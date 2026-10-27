.class public Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;
.super Lcom/alibaba/fastjson2/JSONPathTwoSegment;
.source "JSONPathCompilerReflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathCompilerReflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwoNameSegmentTypedPath"
.end annotation


# instance fields
.field final first:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

.field final second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    .line 99
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 100
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->first:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    .line 101
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic endsWithFilter()Z
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->endsWithFilter()Z

    move-result v0

    return v0
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->first:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->getParent()Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isRef()Z
    .locals 1

    .line 94
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->isRef()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->first:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-void
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->first:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_1

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->first:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->first:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;->second:Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;J)V

    return-void
.end method
