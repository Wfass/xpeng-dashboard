.class public interface abstract Lcom/alibaba/fastjson2/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# static fields
.field public static final VERSION:Ljava/lang/String; = "2.0.43"


# direct methods
.method public static config(Lcom/alibaba/fastjson2/JSONReader$Feature;Z)V
    .locals 2

    .line 3717
    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3718
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string p1, "not support config global autotype support"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 3722
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr p0, v0

    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    goto :goto_1

    .line 3724
    :cond_2
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    not-long p0, p0

    and-long/2addr p0, v0

    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    :goto_1
    return-void
.end method

.method public static config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3798
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr p0, v0

    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    goto :goto_0

    .line 3800
    :cond_0
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    iget-wide p0, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    not-long p0, p0

    and-long/2addr p0, v0

    sput-wide p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    :goto_0
    return-void
.end method

.method public static varargs config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6

    const/4 v0, 0x0

    .line 3699
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3700
    aget-object v1, p0, v0

    .line 3701
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    if-eq v1, v2, :cond_0

    .line 3705
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long v1, v2, v4

    sput-wide v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3702
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "not support config global autotype support"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static varargs config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 5

    const/4 v0, 0x0

    .line 3784
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3785
    sget-wide v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    aget-object v3, p0, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v1, v3

    sput-wide v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static configReaderDateFormat(Ljava/lang/String;)V
    .locals 0

    .line 3745
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFormat:Ljava/lang/String;

    return-void
.end method

.method public static configReaderZoneId(Ljava/time/ZoneId;)V
    .locals 0

    .line 3764
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderZoneId:Ljava/time/ZoneId;

    return-void
.end method

.method public static configWriterDateFormat(Ljava/lang/String;)V
    .locals 0

    .line 3754
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFormat:Ljava/lang/String;

    return-void
.end method

.method public static configWriterZoneId(Ljava/time/ZoneId;)V
    .locals 0

    .line 3774
    sput-object p0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterZoneId:Ljava/time/ZoneId;

    return-void
.end method

