.class public Lcom/alibaba/fastjson2/writer/ObjectWriter2;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.source "ObjectWriter2.java"


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

    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 24
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x1

    .line 25
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-void
.end method


# virtual methods
.method public final getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 30
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->features:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 32
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_1

    .line 33
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v0, v5, v8

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 38
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 42
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v10, v5

    cmp-long v0, v10, v8

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 47
    :cond_2
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->serializable:Z

    if-nez v0, :cond_4

    .line 48
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v10, v5

    cmp-long v0, v10, v8

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->errorOnNoneSerializable()V

    return-void

    .line 53
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v0, v5, v8

    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 59
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 60
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 64
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 66
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->features:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v10

    cmp-long v0, v5, v8

    if-nez v0, :cond_6

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 70
    :cond_7
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 71
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter2;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
