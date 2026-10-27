.class public Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;
.super Ljava/lang/Object;
.source "ObjectWriterBaseModule.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriterAnnotationProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->this$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyFeatures(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/Enum;)V
    .locals 7

    .line 657
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    aget-object v3, p2, v2

    .line 658
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "WriteMapNullValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "WriteClassName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "WriteNullBooleanAsFalse"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "WriteNonStringValueAsString"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "WriteNullListAsEmpty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "NotWriteRootClassName"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_6
    const-string v5, "WriteNullStringAsEmpty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string v5, "BrowserCompatible"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_8
    const-string v5, "WriteEnumUsingToString"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_9
    const-string v5, "WriteBigDecimalAsPlain"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_a
    const-string v5, "UseISO8601DateFormat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_b
    const-string v5, "IgnoreErrorGetter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_1

    :cond_b
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_c
    const-string v5, "WriteNullNumberAsZero"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_1

    :cond_c
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 663
    :pswitch_0
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto/16 :goto_2

    .line 681
    :pswitch_1
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 675
    :pswitch_2
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 684
    :pswitch_3
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 666
    :pswitch_4
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 690
    :pswitch_5
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 669
    :pswitch_6
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 678
    :pswitch_7
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 687
    :pswitch_8
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 696
    :pswitch_9
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_a
    const-string v3, "iso8601"

    .line 660
    iput-object v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    goto :goto_2

    .line 693
    :pswitch_b
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 672
    :pswitch_c
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x737c2857 -> :sswitch_c
        -0x6a158c1f -> :sswitch_b
        -0x1f6b42be -> :sswitch_a
        -0x14cc04b8 -> :sswitch_9
        -0x13fc7e70 -> :sswitch_8
        -0xca1b004 -> :sswitch_7
        -0x61b295c -> :sswitch_6
        -0x3c0c42b -> :sswitch_5
        0x3c26e3f7 -> :sswitch_4
        0x5a8cc575 -> :sswitch_3
        0x6bc5c64f -> :sswitch_2
        0x700b1b24 -> :sswitch_1
        0x7a300f8d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$getBeanInfo$0(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 249
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJSONType1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method static synthetic lambda$processJacksonJsonIgnoreProperties$7(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 561
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 563
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "value"

    .line 564
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 565
    check-cast p0, [Ljava/lang/String;

    .line 566
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 567
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$processJacksonJsonProperty$6(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 5

    .line 534
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 536
    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, -0x1

    .line 537
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x54d84a9c

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x6ac9171

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_1
    const-string v1, "access"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p2

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    .line 545
    :cond_3
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p2, "WRITE_ONLY"

    .line 546
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    goto :goto_2

    .line 539
    :cond_4
    check-cast p0, Ljava/lang/String;

    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 541
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic lambda$processJacksonJsonPropertyOrder$4(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 482
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 484
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "value"

    .line 485
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 486
    check-cast p0, [Ljava/lang/String;

    .line 487
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 488
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$processJacksonJsonSubTypes$1(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 3

    .line 396
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 398
    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "value"

    .line 399
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 400
    check-cast p0, [Ljava/lang/annotation/Annotation;

    .line 401
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 402
    array-length p2, p0

    new-array p2, p2, [Ljava/lang/Class;

    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 403
    array-length p2, p0

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    .line 404
    :goto_0
    array-length p2, p0

    if-ge v1, p2, :cond_0

    .line 405
    aget-object p2, p0, v1

    .line 406
    invoke-static {p1, v1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonSubTypesType(Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/lang/annotation/Annotation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$processJacksonJsonTypeInfo$3(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 463
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 465
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "property"

    .line 466
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 467
    check-cast p0, Ljava/lang/String;

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 469
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 470
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private loadFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V
    .locals 8

    .line 874
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 876
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    .line 879
    :cond_0
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->defaultValue()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 881
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    .line 884
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->loadJsonFieldFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V

    .line 886
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 888
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    .line 891
    :cond_2
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-nez v0, :cond_3

    .line 892
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serialize()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 895
    :cond_3
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 896
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x2000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 899
    :cond_4
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 900
    iget-wide v4, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-wide v6, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long v3, v4, v6

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 903
    :cond_5
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    .line 905
    iput v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 908
    :cond_6
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->value()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 909
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x1000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 912
    :cond_7
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->jsonDirect()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 913
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x4000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 916
    :cond_8
    invoke-interface {p2}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object p2

    .line 917
    const-class v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 918
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    :cond_9
    return-void
.end method

.method private loadJsonFieldFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V
    .locals 2

    .line 929
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 930
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x54

    .line 932
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "\'T\'"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "T"

    .line 933
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 936
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    iput-object p2, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private processAnnotations(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V
    .locals 9

    .line 793
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_13

    aget-object v3, p2, v2

    .line 794
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 795
    const-class v5, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 796
    invoke-static {v5}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 797
    invoke-direct {p0, p1, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->loadFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    goto/16 :goto_2

    .line 801
    :cond_0
    const-class v5, Lcom/alibaba/fastjson2/annotation/JSONCompiler;

    if-ne v4, v5, :cond_1

    .line 802
    move-object v5, v3

    check-cast v5, Lcom/alibaba/fastjson2/annotation/JSONCompiler;

    .line 803
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONCompiler;->value()Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->LAMBDA:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    if-ne v5, v6, :cond_1

    .line 804
    iget-wide v5, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v7, 0x40000000000000L

    or-long/2addr v5, v7

    iput-wide v5, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 808
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->isUseJacksonAnnotation()Z

    move-result v5

    .line 809
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 810
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "com.fasterxml.jackson.annotation.JsonRawValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "java.beans.Transient"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "com.fasterxml.jackson.annotation.JsonProperty"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "com.fasterxml.jackson.annotation.JsonAnyGetter"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "com.fasterxml.jackson.annotation.JsonValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonAnyGetter"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.databind.annotation.JsonSerialize"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_8
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonRawValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_9
    const-string v7, "com.fasterxml.jackson.annotation.JsonIgnore"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_a
    const-string v7, "com.fasterxml.jackson.annotation.JsonFormat"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_b
    const-string v7, "com.fasterxml.jackson.databind.annotation.JsonSerialize"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_c
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonProperty"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_1

    :cond_e
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_d
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonIgnore"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_1

    :cond_f
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_e
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonFormat"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_1

    :cond_10
    move v6, v8

    goto :goto_1

    :sswitch_f
    const-string v7, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonValue"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_1

    :cond_11
    move v6, v1

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 824
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    .line 827
    :pswitch_1
    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 828
    iput-boolean v8, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->isTransient:Z

    goto :goto_2

    :pswitch_2
    if-eqz v5, :cond_12

    .line 820
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v5, 0x2000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_3
    if-eqz v5, :cond_12

    .line 852
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v5, 0x4000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    :pswitch_4
    if-eqz v5, :cond_12

    .line 858
    invoke-direct {p0, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonSerialize(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    :pswitch_5
    if-eqz v5, :cond_12

    .line 833
    invoke-direct {p0, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonProperty(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    :pswitch_6
    if-eqz v5, :cond_12

    .line 814
    invoke-static {p1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonIgnore(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    :pswitch_7
    if-eqz v5, :cond_12

    .line 840
    invoke-static {p1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    :pswitch_8
    if-eqz v5, :cond_12

    .line 846
    iget-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v5, 0x1000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :cond_12
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_13
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f14c25d -> :sswitch_f
        -0x7e092dfb -> :sswitch_e
        -0x795d2820 -> :sswitch_d
        -0x77e9939d -> :sswitch_c
        -0x3c3126e8 -> :sswitch_b
        -0x30a2e30a -> :sswitch_a
        -0x2bf6dd2f -> :sswitch_9
        -0x1f3aaf49 -> :sswitch_8
        -0x9d19059 -> :sswitch_7
        -0x9c78eb7 -> :sswitch_6
        -0x8f8af6e -> :sswitch_5
        0x92374b8 -> :sswitch_4
        0x1515bf14 -> :sswitch_3
        0x38fd2533 -> :sswitch_2
        0x3ed64f9e -> :sswitch_1
        0x6dc4a368 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 577
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 578
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$vly3JA6nVbBtU3rWp-zZXt5OeW4;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$vly3JA6nVbBtU3rWp-zZXt5OeW4;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processJacksonJsonIgnoreProperties(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 559
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 560
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$7EZtZJiMmUowurRXIWJP8tG8kzI;

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$7EZtZJiMmUowurRXIWJP8tG8kzI;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processJacksonJsonProperty(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 532
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 533
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$crt7TPHHYOvfcSeyakflOf40U0I;

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$crt7TPHHYOvfcSeyakflOf40U0I;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processJacksonJsonPropertyOrder(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 481
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$4Ymo0Qu7jgfWbeetjAfTsObdehY;

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$4Ymo0Qu7jgfWbeetjAfTsObdehY;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processJacksonJsonSerialize(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 417
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$OylkIlR62lrXGywdkt5IHyOas0o;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processJacksonJsonSerialize(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 498
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 499
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$3b5cjYZWc4-Uxicw0IzlH5c1duQ;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$3b5cjYZWc4-Uxicw0IzlH5c1duQ;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processJacksonJsonSubTypes(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 394
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 395
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$e33jhTudea4t1H2wwWUjH1ofX08;

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$e33jhTudea4t1H2wwWUjH1ofX08;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processJacksonJsonTypeInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 461
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$W1L4jW4WcUjsH2SLe95Z65C04CY;

    invoke-direct {v1, p2, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$W1L4jW4WcUjsH2SLe95Z65C04CY;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private processUsing(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    .line 446
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.fasterxml.jackson.databind.JsonSerializer$None"

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 449
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "com.fasterxml.jackson.databind.ser.std.ToStringSerializer"

    .line 454
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 455
    const-class p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 61
    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    if-eqz v4, :cond_1

    const-class v5, Ljava/lang/Enum;

    if-eq v4, v5, :cond_1

    .line 62
    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 64
    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    if-eqz v4, :cond_1

    move v4, v3

    .line 65
    :goto_0
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 66
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    aget-object v5, v5, v4

    if-ne v5, v2, :cond_0

    .line 67
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 68
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    iput-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    :cond_1
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v4

    const/4 v5, 0x0

    move v7, v3

    move-object v6, v5

    .line 82
    :goto_2
    array-length v8, v4

    const-string v9, "com.alibaba.fastjson.annotation.JSONType"

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v7, v8, :cond_10

    .line 83
    aget-object v8, v4, v7

    .line 84
    invoke-interface {v8}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v12

    if-nez v5, :cond_2

    .line 86
    const-class v5, Lcom/alibaba/fastjson2/annotation/JSONType;

    invoke-static {v8, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/annotation/JSONType;

    :cond_2
    if-ne v5, v8, :cond_3

    goto/16 :goto_5

    .line 92
    :cond_3
    const-class v13, Lcom/alibaba/fastjson2/annotation/JSONCompiler;

    if-ne v12, v13, :cond_4

    .line 93
    move-object v13, v8

    check-cast v13, Lcom/alibaba/fastjson2/annotation/JSONCompiler;

    .line 94
    invoke-interface {v13}, Lcom/alibaba/fastjson2/annotation/JSONCompiler;->value()Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    move-result-object v13

    sget-object v14, Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;->LAMBDA:Lcom/alibaba/fastjson2/annotation/JSONCompiler$CompilerOption;

    if-ne v13, v14, :cond_4

    .line 95
    iget-wide v13, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    const-wide/high16 v15, 0x40000000000000L

    or-long/2addr v13, v15

    iput-wide v13, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 99
    :cond_4
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->isUseJacksonAnnotation()Z

    move-result v13

    .line 100
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    const/4 v14, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_3
    move v10, v14

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    const/16 v10, 0x9

    goto/16 :goto_4

    :sswitch_1
    const-string v9, "kotlin.Metadata"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    const/16 v10, 0x8

    goto/16 :goto_4

    :sswitch_2
    const-string v9, "com.fasterxml.jackson.annotation.JsonIgnoreProperties"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_3

    :cond_7
    const/4 v10, 0x7

    goto :goto_4

    :sswitch_3
    const-string v9, "com.fasterxml.jackson.annotation.JsonTypeName"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :cond_8
    const/4 v10, 0x6

    goto :goto_4

    :sswitch_4
    const-string v9, "com.fasterxml.jackson.annotation.JsonTypeInfo"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_3

    :cond_9
    const/4 v10, 0x5

    goto :goto_4

    :sswitch_5
    const-string v9, "com.fasterxml.jackson.annotation.JsonPropertyOrder"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_3

    :cond_a
    const/4 v10, 0x4

    goto :goto_4

    :sswitch_6
    const-string v9, "com.fasterxml.jackson.annotation.JsonSubTypes"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_3

    :cond_b
    const/4 v10, 0x3

    goto :goto_4

    :sswitch_7
    const-string v9, "com.fasterxml.jackson.annotation.JsonFormat"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_3

    :sswitch_8
    const-string v9, "com.fasterxml.jackson.databind.annotation.JsonSerialize"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_3

    :cond_c
    move v10, v11

    goto :goto_4

    :sswitch_9
    const-string v9, "com.fasterxml.jackson.annotation.JsonInclude"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_3

    :cond_d
    move v10, v3

    :cond_e
    :goto_4
    packed-switch v10, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    move-object v6, v8

    goto :goto_5

    .line 148
    :pswitch_1
    iput-boolean v11, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    .line 149
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/util/KotlinUtils;->getConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    goto :goto_5

    :pswitch_2
    if-eqz v13, :cond_f

    .line 106
    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonIgnoreProperties(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    :pswitch_3
    if-eqz v13, :cond_f

    .line 139
    invoke-static {v1, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonTypeName(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    :pswitch_4
    if-eqz v13, :cond_f

    .line 126
    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonTypeInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    :pswitch_5
    if-eqz v13, :cond_f

    .line 111
    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonPropertyOrder(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    :pswitch_6
    if-eqz v13, :cond_f

    .line 144
    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonSubTypes(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    :pswitch_7
    if-eqz v13, :cond_f

    .line 116
    invoke-static {v1, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonFormat(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    :pswitch_8
    if-eqz v13, :cond_f

    .line 131
    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonSerialize(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    .line 132
    iget-object v8, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    if-eqz v8, :cond_f

    const-class v8, Ljava/lang/Enum;

    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 133
    iput-boolean v11, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    goto :goto_5

    :pswitch_9
    if-eqz v13, :cond_f

    .line 121
    invoke-static {v1, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonInclude(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    :cond_f
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_10
    if-nez v5, :cond_13

    .line 157
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->this$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;

    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v4, v4, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    if-eqz v4, :cond_13

    .line 160
    iput-boolean v11, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->mixIn:Z

    .line 162
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v4

    move v7, v3

    .line 163
    :goto_6
    array-length v8, v4

    if-ge v7, v8, :cond_13

    .line 164
    aget-object v5, v4, v7

    .line 165
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    .line 166
    const-class v12, Lcom/alibaba/fastjson2/annotation/JSONType;

    invoke-static {v5, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson2/annotation/JSONType;

    if-ne v12, v5, :cond_11

    goto :goto_7

    .line 171
    :cond_11
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v6, v5

    :cond_12
    :goto_7
    add-int/lit8 v7, v7, 0x1

    move-object v5, v12

    goto :goto_6

    :cond_13
    if-eqz v5, :cond_20

    .line 180
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object v4

    .line 181
    array-length v6, v4

    if-eqz v6, :cond_14

    .line 182
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    .line 185
    :cond_14
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 187
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 190
    :cond_15
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    .line 192
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 195
    :cond_16
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializeFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    move-result-object v4

    array-length v6, v4

    move v7, v3

    :goto_8
    if-ge v7, v6, :cond_17

    aget-object v8, v4, v7

    .line 196
    iget-wide v12, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    iget-wide v8, v8, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v8, v12

    iput-wide v8, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 200
    :cond_17
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->naming()Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->name()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    .line 202
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v4

    .line 203
    array-length v6, v4

    if-lez v6, :cond_18

    .line 204
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    .line 207
    :cond_18
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v4

    .line 208
    array-length v6, v4

    if-lez v6, :cond_19

    .line 209
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    .line 212
    :cond_19
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v4

    .line 213
    array-length v6, v4

    if-lez v6, :cond_1a

    .line 214
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    .line 217
    :cond_1a
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializer()Ljava/lang/Class;

    move-result-object v4

    .line 218
    const-class v6, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 219
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    .line 222
    :cond_1b
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->serializeFilters()[Ljava/lang/Class;

    move-result-object v4

    .line 223
    array-length v6, v4

    if-eqz v6, :cond_1c

    .line 224
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializeFilters:[Ljava/lang/Class;

    .line 227
    :cond_1c
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->format()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 229
    iput-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    .line 232
    :cond_1d
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->locale()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "_"

    .line 234
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 235
    array-length v6, v4

    if-ne v6, v10, :cond_1e

    .line 236
    new-instance v6, Ljava/util/Locale;

    aget-object v7, v4, v3

    aget-object v4, v4, v11

    invoke-direct {v6, v7, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    .line 240
    :cond_1e
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->alphabetic()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 241
    iput-boolean v3, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    .line 244
    :cond_1f
    invoke-interface {v5}, Lcom/alibaba/fastjson2/annotation/JSONType;->writeEnumAsJavaBean()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 245
    iput-boolean v11, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    goto :goto_9

    :cond_20
    if-eqz v6, :cond_21

    .line 249
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$j682QEbeGyhS1qvCS_1pFa_Z9sg;

    invoke-direct {v5, v1, v6}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$WriterAnnotationProcessor$j682QEbeGyhS1qvCS_1pFa_Z9sg;-><init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 252
    :cond_21
    :goto_9
    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    array-length v4, v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    if-eqz v4, :cond_22

    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    .line 253
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_24

    .line 254
    :cond_22
    iget-object v4, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    array-length v5, v4

    :goto_a
    if-ge v3, v5, :cond_24

    aget-object v6, v4, v3

    if-ne v6, v2, :cond_23

    .line 256
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    goto :goto_b

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_24
    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x478f3077 -> :sswitch_9
        -0x3c3126e8 -> :sswitch_8
        -0x30a2e30a -> :sswitch_7
        -0x2c448ca8 -> :sswitch_6
        -0x1ba6db66 -> :sswitch_5
        0x27f31c47 -> :sswitch_4
        0x27f53224 -> :sswitch_3
        0x4adbfae4 -> :sswitch_2
        0x66e0499c -> :sswitch_1
        0x7dec7c16 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 266
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->this$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;

    iget-object v5, v5, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v5, v5, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    if-eqz v5, :cond_0

    if-eq v5, v3, :cond_0

    .line 271
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_0

    .line 276
    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 281
    :cond_0
    iget-object v3, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->this$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;

    iget-object v3, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v3, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 283
    iput-boolean v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    .line 286
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    .line 287
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    iput-boolean v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 293
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 294
    array-length v6, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    const-wide/high16 v9, 0x4000000000000L

    if-ge v8, v6, :cond_17

    aget-object v11, v3, v8

    .line 295
    invoke-interface {v11}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v12

    if-nez v4, :cond_3

    .line 297
    const-class v4, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v11, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-ne v4, v11, :cond_3

    goto/16 :goto_3

    .line 303
    :cond_3
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 304
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->isUseJacksonAnnotation()Z

    move-result v13

    .line 305
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    const/4 v14, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v15, "com.fasterxml.jackson.annotation.JsonRawValue"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v14, 0x11

    goto/16 :goto_2

    :sswitch_1
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonInclude"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v14, 0x10

    goto/16 :goto_2

    :sswitch_2
    const-string v15, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v14, 0xf

    goto/16 :goto_2

    :sswitch_3
    const-string v15, "com.fasterxml.jackson.annotation.JsonProperty"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v14, 0xe

    goto/16 :goto_2

    :sswitch_4
    const-string v15, "com.fasterxml.jackson.annotation.JsonAnyGetter"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v14, 0xd

    goto/16 :goto_2

    :sswitch_5
    const-string v15, "com.fasterxml.jackson.annotation.JsonValue"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v14, 0xc

    goto/16 :goto_2

    :sswitch_6
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonAnyGetter"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v14, 0xb

    goto/16 :goto_2

    :sswitch_7
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.databind.annotation.JsonSerialize"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v14, 0xa

    goto/16 :goto_2

    :sswitch_8
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonRawValue"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v14, 0x9

    goto/16 :goto_2

    :sswitch_9
    const-string v15, "com.fasterxml.jackson.annotation.JsonIgnore"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v14, 0x8

    goto/16 :goto_2

    :sswitch_a
    const-string v15, "com.fasterxml.jackson.annotation.JsonFormat"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_2

    :cond_e
    const/4 v14, 0x7

    goto :goto_2

    :sswitch_b
    const-string v15, "com.fasterxml.jackson.databind.annotation.JsonSerialize"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_2

    :cond_f
    const/4 v14, 0x6

    goto :goto_2

    :sswitch_c
    const-string v15, "com.fasterxml.jackson.annotation.JsonInclude"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_2

    :cond_10
    const/4 v14, 0x5

    goto :goto_2

    :sswitch_d
    const-string v15, "com.google.gson.annotations.SerializedName"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_2

    :cond_11
    const/4 v14, 0x4

    goto :goto_2

    :sswitch_e
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonProperty"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_2

    :cond_12
    const/4 v14, 0x3

    goto :goto_2

    :sswitch_f
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonIgnore"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    goto :goto_2

    :cond_13
    const/4 v14, 0x2

    goto :goto_2

    :sswitch_10
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonFormat"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    goto :goto_2

    :cond_14
    move v14, v5

    goto :goto_2

    :sswitch_11
    const-string v15, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonValue"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    goto :goto_2

    :cond_15
    move v14, v7

    :goto_2
    packed-switch v14, :pswitch_data_0

    goto :goto_3

    .line 331
    :pswitch_0
    invoke-direct {v0, v2, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJSONField1x(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_1
    if-eqz v13, :cond_16

    .line 315
    iget-wide v9, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v11, 0x2000000000000L

    or-long/2addr v9, v11

    iput-wide v9, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_3

    :pswitch_2
    if-eqz v13, :cond_16

    .line 327
    iget-wide v11, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    or-long/2addr v9, v11

    iput-wide v9, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_3

    :pswitch_3
    if-eqz v13, :cond_16

    .line 354
    invoke-direct {v0, v2, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonSerialize(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_4
    if-eqz v13, :cond_16

    .line 348
    invoke-static {v1, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonInclude(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    .line 358
    :pswitch_5
    invoke-static {v2, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->processGsonSerializedName(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_6
    if-eqz v13, :cond_16

    .line 336
    invoke-direct {v0, v2, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processJacksonJsonProperty(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_7
    if-eqz v13, :cond_16

    .line 309
    invoke-static {v2, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonIgnore(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_8
    if-eqz v13, :cond_16

    .line 342
    invoke-static {v2, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJacksonJsonFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :pswitch_9
    if-eqz v13, :cond_16

    .line 321
    iget-wide v9, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v11, 0x1000000000000L

    or-long/2addr v9, v11

    iput-wide v9, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :cond_16
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_17
    if-nez v4, :cond_18

    return-void

    .line 369
    :cond_18
    invoke-direct {v0, v2, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->loadFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Lcom/alibaba/fastjson2/annotation/JSONField;)V

    .line 371
    invoke-interface {v4}, Lcom/alibaba/fastjson2/annotation/JSONField;->writeUsing()Ljava/lang/Class;

    move-result-object v1

    .line 372
    const-class v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 373
    iput-object v1, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 376
    :cond_19
    invoke-interface {v4}, Lcom/alibaba/fastjson2/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v1

    .line 377
    const-class v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 378
    iput-object v1, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    .line 381
    :cond_1a
    invoke-interface {v4}, Lcom/alibaba/fastjson2/annotation/JSONField;->jsonDirect()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 382
    iget-wide v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    or-long/2addr v3, v9

    iput-wide v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 385
    :cond_1b
    iget-wide v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v5, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    const-class v1, Ljava/lang/String;

    .line 386
    invoke-virtual/range {p4 .. p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    if-nez v1, :cond_1c

    .line 389
    const-class v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    iput-object v1, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    :cond_1c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f14c25d -> :sswitch_11
        -0x7e092dfb -> :sswitch_10
        -0x795d2820 -> :sswitch_f
        -0x77e9939d -> :sswitch_e
        -0x5de7f44c -> :sswitch_d
        -0x478f3077 -> :sswitch_c
        -0x3c3126e8 -> :sswitch_b
        -0x30a2e30a -> :sswitch_a
        -0x2bf6dd2f -> :sswitch_9
        -0x1f3aaf49 -> :sswitch_8
        -0x9d19059 -> :sswitch_7
        -0x9c78eb7 -> :sswitch_6
        -0x8f8af6e -> :sswitch_5
        0x92374b8 -> :sswitch_4
        0x1515bf14 -> :sswitch_3
        0x3ed64f9e -> :sswitch_2
        0x590dbc5a -> :sswitch_1
        0x6dc4a368 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 7

    .line 706
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->this$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;

    iget-object v0, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v0, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 707
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getTargetSql"

    .line 709
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 711
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.baomidou.mybatisplus."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    iget-wide v2, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v2, v4

    iput-wide v2, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eq v0, p3, :cond_1

    .line 720
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 725
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->this$0:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;

    iget-object v0, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v0, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 731
    iput-boolean v1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    .line 734
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->CLASS_TRANSIENT:Ljava/lang/Class;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->CLASS_TRANSIENT:Ljava/lang/Class;

    invoke-virtual {p4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 735
    iput-boolean v1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    :cond_3
    const/4 v0, 0x0

    if-eqz p3, :cond_6

    .line 739
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 740
    invoke-static {v1, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 741
    iget-boolean v4, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-eqz v3, :cond_4

    .line 743
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 744
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 745
    iget-boolean v6, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-eq v4, v6, :cond_4

    .line 746
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 747
    invoke-virtual {v3, p4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 749
    iput-boolean v4, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 753
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 754
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 755
    invoke-static {v6, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 757
    invoke-virtual {p0, p1, p2, v1, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 762
    :cond_6
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 763
    invoke-direct {p0, p2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processAnnotations(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    .line 765
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isRecord(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 766
    invoke-static {p3, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 768
    iget-wide v3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v5, 0x10000000000000L

    or-long/2addr v3, v5

    iput-wide v3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 769
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 773
    :cond_7
    iget-boolean p3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->kotlin:Z

    if-eqz p3, :cond_9

    iget-object p3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p3, :cond_9

    iget-object p3, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    if-eqz p3, :cond_9

    .line 777
    invoke-static {p4, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 778
    :goto_2
    iget-object p4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    array-length p4, p4

    if-ge v0, p4, :cond_9

    .line 779
    iget-object p4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    aget-object p4, p4, v0

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    .line 780
    iget-object p4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 781
    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p4

    .line 782
    array-length v1, p4

    if-ge v0, v1, :cond_8

    .line 783
    aget-object p1, p4, v0

    .line 784
    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processAnnotations(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method

.method public synthetic lambda$processJSONField1x$8$ObjectWriterBaseModule$WriterAnnotationProcessor(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 579
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 581
    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, -0x1

    .line 582
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "label"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "jsonDirect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_2
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "serialize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "defaultValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "serialzeFeatures"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "unwrapped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "ordinal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v1, "format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "serializeUsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    move v1, p3

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 641
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 642
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 643
    iget-wide v0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x4000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 634
    :pswitch_1
    check-cast p1, Ljava/lang/Class;

    .line 635
    const-class p3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 636
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    goto :goto_2

    .line 629
    :pswitch_2
    check-cast p1, [Ljava/lang/Enum;

    .line 630
    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->applyFeatures(Lcom/alibaba/fastjson2/codec/FieldInfo;[Ljava/lang/Enum;)V

    goto :goto_2

    .line 623
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 624
    iget-wide v0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    const-wide/high16 v2, 0x2000000000000L

    or-long/2addr v0, v2

    iput-wide v0, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 616
    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 618
    iput-boolean v3, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    goto :goto_2

    .line 609
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 611
    iput p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    goto :goto_2

    .line 602
    :pswitch_6
    check-cast p1, Ljava/lang/String;

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 604
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->defaultValue:Ljava/lang/String;

    goto :goto_2

    .line 595
    :pswitch_7
    check-cast p1, Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 597
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    goto :goto_2

    .line 591
    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->loadJsonFieldFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 584
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 586
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51c06e7c -> :sswitch_9
        -0x4ba00809 -> :sswitch_8
        -0x47f1458f -> :sswitch_7
        -0x3ade7834 -> :sswitch_6
        -0x3814e684 -> :sswitch_5
        -0x27497450 -> :sswitch_4
        -0x222e9920 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0xbd26f1 -> :sswitch_1
        0x61f7ef4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$processJacksonJsonSerialize$2$ObjectWriterBaseModule$WriterAnnotationProcessor(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 5

    .line 419
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 421
    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, -0x1

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6a69c84

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v1, 0x1d513165

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "keyUsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "using"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p3

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    .line 431
    :cond_3
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processUsing(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 433
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    goto :goto_2

    .line 424
    :cond_4
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processUsing(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 426
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_2
    return-void
.end method

.method public synthetic lambda$processJacksonJsonSerialize$5$ObjectWriterBaseModule$WriterAnnotationProcessor(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 500
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 502
    invoke-virtual {p3, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p3, -0x1

    .line 503
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x6a69c84

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    const v1, 0x1d513165

    if-eq v2, v1, :cond_1

    const v1, 0x793d5993

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "valueUsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v4

    goto :goto_1

    :cond_1
    const-string v1, "keyUsing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "using"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, p3

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    goto :goto_2

    .line 517
    :cond_4
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processUsing(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 519
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    goto :goto_2

    .line 511
    :cond_5
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processUsing(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 513
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->keyUsing:Ljava/lang/Class;

    goto :goto_2

    .line 505
    :cond_6
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->processUsing(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 507
    iput-object p1, p2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    :goto_2
    return-void
.end method