.method public static varargs copy(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[",
            "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
            ")TT;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3826
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3827
    invoke-static {v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->isPrimitiveOrEnum(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    move-wide v13, v3

    move v3, v8

    move v4, v3

    move v9, v4

    .line 3833
    :goto_0
    array-length v5, v1

    const/4 v10, 0x1

    if-ge v3, v5, :cond_4

    .line 3834
    aget-object v5, v1, v3

    .line 3835
    iget-wide v6, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v13, v6

    .line 3836
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    if-ne v5, v6, :cond_2

    move v4, v10

    goto :goto_1

    .line 3838
    :cond_2
    sget-object v6, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    if-ne v5, v6, :cond_3

    move v9, v10

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3843
    :cond_4
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v3, v2, v2, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    .line 3844
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v5, v2, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v11

    .line 3846
    instance-of v2, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v2, :cond_9

    instance-of v2, v11, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v2, :cond_9

    .line 3847
    invoke-interface {v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v1

    .line 3849
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3850
    instance-of v3, v11, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    if-eqz v3, :cond_6

    .line 3851
    new-instance v3, Ljava/util/HashMap;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v2, v4}, Ljava/util/HashMap;-><init>(IF)V

    :goto_2
    if-ge v8, v2, :cond_5

    .line 3853
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 3854
    invoke-virtual {v4, p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3855
    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3858
    :cond_5
    invoke-interface {v11, v3, v13, v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3861
    :cond_6
    invoke-interface {v11, v13, v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v3

    move v4, v8

    :goto_3
    if-ge v4, v2, :cond_8

    .line 3863
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 3864
    iget-object v6, v5, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v11, v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_4

    .line 3869
    :cond_7
    invoke-virtual {v5, p0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v7, v8, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3870
    invoke-static {v5, v7}, Lcom/alibaba/fastjson2/JSON;->copy(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    move-result-object v5

    .line 3871
    invoke-virtual {v6, v3, v5}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-object v3

    .line 3878
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v12

    :try_start_0
    new-array v1, v10, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3879
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v2, v1, v8

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson2/JSONWriter;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v3

    move-object v2, v12

    move-object v3, p0

    .line 3880
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3881
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v12, :cond_a

    .line 3882
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_a
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3884
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    aput-object v2, v1, v8

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->ofJSONB([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v1

    if-eqz v9, :cond_b

    .line 3886
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    new-array v2, v10, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    :cond_b
    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object v9, v11

    move-object v10, v1

    move-object v11, v0

    .line 3889
    invoke-interface/range {v9 .. v14}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_c

    .line 3890
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_c
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_d

    .line 3884
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    throw v2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_e

    .line 3878
    :try_start_3
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_6
    throw v1
.end method

.method public static varargs copyTo(Ljava/lang/Object;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONWriter$Feature;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3906
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    move v5, v8

    move v6, v5

    move v9, v6

    .line 3910
    :goto_0
    array-length v7, v1

    const/4 v10, 0x1

    if-ge v5, v7, :cond_3

    .line 3911
    aget-object v7, v1, v5

    .line 3912
    iget-wide v11, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v11

    .line 3913
    sget-object v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    if-ne v7, v11, :cond_1

    move v6, v10

    goto :goto_1

    .line 3915
    :cond_1
    sget-object v11, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    if-ne v7, v11, :cond_2

    move v9, v10

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3920
    :cond_3
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v5, v2, v2, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    .line 3921
    sget-object v5, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectReaderProvider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-object/from16 v7, p1

    invoke-virtual {v5, v7, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v11

    .line 3923
    instance-of v5, v2, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v5, :cond_c

    instance-of v5, v11, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v5, :cond_c

    .line 3924
    invoke-interface {v2}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriters()Ljava/util/List;

    move-result-object v1

    .line 3926
    instance-of v2, v11, Lcom/alibaba/fastjson2/reader/ObjectReaderNoneDefaultConstructor;

    if-eqz v2, :cond_5

    .line 3927
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 3928
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_4

    .line 3929
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 3930
    invoke-virtual {v5, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3931
    iget-object v5, v5, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3934
    :cond_4
    invoke-interface {v11, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3937
    :cond_5
    invoke-interface {v11, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object v2

    move v3, v8

    .line 3938
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 3939
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 3940
    iget-object v5, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v11, v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v5

    if-nez v5, :cond_6

    goto :goto_5

    .line 3945
    :cond_6
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3948
    iget-object v7, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/util/Date;

    if-ne v7, v9, :cond_7

    iget-object v7, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    if-ne v7, v9, :cond_7

    .line 3950
    check-cast v6, Ljava/util/Date;

    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 3951
    :cond_7
    iget-object v7, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/time/LocalDate;

    if-ne v7, v9, :cond_8

    iget-object v7, v5, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    if-ne v7, v9, :cond_8

    .line 3953
    check-cast v6, Ljava/time/LocalDate;

    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/FieldWriter;->format:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/util/DateUtils;->format(Ljava/time/LocalDate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_a

    .line 3954
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson2/reader/FieldReader;->supportAcceptType(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    new-array v4, v8, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3957
    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/JSON;->copy(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    move-result-object v6

    .line 3960
    :cond_a
    :goto_4
    invoke-virtual {v5, v2, v6}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_b
    return-object v2

    .line 3967
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/JSONWriter;->ofJSONB([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v12

    :try_start_0
    new-array v1, v10, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 3968
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v3, v1, v8

    invoke-virtual {v12, v1}, Lcom/alibaba/fastjson2/JSONWriter;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v2

    move-object v2, v12

    move-object/from16 v3, p0

    .line 3969
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3970
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v12, :cond_d

    .line 3971
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_d
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 3973
    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportAutoType:Lcom/alibaba/fastjson2/JSONReader$Feature;

    aput-object v2, v1, v8

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportClassForName:Lcom/alibaba/fastjson2/JSONReader$Feature;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->ofJSONB([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v1

    if-eqz v9, :cond_e

    .line 3979
    :try_start_1
    iget-object v0, v1, Lcom/alibaba/fastjson2/JSONReader;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    new-array v2, v10, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->SupportArrayToBean:Lcom/alibaba/fastjson2/JSONReader$Feature;

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    :cond_e
    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v12, v1

    .line 3982
    invoke-interface/range {v11 .. v16}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_f

    .line 3983
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_f
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_10

    .line 3973
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_6
    throw v2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v12, :cond_11

    .line 3967
    :try_start_3
    invoke-virtual {v12}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_7
    throw v1
.end method

.method public static isEnabled(Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 4

    .line 3735
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z
    .locals 4

    .line 3811
    sget-wide v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 3266
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3270
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3271
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3272
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 3273
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_3

    .line 3270
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    :goto_2
    return v0
.end method

.method public static varargs isValid(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 3286
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 3290
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3291
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3292
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/alibaba/fastjson2/JSONReader;->comma:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 3293
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    .line 3290
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_4
    :goto_2
    return v0
.end method

.method public static isValid([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 3390
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3394
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3395
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3396
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 3397
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_2

    .line 3394
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public static isValid([BIILjava/nio/charset/Charset;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 3449
    array-length v1, p0

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 3453
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3454
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3455
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 3456
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 3453
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public static isValid([BLjava/nio/charset/Charset;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3410
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 3414
    :cond_0
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/alibaba/fastjson2/JSON;->isValid([BIILjava/nio/charset/Charset;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValid([C)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 3305
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3309
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([C)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3310
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3311
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 3312
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_2

    .line 3309
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    :goto_1
    return v0
.end method

.method public static isValidArray(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 3368
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3372
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3373
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 3378
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v0

    .line 3376
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3377
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 3378
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 3372
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method

.method public static isValidArray([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 3424
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3428
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3429
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 3434
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v0

    .line 3432
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3433
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 3434
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 3428
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method

.method public static isValidObject(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 3324
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3328
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3329
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 3334
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v0

    .line 3332
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3333
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 3334
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 3328
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method

.method public static isValidObject([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 3346
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 3350
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of([B)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3351
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    .line 3356
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v0

    .line 3354
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 3355
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_3

    .line 3356
    :try_start_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_4
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_4

    .line 3350
    :try_start_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
    :try_end_6
    .catch Lcom/alibaba/fastjson2/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return v0
.end method

.method public static mixIn(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 3543
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixIn(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3544
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixIn(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    if-eqz p0, :cond_9

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 55
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 57
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    .line 61
    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    const-wide/16 v8, 0x0

    if-nez v3, :cond_3

    iget-wide v3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->UseNativeObject:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v8

    if-nez v3, :cond_3

    const/16 v3, 0x7b

    if-eq v2, v3, :cond_1

    const/16 v4, 0x5b

    if-ne v2, v4, :cond_3

    :cond_1
    if-ne v2, v3, :cond_2

    .line 66
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 67
    invoke-virtual {p0, v0, v8, v9}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    goto :goto_1

    .line 78
    :cond_3
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    .line 79
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 81
    :cond_4
    :goto_1
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_6

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v8

    if-eqz v1, :cond_5

    goto :goto_2

    .line 82
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_7
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_8

    .line 57
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v0

    :cond_9
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;II[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9

    if-eqz p0, :cond_5

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 134
    const-class p3, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 136
    invoke-static {p0, p1, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    .line 137
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 138
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_2

    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 136
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 9

    if-eqz p0, :cond_5

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 160
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 162
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    .line 163
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 164
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_2

    iget-wide v1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10

    if-eqz p0, :cond_5

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 102
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 104
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 106
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 107
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    .line 108
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 109
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_2

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9

    if-eqz p0, :cond_5

    .line 181
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 185
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 187
    const-class p1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 189
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    .line 190
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 191
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_2

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 189
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parse([C[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 9

    if-eqz p0, :cond_5

    .line 208
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 212
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 214
    const-class p1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 216
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    .line 217
    :try_start_0
    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 218
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_2

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_4

    .line 216
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2406
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    .line 2407
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2408
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 2420
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 2411
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2412
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 2413
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2414
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2416
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_5

    iget-wide v1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    goto :goto_0

    .line 2417
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 2420
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 2407
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2224
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2228
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 2229
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2230
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 2242
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 2233
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2234
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 2235
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 2236
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2238
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_5

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    goto :goto_0

    .line 2239
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 2242
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 2229
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2348
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2352
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    .line 2353
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2354
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 2366
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 2357
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2358
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 2359
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2360
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2362
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_5

    iget-wide v1, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    goto :goto_0

    .line 2363
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 2366
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 2353
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseArray(Ljava/net/URL;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2385
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2386
    :try_start_1
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/JSON;->parseArray(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 2387
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 2385
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 2388
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON#parseArray cannot parse \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' to \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseArray([B)Lcom/alibaba/fastjson2/JSONArray;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2254
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 2258
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 2259
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2260
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 2272
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 2263
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2264
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 2265
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 2266
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2268
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_5

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    goto :goto_0

    .line 2269
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 2272
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 2259
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static parseArray([BIILjava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2287
    array-length v1, p0

    if-eqz v1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 2291
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 2292
    invoke-static {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2293
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 2305
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 2296
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2297
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 2298
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 2299
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2301
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_5

    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    goto :goto_0

    .line 2302
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 2305
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 2292
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static parseArray([C)Lcom/alibaba/fastjson2/JSONArray;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 2317
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 2321
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 2322
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2323
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 2335
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 2326
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 2327
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/List;)V

    .line 2328
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 2329
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2331
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_5

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    goto :goto_0

    .line 2332
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 2335
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 2322
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2491
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2495
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 2496
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2497
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2498
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2499
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2501
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2502
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2505
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2496
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2548
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2552
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 2553
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2554
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2555
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2556
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2558
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2559
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2562
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2553
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2463
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2467
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 2468
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2469
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2470
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2471
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2473
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2474
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2477
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2468
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2435
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2439
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 2440
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2441
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2442
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2443
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2445
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2446
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2449
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2440
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2519
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2523
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 2524
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2525
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readList([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2526
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 2527
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2529
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2530
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2533
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2524
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 2605
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 2609
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 2610
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2611
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 2630
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 2615
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    .line 2616
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2617
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 2618
    aget-object v2, p1, v1

    .line 2619
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 2618
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2622
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->endArray()V

    .line 2623
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 2624
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2626
    :cond_4
    iget-char p1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_6

    iget-wide p1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 2627
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    if-eqz p0, :cond_7

    .line 2630
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_7
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_8

    .line 2610
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p1

    :cond_9
    :goto_3
    return-object v0
.end method

.method public static varargs parseArray([BIILjava/nio/charset/Charset;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2713
    array-length v0, p0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 2717
    :cond_0
    invoke-static {p5}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p5

    .line 2718
    invoke-static {p0, p1, p2, p3, p5}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2719
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2720
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 2721
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2723
    :cond_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_3

    iget-wide p2, p5, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2724
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2727
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2718
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray([BLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2674
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2678
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 2679
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2680
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2681
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2682
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2684
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2685
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2688
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2679
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2645
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2649
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 2650
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2651
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2652
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2653
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2655
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2656
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2659
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2650
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseArray([CLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2577
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2581
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 2582
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 2583
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray(Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    .line 2584
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2585
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2587
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2588
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2591
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2582
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 525
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 526
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 531
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    .line 532
    invoke-virtual {p0, p1, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 533
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 534
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 536
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x1a

    if-eq v0, v4, :cond_5

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_0

    .line 537
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 540
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 526
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static varargs parseObject(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 431
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    .line 432
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v1, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 433
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 437
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    .line 438
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 439
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 440
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 442
    :cond_3
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 443
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 432
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static varargs parseObject(Ljava/io/Reader;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 399
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    .line 400
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/Reader;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 401
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 405
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    .line 406
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 407
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 408
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 410
    :cond_3
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 411
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 414
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 400
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 238
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 239
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 243
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    .line 244
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 245
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 246
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 248
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    goto :goto_0

    .line 249
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 252
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 239
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static parseObject(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 338
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 339
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 342
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 344
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 345
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 347
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_5

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    goto :goto_0

    .line 348
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 351
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 338
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;II[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 303
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    .line 304
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 308
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v0, 0x0

    .line 309
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 310
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 311
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 313
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_5

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    goto :goto_0

    .line 314
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 304
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 369
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 373
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    .line 374
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 375
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 376
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 378
    :cond_3
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 379
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 382
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 369
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 269
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    .line 270
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 274
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    .line 275
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 276
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 277
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 280
    :cond_3
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 281
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 270
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static parseObject(Ljava/net/URL;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 558
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 560
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 558
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 561
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON#parseObject cannot parse \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseObject([B)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 458
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 462
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 463
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 468
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    .line 469
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 470
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 471
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 473
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    goto :goto_0

    .line 474
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 477
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 463
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 682
    array-length v1, p0

    if-eqz v1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 686
    :cond_0
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 687
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 688
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 691
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 p2, 0x0

    .line 692
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 693
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 694
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 696
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long p2, v0, p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 697
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 700
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 687
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseObject([BII[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 608
    array-length v1, p0

    if-eqz v1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 612
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    .line 613
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 614
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 617
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v0, 0x0

    .line 618
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 619
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 620
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 622
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_5

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    goto :goto_0

    .line 623
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 613
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseObject([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 575
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 579
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p1

    .line 580
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 581
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 593
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 584
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v1, 0x0

    .line 585
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 586
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 587
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 589
    :cond_3
    iget-char v3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_5

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 590
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 593
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 580
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static parseObject([C)Lcom/alibaba/fastjson2/JSONObject;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 489
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 493
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 494
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 495
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 499
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v2, 0x0

    .line 500
    invoke-virtual {p0, v0, v2, v3}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 501
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 502
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 504
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    iget-wide v4, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    goto :goto_0

    .line 505
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 508
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    .line 494
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw v0

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseObject([CII[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 641
    array-length v1, p0

    if-eqz v1, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    .line 645
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    .line 646
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of([CIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 647
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    .line 650
    :cond_2
    :try_start_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    const-wide/16 v0, 0x0

    .line 651
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/util/Map;J)V

    .line 652
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 653
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 655
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_5

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-eqz p2, :cond_4

    goto :goto_0

    .line 656
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 659
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 646
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1

    :cond_8
    :goto_2
    return-object v0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1885
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 1886
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1887
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 1889
    :cond_1
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 1891
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p2, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1892
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1893
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 1894
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1896
    :cond_2
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_4

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1897
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    if-eqz p0, :cond_5

    .line 1900
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1891
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1769
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 1770
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->config([Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 1771
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 1773
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 1774
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_1

    .line 1786
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    :cond_2
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 1778
    :try_start_1
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1779
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 1780
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1782
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_5

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 1783
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 1786
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 1773
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1920
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    .line 1921
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1923
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/InputStream;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    .line 1924
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1925
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1926
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1928
    :cond_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_3

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1929
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1932
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1923
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
.end method

.method public static varargs parseObject(Ljava/io/Reader;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1734
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1735
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 1737
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/io/Reader;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 1738
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_1

    .line 1750
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_1
    return-object v0

    :cond_2
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1742
    :try_start_1
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1743
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1744
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1746
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 1747
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    if-eqz p0, :cond_6

    .line 1750
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 1737
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    throw p1
.end method

.method public static varargs parseObject(Ljava/lang/String;IILjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1027
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 1031
    :cond_0
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 1032
    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1033
    :goto_0
    iget-object v1, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p3, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 1035
    invoke-static {p0, p1, p2, p4}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;IILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p3

    .line 1036
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1037
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 1038
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1040
    :cond_2
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_4

    iget-wide p2, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1041
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 1044
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1035
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 960
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 964
    :cond_0
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 965
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 966
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v3

    const-wide/16 v6, 0x0

    cmp-long p1, v0, v6

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 967
    :goto_0
    iget-object p3, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p3, v2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 969
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 970
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 971
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p3, :cond_2

    .line 972
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 974
    :cond_2
    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_4

    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v6

    if-eqz p2, :cond_3

    goto :goto_1

    .line 975
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 978
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 969
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 921
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 925
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 926
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 927
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v3

    const-wide/16 v6, 0x0

    cmp-long p1, v0, v6

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 928
    :goto_0
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 930
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 931
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 932
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 933
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 935
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long p2, v0, v6

    if-eqz p2, :cond_3

    goto :goto_1

    .line 936
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 939
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 930
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 714
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 718
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 719
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 720
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    .line 725
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    .line 726
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 727
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 728
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 730
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_4

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 731
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 734
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 725
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1060
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1064
    :cond_0
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1065
    :goto_0
    iget-object v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 1067
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 1068
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1069
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1070
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1072
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v4

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1073
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 1076
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1067
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 755
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 759
    :cond_0
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 760
    iget-wide v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 761
    :goto_0
    iget-object v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    .line 763
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 764
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_3

    if-eqz p0, :cond_2

    .line 776
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_2
    return-object v0

    :cond_3
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    .line 768
    :try_start_1
    invoke-interface/range {v5 .. v10}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 769
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p3, :cond_4

    .line 770
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 772
    :cond_4
    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_6

    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v3

    if-eqz p2, :cond_5

    goto :goto_1

    .line 773
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    if-eqz p0, :cond_7

    .line 776
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_7
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_8

    .line 763
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p1

    :cond_9
    :goto_3
    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 1092
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1096
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 1097
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1098
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 1101
    :cond_1
    iget-wide v0, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1102
    :goto_0
    iget-object v0, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 1104
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 1105
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1106
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 1107
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1109
    :cond_3
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_5

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 1110
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    if-eqz p0, :cond_6

    .line 1113
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_6
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_7

    .line 1104
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p1

    :cond_8
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 993
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 997
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 998
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 999
    :goto_0
    iget-object v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 1001
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 1002
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1003
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1004
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1006
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v4

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1007
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 1010
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1001
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 841
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 845
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 846
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 847
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    .line 852
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    .line 853
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 854
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 855
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 857
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_4

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 858
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 861
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 852
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1160
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1164
    :cond_0
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1165
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1167
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1168
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1169
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 1170
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1172
    :cond_1
    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_3

    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1173
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1176
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1167
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1192
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1196
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 1197
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1198
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 1201
    :cond_1
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 1202
    :try_start_0
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1203
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1204
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 1205
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1207
    :cond_2
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_4

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1208
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    if-eqz p0, :cond_5

    .line 1211
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1201
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    .line 799
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 803
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 804
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2, v0, p3, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 809
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 811
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 812
    :goto_0
    iget-object p3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 814
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 815
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    if-eqz p0, :cond_2

    .line 827
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_2
    return-object v0

    :cond_3
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 819
    :try_start_1
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 820
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 821
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 823
    :cond_4
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_6

    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_5

    goto :goto_1

    .line 824
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_1
    if-eqz p0, :cond_7

    .line 827
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_7
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_8

    .line 814
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw p1

    :cond_9
    :goto_3
    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1128
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1132
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1133
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1135
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1136
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1137
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1138
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1140
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1141
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1135
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 906
    new-instance v0, Lcom/alibaba/fastjson2/util/MultiType;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/util/MultiType;-><init>([Ljava/lang/reflect/Type;)V

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/net/URL;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1832
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1833
    :try_start_1
    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1834
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz v0, :cond_2

    .line 1832
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p2

    .line 1835
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON#parseObject cannot parse \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' to \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs parseObject(Ljava/net/URL;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1807
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 1809
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 1807
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1810
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "parseObject error"

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs parseObject(Ljava/net/URL;Ljava/util/function/Function;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/util/function/Function<",
            "Lcom/alibaba/fastjson2/JSONObject;",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1857
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    :try_start_1
    invoke-static {v1, p2}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/io/InputStream;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_2

    if-eqz v1, :cond_1

    .line 1863
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v0

    .line 1862
    :cond_2
    :try_start_3
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 1863
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 1857
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 1864
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON#parseObject cannot parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static parseObject(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1703
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 1704
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 1706
    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 1707
    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1708
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1709
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1711
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_3

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1712
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1715
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1706
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1
.end method

.method public static varargs parseObject([BIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1293
    array-length v0, p0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 1297
    :cond_0
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 1298
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1300
    invoke-static {p0, p1, p2, p4}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    .line 1301
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1302
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1303
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1305
    :cond_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_3

    iget-wide p2, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1306
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1309
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1300
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject([BIILjava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1981
    array-length v0, p0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 1985
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 1986
    invoke-virtual {v0, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 1987
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p4

    .line 1988
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1989
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1990
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1992
    :cond_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_3

    iget-wide p2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1993
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1996
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1987
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 2020
    array-length v0, p0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 2024
    :cond_0
    invoke-static {p5}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p5

    .line 2025
    invoke-virtual {p5, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 2027
    invoke-static {p0, p1, p2, p3, p5}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p4

    .line 2028
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 2029
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 2030
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2032
    :cond_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_3

    iget-wide p2, p5, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    goto :goto_0

    .line 2033
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 2036
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 2027
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1949
    array-length v0, p0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 1953
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 1954
    invoke-virtual {v0, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 1955
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p4

    .line 1956
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1957
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1958
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1960
    :cond_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_3

    iget-wide p2, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1961
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1964
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1955
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1353
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1357
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 1358
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V

    .line 1359
    sget-wide v2, Lcom/alibaba/fastjson2/JSONFactory;->defaultReaderFeatures:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    .line 1364
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v7, p0

    move-object v8, p1

    .line 1365
    :try_start_0
    invoke-interface/range {v6 .. v11}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1366
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1367
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1369
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_4

    iget-wide v0, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1370
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 1373
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1364
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject([BLjava/lang/Class;Lcom/alibaba/fastjson2/JSONReader$Context;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/JSONReader$Context;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1431
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1435
    :cond_0
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1436
    :goto_0
    iget-object v1, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 1438
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 1439
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1440
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1441
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1443
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v4

    cmp-long p2, v0, v2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1444
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 1447
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1438
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1394
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1398
    :cond_0
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1399
    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1400
    :goto_0
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {v0, p1, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 1402
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 1403
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1404
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p3, :cond_2

    .line 1405
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1407
    :cond_2
    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_4

    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1408
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 1411
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1402
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1509
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1513
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1514
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1516
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1517
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1518
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1521
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1522
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1525
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1516
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject([BLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1323
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1327
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 1328
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 1330
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1331
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1332
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1333
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1335
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1336
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1339
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1330
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1634
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1638
    :cond_0
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1639
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1641
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1642
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1643
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 1644
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1646
    :cond_1
    iget-char p3, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_3

    iget-wide p2, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1647
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1650
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1641
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1666
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1670
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 1671
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1672
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 1674
    :cond_1
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 1676
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1677
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1678
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 1679
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1681
    :cond_2
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_4

    iget-wide p2, p3, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1682
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    if-eqz p0, :cond_5

    .line 1685
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1676
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p1

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/filter/Filter;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 1470
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 1474
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 1475
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v2

    invoke-direct {v1, v2, v0, p3, p4}, Lcom/alibaba/fastjson2/JSONReader$Context;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Lcom/alibaba/fastjson2/SymbolTable;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    .line 1480
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->setDateFormat(Ljava/lang/String;)V

    .line 1482
    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 1483
    :goto_0
    iget-object p3, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v4

    .line 1485
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    .line 1486
    :try_start_0
    invoke-interface/range {v4 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1487
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 1488
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1490
    :cond_2
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_4

    iget-wide p2, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    cmp-long p2, p2, v2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1491
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    .line 1494
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 1485
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1540
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1544
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1545
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1547
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([BLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1548
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1549
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1550
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1552
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1553
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1556
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1547
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([CIILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CII",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1229
    array-length v0, p0

    if-eqz v0, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 1233
    :cond_0
    invoke-static {p4}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p4

    .line 1234
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1236
    invoke-static {p0, p1, p2, p4}, Lcom/alibaba/fastjson2/JSONReader;->of([CIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p3

    .line 1237
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1238
    iget-object p2, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 1239
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1241
    :cond_1
    iget-char p2, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 p3, 0x1a

    if-eq p2, p3, :cond_3

    iget-wide p2, p4, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v0, p4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1242
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1245
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1236
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject([CLjava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1259
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1263
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 1264
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 1266
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1267
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1268
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1269
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1271
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1272
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1275
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1266
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([CLjava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1571
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1575
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1576
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1578
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1579
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1580
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1581
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1583
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1584
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1587
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1578
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject([CLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([C",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1602
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1606
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    .line 1607
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 1609
    invoke-static {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->of([CLcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1610
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 1611
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1612
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 1614
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-wide v0, p2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1615
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "input not end"

    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1618
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 1609
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/util/MapMultiValueType;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/util/MapMultiValueType<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 875
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 879
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 880
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 882
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 883
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 884
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 885
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 887
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3

    iget-wide v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 888
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "input not end"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 891
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V

    :cond_4
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    .line 882
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p1

    :cond_6
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;Ljava/util/function/Consumer;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Consumer<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")V"
        }
    .end annotation

    .line 2052
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v2, 0xa

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;CLjava/lang/reflect/Type;Ljava/util/function/Consumer;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-void
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;CLjava/lang/reflect/Type;Ljava/util/function/Consumer;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "C",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Consumer<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p3

    .line 2078
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v1, v1

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    and-int/2addr v0, v1

    .line 2079
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object v9, v1, v0

    .line 2080
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/high16 v10, 0x80000

    if-nez v0, :cond_0

    new-array v0, v10, [B

    .line 2089
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext([Lcom/alibaba/fastjson2/JSONReader$Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v0

    move v0, v12

    move v2, v0

    .line 2092
    :goto_0
    :try_start_0
    array-length v3, v13

    sub-int/2addr v3, v0

    move-object/from16 v14, p0

    invoke-virtual {v14, v13, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2140
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v9, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    add-int v15, v0, v3

    move v3, v12

    :goto_1
    if-ge v0, v15, :cond_7

    .line 2102
    :try_start_1
    aget-byte v4, v13, v0

    move/from16 v5, p2

    if-ne v4, v5, :cond_6

    sub-int v3, v0, v2

    move-object/from16 v6, p1

    .line 2105
    invoke-static {v13, v2, v3, v6, v11}, Lcom/alibaba/fastjson2/JSONReader;->of([BIILjava/nio/charset/Charset;Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v4

    if-nez v1, :cond_2

    .line 2107
    invoke-virtual {v11, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    :cond_2
    move-object/from16 v16, v1

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v1, v16

    move-object v2, v4

    move-object/from16 v3, p3

    move-object v8, v4

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    .line 2110
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 2111
    iget-object v2, v8, Lcom/alibaba/fastjson2/JSONReader;->resolveTasks:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 2112
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONReader;->handleResolveTasks(Ljava/lang/Object;)V

    .line 2114
    :cond_3
    iget-char v2, v8, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_5

    iget-wide v2, v11, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->IgnoreCheckClose:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    goto :goto_2

    .line 2115
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "input not end"

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    move-object/from16 v4, p4

    .line 2118
    invoke-interface {v4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    move-object/from16 v1, v16

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v4, p4

    :goto_3
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v4, p4

    .line 2126
    array-length v0, v13

    if-ne v15, v0, :cond_9

    if-eqz v3, :cond_8

    .line 2128
    array-length v0, v13

    sub-int/2addr v0, v2

    .line 2129
    invoke-static {v13, v2, v13, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v12

    goto :goto_4

    .line 2133
    :cond_8
    array-length v0, v13

    add-int/2addr v0, v10

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v0

    :cond_9
    move v0, v15

    :goto_4
    const/4 v8, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 2138
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON#parseObject cannot parse the \'InputStream\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2140
    :goto_5
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->BYTES_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v9, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2141
    throw v0
.end method

.method public static parseObject(Ljava/io/Reader;CLjava/lang/reflect/Type;Ljava/util/function/Consumer;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "C",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v7, p2

    .line 2158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    array-length v1, v1

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    and-int/2addr v0, v1

    .line 2159
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CACHE_ITEMS:[Lcom/alibaba/fastjson2/JSONFactory$CacheItem;

    aget-object v9, v1, v0

    .line 2160
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    const/16 v10, 0x2000

    if-nez v0, :cond_0

    new-array v0, v10, [C

    .line 2168
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v0

    move v0, v12

    move v2, v0

    .line 2171
    :goto_0
    :try_start_0
    array-length v3, v13

    sub-int/2addr v3, v0

    move-object/from16 v14, p0

    invoke-virtual {v14, v13, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 2211
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v9, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    add-int v15, v0, v3

    move v3, v12

    :goto_1
    if-ge v0, v15, :cond_4

    .line 2181
    :try_start_1
    aget-char v4, v13, v0

    move/from16 v5, p1

    if-ne v4, v5, :cond_3

    sub-int v3, v0, v2

    .line 2184
    invoke-static {v13, v2, v3, v11}, Lcom/alibaba/fastjson2/JSONReader;->of([CIILcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v2

    if-nez v1, :cond_2

    .line 2186
    invoke-virtual {v11, v7}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    :cond_2
    move-object/from16 v16, v1

    const/4 v4, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v1, v16

    move-object/from16 v3, p2

    move-wide/from16 v5, v17

    .line 2190
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, p3

    .line 2189
    invoke-interface {v4, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    move v3, v8

    move-object/from16 v1, v16

    goto :goto_2

    :cond_3
    move-object/from16 v4, p3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v4, p3

    .line 2197
    array-length v0, v13

    if-ne v15, v0, :cond_6

    if-eqz v3, :cond_5

    .line 2199
    array-length v0, v13

    sub-int/2addr v0, v2

    .line 2200
    invoke-static {v13, v2, v13, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v12

    goto :goto_0

    .line 2204
    :cond_5
    array-length v0, v13

    add-int/2addr v0, v10

    invoke-static {v13, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v13, v0

    :cond_6
    move v0, v15

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 2209
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON#parseObject cannot parse the \'Reader\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2211
    :goto_3
    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v9, v13}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2212
    throw v0
.end method

.method public static register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;"
        }
    .end annotation

    .line 3555
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;Z)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;"
        }
    .end annotation

    .line 3566
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;"
        }
    .end annotation

    .line 3629
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;Z)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;"
        }
    .end annotation

    .line 3640
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static register(Ljava/lang/Class;Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 1

    .line 3673
    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/AfterFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/BeforeFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ContextNameFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ContextValueFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/NameFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/alibaba/fastjson2/filter/ValueFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 3686
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    .line 3687
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    .line 3688
    invoke-interface {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V

    :cond_2
    return-void
.end method

.method public static register(Lcom/alibaba/fastjson2/modules/ObjectReaderModule;)Z
    .locals 1

    .line 3598
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 3599
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->register(Lcom/alibaba/fastjson2/modules/ObjectReaderModule;)Z

    move-result p0

    return p0
.end method

.method public static register(Lcom/alibaba/fastjson2/modules/ObjectWriterModule;)Z
    .locals 1

    .line 3618
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Lcom/alibaba/fastjson2/modules/ObjectWriterModule;)Z

    move-result p0

    return p0
.end method

.method public static registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;"
        }
    .end annotation

    .line 3577
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;Z)",
            "Lcom/alibaba/fastjson2/reader/ObjectReader<",
            "*>;"
        }
    .end annotation

    .line 3588
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReader;Z)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0

    return-object p0
.end method

.method public static registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;"
        }
    .end annotation

    .line 3651
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;Z)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "*>;"
        }
    .end annotation

    .line 3662
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0

    return-object p0
.end method

.method public static registerSeeAlsoSubType(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 3603
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSON;->registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 3607
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 3608
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerSeeAlsoSubType(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static to(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3521
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONObject;

    if-eqz v0, :cond_1

    .line 3522
    check-cast p1, Lcom/alibaba/fastjson2/JSONObject;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    invoke-virtual {p1, p0, v0}, Lcom/alibaba/fastjson2/JSONObject;->to(Ljava/lang/Class;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3525
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 3469
    check-cast v0, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/JSON;->toJSON(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSON(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/Object;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3485
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONObject;

    if-nez v0, :cond_6

    instance-of v0, p0, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    if-nez p1, :cond_2

    .line 3490
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext([Lcom/alibaba/fastjson2/JSONWriter$Feature;)Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p1

    .line 3491
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3492
    invoke-virtual {p1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    .line 3493
    instance-of v0, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->ReferenceDetection:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3494
    check-cast v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 3495
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->toJSONObject(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p0

    return-object p0

    .line 3499
    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 3500
    :try_start_1
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3501
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 3502
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3506
    :cond_4
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_5

    .line 3499
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 3503
    :goto_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "toJSONString error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    :goto_3
    return-object p0
.end method

.method public static toJSONBytes(Ljava/lang/Object;)[B
    .locals 10

    .line 2950
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 2951
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 2952
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v1

    if-nez p0, :cond_0

    .line 2954
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 2956
    :cond_0
    iput-object p0, v1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2957
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v2, v1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2959
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2960
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-object v3, v1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_1

    .line 2961
    check-cast p0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 2963
    :cond_1
    sget-wide v6, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v8

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v2, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    .line 2968
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2971
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 2972
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    .line 2952
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 8

    .line 2985
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p1, :cond_0

    .line 2986
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2987
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    .line 2990
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_1

    .line 2992
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 2994
    :cond_1
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2995
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2997
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2998
    invoke-virtual {v0, p2, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 2999
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3001
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 3002
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 2990
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 8

    .line 3100
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p1, :cond_0

    .line 3101
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 3102
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3104
    array-length p1, p2

    if-eqz p1, :cond_1

    .line 3105
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 3108
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_2

    .line 3110
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3112
    :cond_2
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3113
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 3116
    invoke-virtual {v0, p2, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 3117
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3119
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 3120
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 3108
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 9

    .line 3043
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 3044
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_0

    .line 3046
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3048
    :cond_0
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3049
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3051
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3052
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    .line 3053
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3055
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 3056
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_1
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    .line 3044
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;)[B
    .locals 9

    .line 3014
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    if-eqz p1, :cond_0

    .line 3015
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 3016
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 3019
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_1

    .line 3021
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3023
    :cond_1
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3024
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3026
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3027
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    .line 3028
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3030
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 3031
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 3019
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)[B
    .locals 8

    .line 3069
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p1, :cond_0

    .line 3070
    array-length p2, p1

    if-eqz p2, :cond_0

    .line 3071
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 3074
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_1

    .line 3076
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3078
    :cond_1
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3079
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3081
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 3082
    invoke-virtual {v0, p2, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 3083
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3085
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 3086
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 3074
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 12

    .line 2738
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 2739
    new-instance v1, Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 2740
    :try_start_0
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    .line 2742
    :try_start_1
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 2744
    :cond_0
    iput-object p0, v9, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2745
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v2, v9, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2747
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2748
    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    const-wide/16 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_1

    .line 2749
    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson2/JSONWriter;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    goto :goto_1

    .line 2751
    :cond_1
    sget-wide v6, Lcom/alibaba/fastjson2/JSONFactory;->defaultWriterFeatures:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v10, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v6, v10

    cmp-long v1, v6, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v9

    move-object v4, p0

    .line 2756
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2759
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_3

    .line 2760
    :try_start_2
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 2740
    :try_start_3
    invoke-virtual {v9}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 2761
    :goto_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON#toJSONString cannot serialize \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson2/JSONWriter$Context;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    .line 2775
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p1

    .line 2778
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    .line 2780
    :try_start_1
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 2782
    :cond_1
    iput-object p0, v7, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2783
    sget-object v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v0, v7, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2785
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2786
    invoke-virtual {p1, v0, v0}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p0

    .line 2787
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2789
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    .line 2790
    :try_start_2
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v7, :cond_3

    .line 2778
    :try_start_3
    invoke-virtual {v7}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2791
    :goto_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON#toJSONString cannot serialize \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 9

    .line 2831
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 2832
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p2

    if-nez p0, :cond_0

    .line 2834
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 2836
    :cond_0
    iput-object p0, p2, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2837
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v1, p2, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    if-eqz p1, :cond_1

    .line 2839
    iget-object v1, p2, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/alibaba/fastjson2/filter/Filter;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 2842
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2843
    invoke-virtual {v0, p1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p0

    .line 2844
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2846
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 2847
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 2832
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 8

    .line 2890
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p1, :cond_0

    .line 2891
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2892
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    .line 2895
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_1

    .line 2897
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 2899
    :cond_1
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2900
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2901
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2902
    invoke-virtual {v0, p2, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 2903
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2905
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 2906
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 2895
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 8

    .line 2920
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p1, :cond_0

    .line 2921
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 2922
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 2924
    array-length p1, p2

    if-eqz p1, :cond_1

    .line 2925
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 2928
    :cond_1
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_2

    .line 2930
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 2932
    :cond_2
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2933
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2934
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2935
    invoke-virtual {v0, p2, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 2936
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2938
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 2939
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_4

    .line 2928
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 9

    .line 2804
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 2805
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_0

    .line 2807
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_1

    .line 2809
    :cond_0
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2810
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2811
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2813
    iget-wide v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2814
    :goto_0
    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v0, v1, v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    .line 2815
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2817
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 2818
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 2805
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)Ljava/lang/String;
    .locals 8

    .line 2860
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p1, :cond_0

    .line 2861
    array-length p2, p1

    if-eqz p2, :cond_0

    .line 2862
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 2865
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    if-nez p0, :cond_1

    .line 2867
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 2869
    :cond_1
    iput-object p0, p1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 2870
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p2, p1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2872
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2873
    invoke-virtual {v0, p2, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 2874
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 2876
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 2877
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_3

    .line 2865
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
.end method

.method public static toJavaObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3536
    invoke-static {p1, p0}, Lcom/alibaba/fastjson2/JSON;->to(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static writeTo(Ljava/io/OutputStream;Ljava/lang/Object;)I
    .locals 9

    .line 3132
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 3134
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 3136
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3138
    :cond_0
    iput-object p1, v1, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3139
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v2, v1, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3142
    invoke-virtual {v0, v2, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v1

    move-object v4, p1

    .line 3143
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3146
    :goto_0
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 3147
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    .line 3134
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 3148
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs writeTo(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 8

    .line 3233
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p4}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p2, :cond_0

    .line 3234
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_0

    .line 3235
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 3237
    array-length p2, p3

    if-eqz p2, :cond_1

    .line 3238
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 3241
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    .line 3243
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3245
    :cond_2
    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3246
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p3, p2, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 3249
    invoke-virtual {v0, p3, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    .line 3250
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3253
    :goto_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 3254
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return p0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_4

    .line 3241
    :try_start_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 3255
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "JSON#writeTo cannot serialize \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' to \'OutputStream\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static varargs writeTo(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 9

    .line 3162
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    .line 3163
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 3165
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3167
    :cond_0
    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3168
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object v1, p2, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 3171
    invoke-virtual {v0, v1, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move-object v4, p1

    .line 3172
    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3175
    :goto_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 3176
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_2

    .line 3163
    :try_start_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 3177
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs writeTo(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson2/filter/Filter;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)I
    .locals 8

    .line 3192
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Context;

    sget-object v1, Lcom/alibaba/fastjson2/JSONFactory;->defaultObjectWriterProvider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-direct {v0, v1, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;[Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    if-eqz p2, :cond_0

    .line 3193
    array-length p3, p2

    if-eqz p3, :cond_0

    .line 3194
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->configFilter([Lcom/alibaba/fastjson2/filter/Filter;)V

    .line 3197
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 3199
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    goto :goto_0

    .line 3201
    :cond_1
    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONWriter;->rootObject:Ljava/lang/Object;

    .line 3202
    sget-object p3, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iput-object p3, p2, Lcom/alibaba/fastjson2/JSONWriter;->path:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 3204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 3205
    invoke-virtual {v0, p3, p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    .line 3206
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 3209
    :goto_0
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/OutputStream;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 3210
    :try_start_2
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return p0

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_3

    .line 3197
    :try_start_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 3211
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "JSON#writeTo cannot serialize \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' to \'OutputStream\'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
