.class public Lcom/alibaba/fastjson2/JSONPathCompilerReflect;
.super Ljava/lang/Object;
.source "JSONPathCompilerReflect.java"

# interfaces
.implements Lcom/alibaba/fastjson2/JSONFactory$JSONPathCompiler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;,
        Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;,
        Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathCompilerReflect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathCompilerReflect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPath;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 3

    .line 18
    instance-of v0, p2, Lcom/alibaba/fastjson2/JSONPathSingleName;

    if-eqz v0, :cond_0

    .line 19
    check-cast p2, Lcom/alibaba/fastjson2/JSONPathSingleName;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;->compileSingleNamePath(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPathSingleName;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    instance-of v0, p2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    if-eqz v0, :cond_3

    .line 23
    move-object v0, p2

    check-cast v0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    .line 25
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;->compile(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object v1

    .line 26
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p0, p1, p2, v2, v1}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect;->compile(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;

    move-result-object p1

    .line 28
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    if-ne v1, v2, :cond_1

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    if-eq p1, v2, :cond_3

    .line 29
    :cond_1
    instance-of p2, v1, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    if-eqz p2, :cond_2

    instance-of p2, p1, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    if-eqz p2, :cond_2

    .line 30
    new-instance p2, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->path:Ljava/lang/String;

    check-cast v1, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    invoke-direct {p2, v0, v1, p1}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$TwoNameSegmentTypedPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;)V

    return-object p2

    .line 32
    :cond_2
    new-instance p2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->path:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson2/JSONPath$Feature;

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    :cond_3
    return-object p2
.end method

.method protected compile(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSegment;
    .locals 9

    .line 52
    instance-of v0, p3, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v0, :cond_6

    .line 53
    check-cast p3, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    .line 54
    iget-object v6, p3, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    .line 56
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONPath;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 57
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONPath;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p2

    const/4 v1, 0x0

    if-nez p4, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 63
    :cond_0
    instance-of v2, p4, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    if-eqz v2, :cond_1

    .line 64
    move-object v2, p4

    check-cast v2, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    .line 65
    iget-object v3, v2, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    if-eqz v3, :cond_1

    .line 66
    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldReader:Lcom/alibaba/fastjson2/reader/FieldReader;

    iget-object v2, v2, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 70
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-nez p4, :cond_3

    .line 76
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p2

    :goto_3
    move-object v4, p2

    goto :goto_4

    .line 77
    :cond_3
    instance-of v0, p4, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    if-eqz v0, :cond_4

    .line 78
    check-cast p4, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    .line 79
    iget-object v0, p4, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz v0, :cond_4

    .line 80
    iget-object p4, p4, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;->fieldWriter:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-object p4, p4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p2

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_5

    .line 85
    invoke-interface {v4, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p2

    move-object v5, p2

    goto :goto_5

    :cond_5
    move-object v5, v1

    .line 88
    :goto_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;

    iget-wide v7, p3, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$NameSegmentTyped;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/writer/FieldWriter;Ljava/lang/String;J)V

    return-object p2

    :cond_6
    return-object p3
.end method

.method protected compileSingleNamePath(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONPathSingleName;)Lcom/alibaba/fastjson2/JSONPath;
    .locals 9

    .line 40
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    .line 43
    invoke-interface {v5, v0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v6

    .line 45
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v7

    .line 46
    invoke-interface {v7, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v8

    .line 48
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;

    iget-object v3, p2, Lcom/alibaba/fastjson2/JSONPathSingleName;->path:Ljava/lang/String;

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/JSONPathCompilerReflect$SingleNamePathTyped;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReader;Lcom/alibaba/fastjson2/reader/FieldReader;Lcom/alibaba/fastjson2/writer/ObjectWriter;Lcom/alibaba/fastjson2/writer/FieldWriter;)V

    return-object v0
.end method
