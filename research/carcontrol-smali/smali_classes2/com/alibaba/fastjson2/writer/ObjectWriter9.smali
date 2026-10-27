.class public Lcom/alibaba/fastjson2/writer/ObjectWriter9;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.source "ObjectWriter9.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 31
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x1

    .line 32
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x2

    .line 33
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x3

    .line 34
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x4

    .line 35
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x5

    .line 36
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x6

    .line 37
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x7

    .line 38
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/16 p1, 0x8

    .line 39
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-void
.end method


# virtual methods
.method public final getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 109
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 113
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 117
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 121
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 125
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 128
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 129
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_8

    .line 133
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 44
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->features:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 45
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 53
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 58
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->features:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 62
    :cond_3
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->serializable:Z

    if-nez v0, :cond_5

    .line 63
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->errorOnNoneSerializable()V

    return-void

    .line 68
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 74
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 75
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 79
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 81
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->features:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    :cond_7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 85
    :cond_8
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 89
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 91
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
