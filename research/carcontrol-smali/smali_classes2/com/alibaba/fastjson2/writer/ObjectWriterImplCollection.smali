.class final Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplCollection.java"


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

.field static final LINKED_HASH_SET_JSONB_TYPE_HASH:J

.field static final LINKED_HASH_SET_JSONB_TYPE_NAME_BYTES:[B

.field static final TREE_SET_JSONB_TYPE_HASH:J

.field static final TREE_SET_JSONB_TYPE_NAME_BYTES:[B


# instance fields
.field features:J

.field itemType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    .line 16
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_NAME_BYTES:[B

    .line 17
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_HASH:J

    .line 19
    const-class v0, Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONB;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_NAME_BYTES:[B

    .line 20
    const-class v0, Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_HASH:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    .line 131
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONWriter;->jsonb:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual/range {p0 .. p6}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 142
    :cond_1
    instance-of p3, p2, Ljava/util/Set;

    if-eqz p3, :cond_2

    iget-wide p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->features:J

    or-long/2addr p3, p5

    .line 143
    invoke-virtual {p1, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures(J)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;J)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 145
    sget-object p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteSetClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-nez p3, :cond_2

    const-string p3, "Set"

    .line 146
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    .line 150
    :cond_2
    check-cast p2, Ljava/lang/Iterable;

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startArray()V

    const/4 p3, 0x0

    .line 156
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    move-object p5, p4

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz p3, :cond_3

    .line 158
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeComma()V

    :cond_3
    if-nez v2, :cond_4

    .line 162
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    if-ne p6, p4, :cond_5

    goto :goto_2

    .line 171
    :cond_5
    invoke-virtual {p1, p6}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p4

    move-object p5, p4

    move-object p4, p6

    .line 176
    :goto_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->itemType:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->features:J

    move-object v0, p5

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_1

    .line 180
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endArray()V

    return-void
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 18

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    if-nez v0, :cond_0

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 34
    :cond_0
    instance-of v2, v1, Ljava/lang/Class;

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 35
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    move-object v10, v3

    goto :goto_2

    .line 36
    :cond_1
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_4

    .line 37
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 38
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 39
    array-length v5, v4

    if-ne v5, v8, :cond_2

    .line 40
    aget-object v4, v4, v9

    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 43
    :goto_0
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 44
    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_3

    .line 45
    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    move-object v10, v4

    goto :goto_2

    :cond_4
    move-object v2, v3

    move-object v10, v2

    .line 49
    :goto_2
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    .line 51
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 52
    invoke-virtual {v7, v0, v2}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    const-class v6, Ljava/util/Set;

    if-ne v2, v6, :cond_5

    const-class v2, Ljava/util/HashSet;

    if-ne v5, v2, :cond_5

    :goto_3
    move v0, v9

    goto :goto_4

    .line 56
    :cond_5
    const-class v2, Ljava/util/Collection;

    if-ne v1, v2, :cond_6

    const-class v1, Ljava/util/ArrayList;

    if-ne v5, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v0, :cond_9

    .line 62
    const-class v0, Ljava/util/LinkedHashSet;

    if-ne v5, v0, :cond_7

    .line 63
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_NAME_BYTES:[B

    sget-wide v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->LINKED_HASH_SET_JSONB_TYPE_HASH:J

    invoke-virtual {v7, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    goto :goto_5

    .line 64
    :cond_7
    const-class v0, Ljava/util/TreeSet;

    if-ne v5, v0, :cond_8

    .line 65
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_NAME_BYTES:[B

    sget-wide v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->TREE_SET_JSONB_TYPE_HASH:J

    invoke-virtual {v7, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName([BJ)Z

    goto :goto_5

    .line 67
    :cond_8
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 84
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->isRefDetect()Z

    move-result v0

    .line 85
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v8, :cond_a

    instance-of v1, v4, Ljava/util/SortedSet;

    if-nez v1, :cond_a

    instance-of v1, v4, Ljava/util/LinkedHashSet;

    if-nez v1, :cond_a

    move v11, v9

    goto :goto_6

    :cond_a
    move v11, v0

    .line 89
    :goto_6
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/JSONWriter;->startArray(I)V

    .line 94
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v0, v3

    move v13, v9

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 95
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_b

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_b

    .line 100
    :cond_b
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v3, :cond_c

    move-object v15, v0

    move-object/from16 v16, v3

    goto :goto_8

    .line 105
    :cond_c
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    move-object v15, v0

    move-object/from16 v16, v1

    :goto_8
    if-eqz v11, :cond_d

    .line 110
    invoke-static {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isNotReferenceDetect(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    move/from16 v17, v8

    goto :goto_9

    :cond_d
    move/from16 v17, v9

    :goto_9
    if-eqz v17, :cond_e

    .line 113
    invoke-virtual {v7, v13, v14}, Lcom/alibaba/fastjson2/JSONWriter;->setPath(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 115
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeReference(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    goto :goto_a

    .line 121
    :cond_e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v15

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v4, v10

    move-wide/from16 v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v17, :cond_f

    .line 124
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson2/JSONWriter;->popPath(Ljava/lang/Object;)V

    :cond_f
    :goto_a
    move-object v0, v15

    move-object/from16 v3, v16

    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_10
    return-void
.end method
