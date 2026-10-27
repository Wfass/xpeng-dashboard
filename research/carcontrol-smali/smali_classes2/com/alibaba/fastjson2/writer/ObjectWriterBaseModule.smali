.class public Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;
.super Ljava/lang/Object;
.source "ObjectWriterBaseModule.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectWriterModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;,
        Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;
    }
.end annotation


# static fields
.field static STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;


# instance fields
.field final annotationProcessor:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

.field final provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 42
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    return-void
.end method

.method private createEnumWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 9

    .line 1466
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1467
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1468
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p1

    .line 1473
    :goto_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-static {v4, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;)Ljava/lang/reflect/Member;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1475
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    iget-object v1, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1476
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;)Ljava/lang/reflect/Member;

    move-result-object v1

    .line 1477
    instance-of v2, v1, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 1479
    :try_start_0
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1482
    :cond_1
    instance-of v2, v1, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 1484
    :try_start_1
    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_2
    :goto_1
    move-object v5, p1

    .line 1490
    new-instance p1, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 1492
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 1493
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 1494
    iget-object v2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    aget-object v3, v1, v0

    invoke-virtual {v2, p1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1497
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    invoke-virtual {v0, p1, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 1498
    iget-boolean p1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1502
    :cond_4
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    .line 1503
    new-instance p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    return-object p1
.end method

.method public static synthetic lambda$-VEhxZUMIRQ8HIS-6mm4R1I1TOM(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$3vQkJptFEcsRd_RhefVuf_XhNoI(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$KicQRXY4RpfyswQIOJqNVvMZaUc(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$MuwDFrbA3G-IcKVjEbH-HfGjxvU(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$emqC9MiTQNQ03Q0lpi8yB3JYZ6g(Ljava/lang/StackTraceElement;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getObjectWriter$0(Ljava/lang/Object;)[B
    .locals 0

    .line 1039
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$hDeA9k0FRWEmMTPgv8TVjW7S1Ro(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$jeQ3N4wMB_By_kpTeGMIRA_kYgo(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$jpcLOQ8cQshoXiWHXAifvXiiquQ(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wdH1btFflwxvDLvv3b73AYFat9U(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    return-object v0
.end method

.method getExternalObjectWriter(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 944
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "org.joda.time.LocalDateTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "java.sql.Timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "org.joda.time.DateTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "org.joda.time.chrono.ISOChronology"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "java.sql.Time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "org.joda.time.chrono.GregorianChronology"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "org.joda.time.LocalDate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    packed-switch v1, :pswitch_data_0

    .line 960
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/JdbcSupport;->isClob(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 961
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createClobWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    :cond_7
    return-object p1

    .line 956
    :pswitch_0
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/JodaSupport;->createLocalDateTimeWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 948
    :pswitch_1
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTimestampWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 958
    :pswitch_2
    new-instance p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;

    new-instance v0, Lcom/alibaba/fastjson2/util/JodaSupport$DateTime2ZDT;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/util/JodaSupport$DateTime2ZDT;-><init>()V

    invoke-direct {p2, p1, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/function/Function;)V

    return-object p2

    .line 952
    :pswitch_3
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/JodaSupport;->createISOChronologyWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 946
    :pswitch_4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTimeWriter(Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 950
    :pswitch_5
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/JodaSupport;->createGregorianChronologyWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 954
    :pswitch_6
    invoke-static {p2, p1}, Lcom/alibaba/fastjson2/util/JodaSupport;->createLocalDateWriter(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7295bf66 -> :sswitch_6
        -0x62d88e6e -> :sswitch_5
        0x40dd4159 -> :sswitch_4
        0x47497b71 -> :sswitch_3
        0x4872249a -> :sswitch_2
        0x4aad720a -> :sswitch_1
        0x56ec2a87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 969
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 970
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplString;

    return-object v1

    :cond_0
    if-nez p2, :cond_2

    .line 974
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 975
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    goto :goto_0

    .line 977
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object/from16 v2, p2

    .line 981
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->getExternalObjectWriter(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    .line 987
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x29

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x28

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x27

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "org.bson.types.Decimal128"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x26

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x25

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "java.net.InetSocketAddress"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x24

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0x23

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "java.text.SimpleDateFormat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0x22

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x21

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "java.net.Inet4Address"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "gnu.trove.stack.array.TByteArrayStack"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "org.apache.commons.lang3.tuple.ImmutablePair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "com.fasterxml.jackson.databind.node.ArrayNode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "java.net.Inet6Address"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "org.javamoney.moneta.spi.DefaultNumberValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "net.sf.json.JSONNull"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_15
    const-string v5, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_16
    const-string v5, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_17
    const-string v5, "org.apache.commons.lang3.tuple.Pair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_18
    const-string v5, "org.javamoney.moneta.Money"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_19
    const-string v5, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_1a
    const-string v5, "org.apache.commons.lang3.tuple.MutablePair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_1b
    const-string v5, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_1c
    const-string v5, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_1d
    const-string v5, "java.nio.HeapByteBuffer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_1e
    const-string v5, "com.carrotsearch.hppc.BitSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_1f
    const-string v5, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_20
    const-string v5, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_21
    const-string v5, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_22
    const-string v5, "org.javamoney.moneta.internal.JDKCurrencyAdapter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_1

    :cond_26
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_23
    const-string v5, "com.fasterxml.jackson.databind.node.ObjectNode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto :goto_1

    :cond_27
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_24
    const-string v5, "java.nio.DirectByteBuffer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_1

    :cond_28
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_25
    const-string v5, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_1

    :cond_29
    move v4, v6

    goto :goto_1

    :sswitch_26
    const-string v5, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_1

    :cond_2a
    move v4, v7

    goto :goto_1

    :sswitch_27
    const-string v5, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_1

    :cond_2b
    move v4, v8

    goto :goto_1

    :sswitch_28
    const-string v5, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_1

    :cond_2c
    move v4, v9

    goto :goto_1

    :sswitch_29
    const-string v5, "java.util.regex.Pattern"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_1

    :cond_2d
    move v4, v10

    :goto_1
    const/4 v3, 0x0

    packed-switch v4, :pswitch_data_0

    .line 1045
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_32

    .line 1046
    move-object v4, v1

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 1047
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1048
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1050
    const-class v11, Ljava/util/List;

    if-eq v5, v11, :cond_2e

    const-class v11, Ljava/util/ArrayList;

    if-ne v5, v11, :cond_30

    .line 1051
    :cond_2e
    array-length v1, v4

    if-ne v1, v9, :cond_2f

    aget-object v1, v4, v10

    const-class v11, Ljava/lang/String;

    if-ne v1, v11, :cond_2f

    .line 1053
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplListStr;

    return-object v1

    :cond_2f
    move-object v1, v5

    .line 1059
    :cond_30
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1060
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v1

    return-object v1

    .line 1063
    :cond_31
    const-class v5, Ljava/util/Optional;

    if-ne v2, v5, :cond_32

    .line 1064
    array-length v5, v4

    if-ne v5, v9, :cond_32

    .line 1065
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;

    aget-object v2, v4, v10

    invoke-direct {v1, v2, v3, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1070
    :cond_32
    const-class v4, Ljava/util/LinkedList;

    if-ne v1, v4, :cond_33

    .line 1071
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    return-object v1

    .line 1074
    :cond_33
    const-class v4, Ljava/util/ArrayList;

    if-eq v1, v4, :cond_8b

    const-class v4, Ljava/util/List;

    if-eq v1, v4, :cond_8b

    const-class v4, Ljava/util/List;

    .line 1076
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto/16 :goto_b

    .line 1080
    :cond_34
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1081
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    return-object v1

    .line 1084
    :cond_35
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->isExtendedMap(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_36

    return-object v3

    .line 1088
    :cond_36
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1089
    invoke-static {v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v1

    return-object v1

    .line 1092
    :cond_37
    const-class v4, Ljava/util/Map$Entry;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1093
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplMapEntry;

    return-object v1

    .line 1096
    :cond_38
    const-class v4, Ljava/nio/file/Path;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1097
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v1

    .line 1100
    :cond_39
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_3a

    .line 1101
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;

    return-object v1

    .line 1104
    :cond_3a
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v1, v2, :cond_3b

    .line 1105
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicInteger;

    return-object v1

    .line 1108
    :cond_3b
    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_3c

    .line 1109
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8;

    return-object v1

    .line 1112
    :cond_3c
    const-class v2, Ljava/lang/Short;

    if-ne v1, v2, :cond_3d

    .line 1113
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16;

    return-object v1

    .line 1116
    :cond_3d
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_3e

    .line 1117
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    return-object v1

    .line 1120
    :cond_3e
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v1, v2, :cond_3f

    .line 1121
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLong;

    return-object v1

    .line 1124
    :cond_3f
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v1, v2, :cond_40

    .line 1125
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicReference;

    return-object v1

    .line 1128
    :cond_40
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_41

    .line 1129
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloat;

    return-object v1

    .line 1132
    :cond_41
    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_42

    .line 1133
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDouble;

    return-object v1

    .line 1136
    :cond_42
    const-class v2, Ljava/math/BigInteger;

    if-ne v1, v2, :cond_43

    .line 1137
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBigInteger;

    return-object v1

    .line 1140
    :cond_43
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_44

    .line 1141
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    return-object v1

    .line 1144
    :cond_44
    const-class v2, Ljava/util/BitSet;

    if-ne v1, v2, :cond_45

    .line 1145
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBitSet;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBitSet;

    return-object v1

    .line 1148
    :cond_45
    const-class v2, Ljava/util/OptionalInt;

    if-ne v1, v2, :cond_46

    .line 1149
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalInt;

    return-object v1

    .line 1152
    :cond_46
    const-class v2, Ljava/util/OptionalLong;

    if-ne v1, v2, :cond_47

    .line 1153
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalLong;

    return-object v1

    .line 1156
    :cond_47
    const-class v2, Ljava/util/OptionalDouble;

    if-ne v1, v2, :cond_48

    .line 1157
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalDouble;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptionalDouble;

    return-object v1

    .line 1160
    :cond_48
    const-class v2, Ljava/util/Optional;

    if-ne v1, v2, :cond_49

    .line 1161
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;

    return-object v1

    .line 1164
    :cond_49
    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_4a

    .line 1165
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolean;

    return-object v1

    .line 1168
    :cond_4a
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v1, v2, :cond_4b

    .line 1169
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicBoolean;

    return-object v1

    .line 1172
    :cond_4b
    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v1, v2, :cond_4c

    .line 1173
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicIntegerArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicIntegerArray;

    return-object v1

    .line 1176
    :cond_4c
    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v1, v2, :cond_4d

    .line 1177
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplAtomicLongArray;

    return-object v1

    .line 1180
    :cond_4d
    const-class v2, Ljava/lang/Character;

    if-ne v1, v2, :cond_4e

    .line 1181
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharacter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharacter;

    return-object v1

    .line 1184
    :cond_4e
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_8a

    .line 1185
    check-cast v1, Ljava/lang/Class;

    .line 1187
    const-class v2, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1188
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    const/4 v12, 0x0

    const-class v13, Ljava/util/concurrent/TimeUnit;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    return-object v1

    .line 1191
    :cond_4f
    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 1192
    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->createEnumWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    if-eqz v2, :cond_50

    return-object v2

    .line 1198
    :cond_50
    const-class v2, Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1199
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v1

    .line 1202
    :cond_51
    const-class v2, [Z

    if-ne v1, v2, :cond_52

    .line 1203
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBoolValueArray;

    return-object v1

    .line 1206
    :cond_52
    const-class v2, [C

    if-ne v1, v2, :cond_53

    .line 1207
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCharValueArray;

    return-object v1

    .line 1210
    :cond_53
    const-class v2, Ljava/lang/StringBuffer;

    if-eq v1, v2, :cond_89

    const-class v2, Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_54

    goto/16 :goto_a

    .line 1214
    :cond_54
    const-class v2, [B

    if-ne v1, v2, :cond_55

    .line 1215
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

    return-object v1

    .line 1218
    :cond_55
    const-class v2, [S

    if-ne v1, v2, :cond_56

    .line 1219
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt16ValueArray;

    return-object v1

    .line 1222
    :cond_56
    const-class v2, [I

    if-ne v1, v2, :cond_57

    .line 1223
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32ValueArray;

    return-object v1

    .line 1226
    :cond_57
    const-class v2, [J

    if-ne v1, v2, :cond_58

    .line 1227
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64ValueArray;

    return-object v1

    .line 1230
    :cond_58
    const-class v2, [F

    if-ne v1, v2, :cond_59

    .line 1231
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplFloatValueArray;

    return-object v1

    .line 1234
    :cond_59
    const-class v2, [D

    if-ne v1, v2, :cond_5a

    .line 1235
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDoubleValueArray;

    return-object v1

    .line 1238
    :cond_5a
    const-class v2, [Ljava/lang/Byte;

    if-ne v1, v2, :cond_5b

    .line 1239
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8Array;

    return-object v1

    .line 1242
    :cond_5b
    const-class v2, [Ljava/lang/Integer;

    if-ne v1, v2, :cond_5c

    .line 1243
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32Array;

    return-object v1

    .line 1246
    :cond_5c
    const-class v2, [Ljava/lang/Long;

    if-ne v1, v2, :cond_5d

    .line 1247
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64Array;

    return-object v1

    .line 1250
    :cond_5d
    const-class v2, [Ljava/lang/String;

    if-ne v2, v1, :cond_5e

    .line 1251
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplStringArray;

    return-object v1

    .line 1254
    :cond_5e
    const-class v2, [Ljava/math/BigDecimal;

    if-ne v2, v1, :cond_5f

    .line 1255
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImpDecimalArray;

    return-object v1

    .line 1258
    :cond_5f
    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1259
    const-class v2, [Ljava/lang/Object;

    if-ne v1, v2, :cond_60

    .line 1260
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterArray;

    return-object v1

    .line 1262
    :cond_60
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1263
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1264
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;

    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterArrayFinal;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object v2

    .line 1266
    :cond_61
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterArray;-><init>(Ljava/lang/reflect/Type;)V

    return-object v2

    .line 1271
    :cond_62
    const-class v2, Ljava/util/UUID;

    if-ne v1, v2, :cond_63

    .line 1272
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplUUID;

    return-object v1

    .line 1275
    :cond_63
    const-class v2, Ljava/util/Locale;

    if-ne v1, v2, :cond_64

    .line 1276
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocale;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocale;

    return-object v1

    .line 1279
    :cond_64
    const-class v2, Ljava/util/Currency;

    if-ne v1, v2, :cond_65

    .line 1280
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCurrency;

    return-object v1

    .line 1283
    :cond_65
    const-class v2, Ljava/util/TimeZone;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1284
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplTimeZone;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplTimeZone;

    return-object v1

    .line 1287
    :cond_66
    const-class v2, Lcom/alibaba/fastjson2/JSONPObject;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1288
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplJSONP;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplJSONP;-><init>()V

    return-object v1

    .line 1291
    :cond_67
    const-class v2, Ljava/net/URI;

    if-eq v1, v2, :cond_88

    const-class v2, Ljava/net/URL;

    if-eq v1, v2, :cond_88

    const-class v2, Ljava/io/File;

    if-eq v1, v2, :cond_88

    const-class v2, Ljava/time/ZoneId;

    .line 1294
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_88

    const-class v2, Ljava/nio/charset/Charset;

    .line 1295
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_68

    goto/16 :goto_9

    .line 1299
    :cond_68
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->getExternalObjectWriter(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v2

    if-eqz v2, :cond_69

    return-object v2

    .line 1304
    :cond_69
    new-instance v2, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 1305
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 1307
    iget-object v5, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;

    invoke-virtual {v5, v2, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$WriterAnnotationProcessor;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 1310
    :cond_6a
    const-class v4, Ljava/util/Date;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 1311
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v1, :cond_6c

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_6b

    goto :goto_2

    .line 1315
    :cond_6b
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    return-object v1

    .line 1312
    :cond_6c
    :goto_2
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1318
    :cond_6d
    const-class v4, Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1319
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v1, :cond_6f

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_6e

    goto :goto_3

    .line 1323
    :cond_6e
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    return-object v1

    .line 1320
    :cond_6f
    :goto_3
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCalendar;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1326
    :cond_70
    const-class v4, Ljava/time/ZonedDateTime;

    if-ne v4, v1, :cond_73

    .line 1327
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v1, :cond_72

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_71

    goto :goto_4

    .line 1331
    :cond_71
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;

    return-object v1

    .line 1328
    :cond_72
    :goto_4
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplZonedDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1334
    :cond_73
    const-class v4, Ljava/time/OffsetDateTime;

    if-ne v4, v1, :cond_74

    .line 1335
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetDateTime;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetDateTime;

    move-result-object v1

    return-object v1

    .line 1338
    :cond_74
    const-class v4, Ljava/time/LocalDateTime;

    if-ne v4, v1, :cond_77

    .line 1339
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v1, :cond_76

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_75

    goto :goto_5

    .line 1343
    :cond_75
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;

    return-object v1

    .line 1340
    :cond_76
    :goto_5
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDateTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1346
    :cond_77
    const-class v4, Ljava/time/LocalDate;

    if-ne v4, v1, :cond_78

    .line 1347
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;->of(Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalDate;

    move-result-object v1

    return-object v1

    .line 1350
    :cond_78
    const-class v4, Ljava/time/LocalTime;

    if-ne v4, v1, :cond_7b

    .line 1351
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v1, :cond_7a

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_79

    goto :goto_6

    .line 1355
    :cond_79
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;

    return-object v1

    .line 1352
    :cond_7a
    :goto_6
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplLocalTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1358
    :cond_7b
    const-class v4, Ljava/time/OffsetTime;

    if-ne v4, v1, :cond_7e

    .line 1359
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v1, :cond_7d

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_7c

    goto :goto_7

    .line 1363
    :cond_7c
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;

    return-object v1

    .line 1360
    :cond_7d
    :goto_7
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOffsetTime;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1366
    :cond_7e
    const-class v4, Ljava/time/Instant;

    if-ne v4, v1, :cond_81

    .line 1367
    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-nez v1, :cond_80

    iget-object v1, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_7f

    goto :goto_8

    .line 1371
    :cond_7f
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;

    return-object v1

    .line 1368
    :cond_80
    :goto_8
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/fastjson2/codec/BeanInfo;->locale:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInstant;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1374
    :cond_81
    const-class v2, Ljava/time/Duration;

    if-ne v2, v1, :cond_82

    .line 1375
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v1

    .line 1378
    :cond_82
    const-class v2, Ljava/lang/StackTraceElement;

    const-string v4, "declaringClass"

    if-ne v2, v1, :cond_84

    .line 1380
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-nez v1, :cond_83

    .line 1381
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getCreator()Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    move-result-object v1

    .line 1382
    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const-class v3, Ljava/lang/StackTraceElement;

    const/4 v5, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    new-array v6, v6, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    const-class v13, Ljava/lang/String;

    const-class v11, Ljava/lang/StackTraceElement;

    const-string v12, "fileName"

    .line 1391
    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const-class v11, Ljava/lang/StackTraceElement;

    const-string v12, "getFileName"

    .line 1392
    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$KicQRXY4RpfyswQIOJqNVvMZaUc;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$KicQRXY4RpfyswQIOJqNVvMZaUc;

    const-string v12, "fileName"

    move-object v11, v1

    .line 1388
    invoke-virtual/range {v11 .. v16}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v11

    aput-object v11, v6, v10

    const-class v10, Ljava/lang/StackTraceElement;

    const-string v11, "lineNumber"

    .line 1397
    invoke-static {v10, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const-class v12, Ljava/lang/StackTraceElement;

    const-string v13, "getLineNumber"

    .line 1398
    invoke-static {v12, v13}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$emqC9MiTQNQ03Q0lpi8yB3JYZ6g;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$emqC9MiTQNQ03Q0lpi8yB3JYZ6g;

    .line 1395
    invoke-virtual {v1, v11, v10, v12, v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v10

    aput-object v10, v6, v9

    const-class v13, Ljava/lang/String;

    const-class v9, Ljava/lang/StackTraceElement;

    .line 1404
    invoke-static {v9, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const-class v4, Ljava/lang/StackTraceElement;

    const-string v9, "getClassName"

    .line 1405
    invoke-static {v4, v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$hDeA9k0FRWEmMTPgv8TVjW7S1Ro;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$hDeA9k0FRWEmMTPgv8TVjW7S1Ro;

    const-string v12, "className"

    move-object v11, v1

    .line 1401
    invoke-virtual/range {v11 .. v16}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v4

    aput-object v4, v6, v8

    const-class v13, Ljava/lang/String;

    const-class v4, Ljava/lang/StackTraceElement;

    const-string v8, "methodName"

    .line 1411
    invoke-static {v4, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const-class v4, Ljava/lang/StackTraceElement;

    const-string v8, "getMethodName"

    .line 1412
    invoke-static {v4, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$-VEhxZUMIRQ8HIS-6mm4R1I1TOM;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$-VEhxZUMIRQ8HIS-6mm4R1I1TOM;

    const-string v12, "methodName"

    .line 1408
    invoke-virtual/range {v11 .. v16}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v1

    aput-object v1, v6, v7

    .line 1387
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v5

    move-object/from16 v14, v17

    move-wide/from16 v15, v18

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    sput-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    .line 1418
    :cond_83
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->STACK_TRACE_ELEMENT_WRITER:Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    return-object v1

    .line 1421
    :cond_84
    const-class v2, Ljava/lang/Class;

    if-ne v2, v1, :cond_85

    .line 1422
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplClass;

    return-object v1

    .line 1425
    :cond_85
    const-class v2, Ljava/lang/reflect/Method;

    const-string v5, "name"

    if-ne v2, v1, :cond_86

    .line 1426
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const-class v12, Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-array v2, v7, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    const-class v3, Ljava/lang/Class;

    sget-object v6, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$wdH1btFflwxvDLvv3b73AYFat9U;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$wdH1btFflwxvDLvv3b73AYFat9U;

    .line 1432
    invoke-static {v4, v3, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/String;

    sget-object v4, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$jpcLOQ8cQshoXiWHXAifvXiiquQ;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$jpcLOQ8cQshoXiWHXAifvXiiquQ;

    .line 1433
    invoke-static {v5, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v9

    const-class v3, [Ljava/lang/Class;

    sget-object v4, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$3vQkJptFEcsRd_RhefVuf_XhNoI;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$3vQkJptFEcsRd_RhefVuf_XhNoI;

    const-string v5, "parameterTypes"

    .line 1434
    invoke-static {v5, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1431
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v1

    .line 1439
    :cond_86
    const-class v2, Ljava/lang/reflect/Field;

    if-ne v2, v1, :cond_87

    .line 1440
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const-class v12, Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-array v2, v8, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    const-class v3, Ljava/lang/Class;

    sget-object v6, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$jeQ3N4wMB_By_kpTeGMIRA_kYgo;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$jeQ3N4wMB_By_kpTeGMIRA_kYgo;

    .line 1446
    invoke-static {v4, v3, v6}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/String;

    sget-object v4, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;

    .line 1447
    invoke-static {v5, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v9

    .line 1445
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v1

    .line 1452
    :cond_87
    const-class v2, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1453
    const-class v1, Ljava/lang/reflect/ParameterizedType;

    new-array v2, v7, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    const-class v3, [Ljava/lang/reflect/Type;

    sget-object v4, Lcom/alibaba/fastjson2/writer/-$$Lambda$q7R-wdez97ZIYD6I7oSSPereMDU;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$q7R-wdez97ZIYD6I7oSSPereMDU;

    const-string v5, "actualTypeArguments"

    .line 1455
    invoke-static {v5, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/reflect/Type;

    sget-object v4, Lcom/alibaba/fastjson2/writer/-$$Lambda$UWvtiKJlQxZs6DbVG-i3rer8KuQ;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$UWvtiKJlQxZs6DbVG-i3rer8KuQ;

    const-string v5, "ownerType"

    .line 1456
    invoke-static {v5, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/reflect/Type;

    sget-object v4, Lcom/alibaba/fastjson2/writer/-$$Lambda$s1coPprZ6CeMYf0BOXppsiivtGE;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$s1coPprZ6CeMYf0BOXppsiivtGE;

    const-string v5, "rawType"

    .line 1457
    invoke-static {v5, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1453
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    return-object v1

    .line 1296
    :cond_88
    :goto_9
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v1

    .line 1211
    :cond_89
    :goto_a
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v1

    :cond_8a
    return-object v3

    .line 1077
    :cond_8b
    :goto_b
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    return-object v1

    .line 998
    :pswitch_0
    invoke-static {}, Lcom/alibaba/fastjson2/support/money/MoneySupport;->createNumberValueWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    return-object v1

    .line 996
    :pswitch_1
    invoke-static {}, Lcom/alibaba/fastjson2/support/money/MoneySupport;->createMonetaryAmountWriter()Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    return-object v1

    .line 1010
    :pswitch_2
    new-instance v1, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairWriter;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 992
    :pswitch_3
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v1

    .line 994
    :pswitch_4
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->DIRECT:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-object v1

    .line 1038
    :pswitch_5
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;

    sget-object v2, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt8ValueArray;-><init>(Ljava/util/function/Function;)V

    return-object v1

    .line 1035
    :pswitch_6
    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    return-object v1

    :pswitch_7
    return-object v3

    .line 1006
    :pswitch_8
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x796d94d7 -> :sswitch_29
        -0x6a7c71fa -> :sswitch_28
        -0x68ba7345 -> :sswitch_27
        -0x644c0dfa -> :sswitch_26
        -0x6393895f -> :sswitch_25
        -0x5f44b6c9 -> :sswitch_24
        -0x519f4452 -> :sswitch_23
        -0x383215d0 -> :sswitch_22
        -0x338dde7c -> :sswitch_21
        -0x328cea9b -> :sswitch_20
        -0x3031dac2 -> :sswitch_1f
        -0x29dfa02e -> :sswitch_1e
        -0x217c6306 -> :sswitch_1d
        -0x1abe1be8 -> :sswitch_1c
        -0x1463c54d -> :sswitch_1b
        -0x12be3e2b -> :sswitch_1a
        -0xe4f93c8 -> :sswitch_19
        -0xa4a05ee -> :sswitch_18
        -0x82e223b -> :sswitch_17
        -0x79e4957 -> :sswitch_16
        0x5f99c12 -> :sswitch_15
        0xcfdbeea -> :sswitch_14
        0xf3db8ab -> :sswitch_13
        0x14bffb17 -> :sswitch_12
        0x1a7eda8f -> :sswitch_11
        0x223ea48e -> :sswitch_10
        0x26e22da4 -> :sswitch_f
        0x371ffcf1 -> :sswitch_e
        0x43dae238 -> :sswitch_d
        0x47401d82 -> :sswitch_c
        0x4abc80d1 -> :sswitch_b
        0x50496a58 -> :sswitch_a
        0x532aeec2 -> :sswitch_9
        0x5b0f3e73 -> :sswitch_8
        0x5bc5408c -> :sswitch_7
        0x5cc10545 -> :sswitch_6
        0x5e7d83d0 -> :sswitch_5
        0x6069a832 -> :sswitch_4
        0x61f056af -> :sswitch_3
        0x70c56ede -> :sswitch_2
        0x755e191e -> :sswitch_1
        0x76ff3ac9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    return-object v0
.end method
