.class public Lcom/alibaba/fastjson2/writer/ObjectWriter12;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;
.source "ObjectWriter12.java"


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

.field public final fieldWriter10:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter11:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

.field public final fieldWriter9:Lcom/alibaba/fastjson2/writer/FieldWriter;


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

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 34
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x1

    .line 35
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x2

    .line 36
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x3

    .line 37
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x4

    .line 38
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x5

    .line 39
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x6

    .line 40
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 p1, 0x7

    .line 41
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/16 p1, 0x8

    .line 42
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/16 p1, 0x9

    .line 43
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter9:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/16 p1, 0xa

    .line 44
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter10:Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/16 p1, 0xb

    .line 45
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter11:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-void
.end method


# virtual methods
.method public final getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 118
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 122
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 126
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 130
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 134
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 138
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 141
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 142
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 145
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter9:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 146
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter9:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 149
    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter10:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 150
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter10:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    .line 153
    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter11:Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->hashCode:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    .line 154
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter11:Lcom/alibaba/fastjson2/writer/FieldWriter;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 50
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->features:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 51
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

    .line 53
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->writeArrayMappingJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 59
    :cond_1
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 64
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->features:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->writeArrayMapping(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 68
    :cond_3
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->serializable:Z

    if-nez v0, :cond_5

    .line 69
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->errorOnNoneSerializable()V

    return-void

    .line 74
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 80
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->hasFilter(Lcom/alibaba/fastjson2/JSONWriter;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 81
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->writeWithFilter(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 85
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    .line 87
    iget-wide v5, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->features:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    :cond_7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->writeTypeInfo(Lcom/alibaba/fastjson2/JSONWriter;)Z

    .line 91
    :cond_8
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter0:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter1:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter2:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter3:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter4:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter5:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter6:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 98
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter7:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 99
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter8:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 100
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter9:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 101
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter10:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 102
    iget-object v0, v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;->fieldWriter11:Lcom/alibaba/fastjson2/writer/FieldWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void
.end method
