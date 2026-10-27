.class public Lcom/alibaba/fastjson2/writer/ObjectWriter8;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.source "ObjectWriter8.java"


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

    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 30
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x1

    .line 31
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x2

    .line 32
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x3

    .line 33
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x4

    .line 34
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x5

    .line 35
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x6

    .line 36
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x7

    .line 37
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-void
.end method


# virtual methods
.method public final getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 106
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 110
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 114
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 118
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 122
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_7

    .line 126
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 42
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->features:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 43
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

    .line 45
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 51
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 56
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->features:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 60
    :cond_3
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->serializable:Z

    if-nez v0, :cond_5

    .line 61
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->errorOnNoneSerializable()V

    return-void

    .line 66
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 72
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 77
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 79
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->features:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    :cond_7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 83
    :cond_8
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 84
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 85
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 89
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
