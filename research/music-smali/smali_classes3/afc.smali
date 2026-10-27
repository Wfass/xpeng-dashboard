.class public Lafc;
.super Ljava/lang/Object;
.source "ObjectWriterBaseModule.java"

# interfaces
.implements Lso;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lafc$b;,
        Lafc$a;
    }
.end annotation


# static fields
.field static a:Laez;


# instance fields
.field final b:Lahq;

.field final c:Lafc$b;


# direct methods
.method public constructor <init>(Lahq;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lafc;->b:Lahq;

    .line 42
    new-instance p1, Lafc$b;

    invoke-direct {p1, p0}, Lafc$b;-><init>(Lafc;)V

    iput-object p1, p0, Lafc;->c:Lafc$b;

    return-void
.end method

.method private a(Ljava/lang/Class;)Laem;
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
    iget-object p1, p0, Lafc;->b:Lahq;

    invoke-static {v4, p1}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 1475
    iget-object v1, p0, Lafc;->b:Lahq;

    iget-object v1, v1, Lahq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 1476
    iget-object v2, p0, Lafc;->b:Lahq;

    invoke-static {v1, v2}, Laax;->a(Ljava/lang/Class;Lsk;)Ljava/lang/reflect/Member;

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
    new-instance p1, Lqe;

    invoke-direct {p1}, Lqe;-><init>()V

    .line 1492
    invoke-virtual {v4}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 1493
    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 1494
    iget-object v2, p0, Lafc;->c:Lafc$b;

    aget-object v3, v1, v0

    invoke-virtual {v2, p1, v3}, Lafc$b;->a(Lqe;Ljava/lang/Class;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1497
    :cond_3
    iget-object v0, p0, Lafc;->c:Lafc$b;

    invoke-virtual {v0, p1, v4}, Lafc$b;->a(Lqe;Ljava/lang/Class;)V

    .line 1498
    iget-boolean p1, p1, Lqe;->o:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1502
    :cond_4
    invoke-static {v4}, Laax;->e(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    .line 1503
    new-instance p1, Lagd;

    const/4 v3, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lagd;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    return-object p1
.end method

.method private static synthetic a(Ljava/lang/Object;)[B
    .locals 0

    .line 1039
    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$6scLhcZOPyA9s_hCJM3swKdMNAs(Ljava/lang/Object;)[B
    .locals 0

    invoke-static {p0}, Lafc;->a(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/Class;)Laem;
    .locals 1

    .line 944
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "org.joda.time.LocalDateTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v0, "java.sql.Timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "org.joda.time.DateTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "org.joda.time.chrono.ISOChronology"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "java.sql.Time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "org.joda.time.chrono.GregorianChronology"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "org.joda.time.LocalDate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 960
    invoke-static {p2}, Labh;->b(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 961
    invoke-static {p2}, Labh;->a(Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1

    .line 958
    :pswitch_0
    new-instance p1, Lahn;

    new-instance p2, Labi$b;

    invoke-direct {p2}, Labi$b;-><init>()V

    invoke-direct {p1, v0, v0, p2}, Lahn;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/function/Function;)V

    return-object p1

    .line 956
    :pswitch_1
    invoke-static {p2, v0}, Labi;->a(Ljava/lang/Class;Ljava/lang/String;)Laem;

    move-result-object p1

    return-object p1

    .line 954
    :pswitch_2
    invoke-static {p2, v0}, Labi;->b(Ljava/lang/Class;Ljava/lang/String;)Laem;

    move-result-object p1

    return-object p1

    .line 952
    :pswitch_3
    invoke-static {p2}, Labi;->f(Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1

    .line 950
    :pswitch_4
    invoke-static {p2}, Labi;->e(Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1

    .line 948
    :pswitch_5
    invoke-static {p2, v0}, Labh;->a(Ljava/lang/Class;Ljava/lang/String;)Laem;

    move-result-object p1

    return-object p1

    .line 946
    :pswitch_6
    invoke-static {v0}, Labh;->a(Ljava/lang/String;)Laem;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

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

.method public a()Lsn;
    .locals 1

    .line 52
    iget-object v0, p0, Lafc;->c:Lafc$b;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 969
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_0

    .line 970
    sget-object v1, Lahi;->a:Lahi;

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
    invoke-static/range {p1 .. p1}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object/from16 v2, p2

    .line 981
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-virtual {v0, v3, v2}, Lafc;->a(Ljava/lang/String;Ljava/lang/Class;)Laem;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const/4 v4, -0x1

    .line 987
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v5, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x21

    goto/16 :goto_1

    :sswitch_1
    const-string v5, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v5, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x22

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "org.bson.types.Decimal128"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x27

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "java.net.InetSocketAddress"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "java.text.SimpleDateFormat"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v9

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "java.net.Inet4Address"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "gnu.trove.stack.array.TByteArrayStack"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x26

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "org.apache.commons.lang3.tuple.ImmutablePair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "com.fasterxml.jackson.databind.node.ArrayNode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "java.net.Inet6Address"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "org.javamoney.moneta.spi.DefaultNumberValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "net.sf.json.JSONNull"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x25

    goto/16 :goto_1

    :sswitch_15
    const-string v5, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_16
    const-string v5, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_17
    const-string v5, "org.apache.commons.lang3.tuple.Pair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_18
    const-string v5, "org.javamoney.moneta.Money"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v6

    goto/16 :goto_1

    :sswitch_19
    const-string v5, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_1a
    const-string v5, "org.apache.commons.lang3.tuple.MutablePair"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_1b
    const-string v5, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x24

    goto/16 :goto_1

    :sswitch_1c
    const-string v5, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_1d
    const-string v5, "java.nio.HeapByteBuffer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x28

    goto/16 :goto_1

    :sswitch_1e
    const-string v5, "com.carrotsearch.hppc.BitSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_1f
    const-string v5, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v5, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_21
    const-string v5, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x16

    goto :goto_1

    :sswitch_22
    const-string v5, "org.javamoney.moneta.internal.JDKCurrencyAdapter"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v8

    goto :goto_1

    :sswitch_23
    const-string v5, "com.fasterxml.jackson.databind.node.ObjectNode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v7

    goto :goto_1

    :sswitch_24
    const-string v5, "java.nio.DirectByteBuffer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x29

    goto :goto_1

    :sswitch_25
    const-string v5, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x17

    goto :goto_1

    :sswitch_26
    const-string v5, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x23

    goto :goto_1

    :sswitch_27
    const-string v5, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0x15

    goto :goto_1

    :sswitch_28
    const-string v5, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v10

    goto :goto_1

    :sswitch_29
    const-string v5, "java.util.regex.Pattern"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v4, 0xb

    :cond_4
    :goto_1
    const/4 v3, 0x0

    packed-switch v4, :pswitch_data_0

    .line 1045
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_9

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

    if-eq v5, v11, :cond_5

    const-class v11, Ljava/util/ArrayList;

    if-ne v5, v11, :cond_7

    goto :goto_2

    .line 1038
    :pswitch_0
    new-instance v1, Lagr;

    sget-object v2, L-$$Lambda$afc$6scLhcZOPyA9s_hCJM3swKdMNAs;->INSTANCE:L-$$Lambda$afc$6scLhcZOPyA9s_hCJM3swKdMNAs;

    invoke-direct {v1, v2}, Lagr;-><init>(Ljava/util/function/Function;)V

    return-object v1

    .line 1035
    :pswitch_1
    invoke-static {v1, v2}, Laat;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v1

    return-object v1

    .line 1010
    :pswitch_2
    new-instance v1, Laaw$b;

    invoke-direct {v1, v2}, Laaw$b;-><init>(Ljava/lang/Class;)V

    return-object v1

    .line 1006
    :pswitch_3
    sget-object v1, Laho;->a:Laho;

    return-object v1

    .line 998
    :pswitch_4
    invoke-static {}, Laav;->e()Laem;

    move-result-object v1

    return-object v1

    .line 996
    :pswitch_5
    invoke-static {}, Laav;->d()Laem;

    move-result-object v1

    return-object v1

    .line 994
    :pswitch_6
    sget-object v1, Lahl;->b:Lahl;

    return-object v1

    .line 992
    :pswitch_7
    sget-object v1, Lahl;->a:Lahl;

    return-object v1

    :pswitch_8
    return-object v3

    .line 1051
    :cond_5
    :goto_2
    array-length v1, v4

    if-ne v1, v10, :cond_6

    aget-object v1, v4, v9

    const-class v11, Ljava/lang/String;

    if-ne v1, v11, :cond_6

    .line 1053
    sget-object v1, Lagv;->a:Lagv;

    return-object v1

    :cond_6
    move-object v1, v5

    .line 1059
    :cond_7
    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1060
    invoke-static {v1, v2}, Laha;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laha;

    move-result-object v1

    return-object v1

    .line 1063
    :cond_8
    const-class v5, Ljava/util/Optional;

    if-ne v2, v5, :cond_9

    .line 1064
    array-length v5, v4

    if-ne v5, v10, :cond_9

    .line 1065
    new-instance v1, Lahe;

    aget-object v2, v4, v9

    invoke-direct {v1, v2, v3, v3}, Lahe;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1070
    :cond_9
    const-class v4, Ljava/util/LinkedList;

    if-ne v1, v4, :cond_a

    .line 1071
    sget-object v1, Lagt;->a:Lagt;

    return-object v1

    .line 1074
    :cond_a
    const-class v4, Ljava/util/ArrayList;

    if-eq v1, v4, :cond_62

    const-class v4, Ljava/util/List;

    if-eq v1, v4, :cond_62

    const-class v4, Ljava/util/List;

    .line 1076
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_c

    .line 1080
    :cond_b
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1081
    sget-object v1, Lafy;->a:Lafy;

    return-object v1

    .line 1084
    :cond_c
    invoke-static {v2}, Laax;->h(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_d

    return-object v3

    .line 1088
    :cond_d
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1089
    invoke-static {v2}, Laha;->a(Ljava/lang/Class;)Laha;

    move-result-object v1

    return-object v1

    .line 1092
    :cond_e
    const-class v4, Ljava/util/Map$Entry;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1093
    sget-object v1, Lahb;->a:Lahb;

    return-object v1

    .line 1096
    :cond_f
    const-class v4, Ljava/nio/file/Path;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1097
    sget-object v1, Lahl;->a:Lahl;

    return-object v1

    .line 1100
    :cond_10
    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_11

    .line 1101
    sget-object v1, Lagj;->a:Lagj;

    return-object v1

    .line 1104
    :cond_11
    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v1, v2, :cond_12

    .line 1105
    sget-object v1, Lafk;->a:Lafk;

    return-object v1

    .line 1108
    :cond_12
    const-class v2, Ljava/lang/Byte;

    if-ne v1, v2, :cond_13

    .line 1109
    sget-object v1, Lagp;->a:Lagp;

    return-object v1

    .line 1112
    :cond_13
    const-class v2, Ljava/lang/Short;

    if-ne v1, v2, :cond_14

    .line 1113
    sget-object v1, Lagh;->a:Lagh;

    return-object v1

    .line 1116
    :cond_14
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_15

    .line 1117
    sget-object v1, Lagm;->a:Lagm;

    return-object v1

    .line 1120
    :cond_15
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v1, v2, :cond_16

    .line 1121
    sget-object v1, Lafm;->a:Lafm;

    return-object v1

    .line 1124
    :cond_16
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v1, v2, :cond_17

    .line 1125
    sget-object v1, Lafo;->a:Lafo;

    return-object v1

    .line 1128
    :cond_17
    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_18

    .line 1129
    sget-object v1, Lage;->a:Lage;

    return-object v1

    .line 1132
    :cond_18
    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_19

    .line 1133
    sget-object v1, Lagb;->a:Lagb;

    return-object v1

    .line 1136
    :cond_19
    const-class v2, Ljava/math/BigInteger;

    if-ne v1, v2, :cond_1a

    .line 1137
    sget-object v1, Lafd;->a:Lafd;

    return-object v1

    .line 1140
    :cond_1a
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_1b

    .line 1141
    sget-object v1, Lafp;->a:Lafp;

    return-object v1

    .line 1144
    :cond_1b
    const-class v2, Ljava/util/BitSet;

    if-ne v1, v2, :cond_1c

    .line 1145
    sget-object v1, Lafq;->a:Lafq;

    return-object v1

    .line 1148
    :cond_1c
    const-class v2, Ljava/util/OptionalInt;

    if-ne v1, v2, :cond_1d

    .line 1149
    sget-object v1, Lahg;->a:Lahg;

    return-object v1

    .line 1152
    :cond_1d
    const-class v2, Ljava/util/OptionalLong;

    if-ne v1, v2, :cond_1e

    .line 1153
    sget-object v1, Lahh;->a:Lahh;

    return-object v1

    .line 1156
    :cond_1e
    const-class v2, Ljava/util/OptionalDouble;

    if-ne v1, v2, :cond_1f

    .line 1157
    sget-object v1, Lahf;->a:Lahf;

    return-object v1

    .line 1160
    :cond_1f
    const-class v2, Ljava/util/Optional;

    if-ne v1, v2, :cond_20

    .line 1161
    sget-object v1, Lahe;->a:Lahe;

    return-object v1

    .line 1164
    :cond_20
    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_21

    .line 1165
    sget-object v1, Laft;->a:Laft;

    return-object v1

    .line 1168
    :cond_21
    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v1, v2, :cond_22

    .line 1169
    sget-object v1, Lafj;->a:Lafj;

    return-object v1

    .line 1172
    :cond_22
    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v1, v2, :cond_23

    .line 1173
    sget-object v1, Lafl;->a:Lafl;

    return-object v1

    .line 1176
    :cond_23
    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v1, v2, :cond_24

    .line 1177
    sget-object v1, Lafn;->a:Lafn;

    return-object v1

    .line 1180
    :cond_24
    const-class v2, Ljava/lang/Character;

    if-ne v1, v2, :cond_25

    .line 1181
    sget-object v1, Lafw;->a:Lafw;

    return-object v1

    .line 1184
    :cond_25
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_61

    .line 1185
    check-cast v1, Ljava/lang/Class;

    .line 1187
    const-class v2, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1188
    new-instance v1, Lagd;

    const/4 v12, 0x0

    const-class v13, Ljava/util/concurrent/TimeUnit;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Lagd;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Member;[Ljava/lang/String;J)V

    return-object v1

    .line 1191
    :cond_26
    const-class v2, Ljava/lang/Enum;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1192
    invoke-direct {v0, v1}, Lafc;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    if-eqz v2, :cond_27

    return-object v2

    .line 1198
    :cond_27
    const-class v2, Lcom/alibaba/fastjson2/g;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1199
    sget-object v1, Lahl;->a:Lahl;

    return-object v1

    .line 1202
    :cond_28
    const-class v2, [Z

    if-ne v1, v2, :cond_29

    .line 1203
    sget-object v1, Lafr;->a:Lafr;

    return-object v1

    .line 1206
    :cond_29
    const-class v2, [C

    if-ne v1, v2, :cond_2a

    .line 1207
    sget-object v1, Lafv;->a:Lafv;

    return-object v1

    .line 1210
    :cond_2a
    const-class v2, Ljava/lang/StringBuffer;

    if-eq v1, v2, :cond_60

    const-class v2, Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_2b

    goto/16 :goto_b

    .line 1214
    :cond_2b
    const-class v2, [B

    if-ne v1, v2, :cond_2c

    .line 1215
    sget-object v1, Lagr;->a:Lagr;

    return-object v1

    .line 1218
    :cond_2c
    const-class v2, [S

    if-ne v1, v2, :cond_2d

    .line 1219
    sget-object v1, Lagi;->a:Lagi;

    return-object v1

    .line 1222
    :cond_2d
    const-class v2, [I

    if-ne v1, v2, :cond_2e

    .line 1223
    sget-object v1, Lagl;->a:Lagl;

    return-object v1

    .line 1226
    :cond_2e
    const-class v2, [J

    if-ne v1, v2, :cond_2f

    .line 1227
    sget-object v1, Lago;->a:Lago;

    return-object v1

    .line 1230
    :cond_2f
    const-class v2, [F

    if-ne v1, v2, :cond_30

    .line 1231
    sget-object v1, Lagf;->a:Lagf;

    return-object v1

    .line 1234
    :cond_30
    const-class v2, [D

    if-ne v1, v2, :cond_31

    .line 1235
    sget-object v1, Lagc;->a:Lagc;

    return-object v1

    .line 1238
    :cond_31
    const-class v2, [Ljava/lang/Byte;

    if-ne v1, v2, :cond_32

    .line 1239
    sget-object v1, Lagq;->a:Lagq;

    return-object v1

    .line 1242
    :cond_32
    const-class v2, [Ljava/lang/Integer;

    if-ne v1, v2, :cond_33

    .line 1243
    sget-object v1, Lagk;->a:Lagk;

    return-object v1

    .line 1246
    :cond_33
    const-class v2, [Ljava/lang/Long;

    if-ne v1, v2, :cond_34

    .line 1247
    sget-object v1, Lagn;->a:Lagn;

    return-object v1

    .line 1250
    :cond_34
    const-class v2, [Ljava/lang/String;

    if-ne v2, v1, :cond_35

    .line 1251
    sget-object v1, Lahj;->c:Lahj;

    return-object v1

    .line 1254
    :cond_35
    const-class v2, [Ljava/math/BigDecimal;

    if-ne v2, v1, :cond_36

    .line 1255
    sget-object v1, Lafi;->a:Lafi;

    return-object v1

    .line 1258
    :cond_36
    const-class v2, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1259
    const-class v2, [Ljava/lang/Object;

    if-ne v1, v2, :cond_37

    .line 1260
    sget-object v1, Lafa;->a:Lafa;

    return-object v1

    .line 1262
    :cond_37
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 1263
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1264
    new-instance v2, Lafb;

    invoke-direct {v2, v1, v3}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object v2

    .line 1266
    :cond_38
    new-instance v2, Lafa;

    invoke-direct {v2, v1}, Lafa;-><init>(Ljava/lang/reflect/Type;)V

    return-object v2

    .line 1271
    :cond_39
    const-class v2, Ljava/util/UUID;

    if-ne v1, v2, :cond_3a

    .line 1272
    sget-object v1, Lahm;->a:Lahm;

    return-object v1

    .line 1275
    :cond_3a
    const-class v2, Ljava/util/Locale;

    if-ne v1, v2, :cond_3b

    .line 1276
    sget-object v1, Lagz;->a:Lagz;

    return-object v1

    .line 1279
    :cond_3b
    const-class v2, Ljava/util/Currency;

    if-ne v1, v2, :cond_3c

    .line 1280
    sget-object v1, Lafz;->a:Lafz;

    return-object v1

    .line 1283
    :cond_3c
    const-class v2, Ljava/util/TimeZone;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1284
    sget-object v1, Lahk;->a:Lahk;

    return-object v1

    .line 1287
    :cond_3d
    const-class v2, Lcom/alibaba/fastjson2/f;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1288
    new-instance v1, Lags;

    invoke-direct {v1}, Lags;-><init>()V

    return-object v1

    .line 1291
    :cond_3e
    const-class v2, Ljava/net/URI;

    if-eq v1, v2, :cond_5f

    const-class v2, Ljava/net/URL;

    if-eq v1, v2, :cond_5f

    const-class v2, Ljava/io/File;

    if-eq v1, v2, :cond_5f

    const-class v2, Ljava/time/ZoneId;

    .line 1294
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-class v2, Ljava/nio/charset/Charset;

    .line 1295
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto/16 :goto_a

    .line 1299
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lafc;->a(Ljava/lang/String;Ljava/lang/Class;)Laem;

    move-result-object v2

    if-eqz v2, :cond_40

    return-object v2

    .line 1304
    :cond_40
    new-instance v2, Lqe;

    invoke-direct {v2}, Lqe;-><init>()V

    .line 1305
    iget-object v4, v0, Lafc;->b:Lahq;

    invoke-virtual {v4, v1}, Lahq;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 1307
    iget-object v5, v0, Lafc;->c:Lafc$b;

    invoke-virtual {v5, v2, v4}, Lafc$b;->a(Lqe;Ljava/lang/Class;)V

    .line 1310
    :cond_41
    const-class v4, Ljava/util/Date;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1311
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    if-nez v1, :cond_43

    iget-object v1, v2, Lqe;->A:Ljava/util/Locale;

    if-eqz v1, :cond_42

    goto :goto_3

    .line 1315
    :cond_42
    sget-object v1, Laga;->o:Laga;

    return-object v1

    .line 1312
    :cond_43
    :goto_3
    new-instance v1, Laga;

    iget-object v3, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Laga;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1318
    :cond_44
    const-class v4, Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1319
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    if-nez v1, :cond_46

    iget-object v1, v2, Lqe;->A:Ljava/util/Locale;

    if-eqz v1, :cond_45

    goto :goto_4

    .line 1323
    :cond_45
    sget-object v1, Lafu;->o:Lafu;

    return-object v1

    .line 1320
    :cond_46
    :goto_4
    new-instance v1, Lafu;

    iget-object v3, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lafu;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1326
    :cond_47
    const-class v4, Ljava/time/ZonedDateTime;

    if-ne v4, v1, :cond_4a

    .line 1327
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    if-nez v1, :cond_49

    iget-object v1, v2, Lqe;->A:Ljava/util/Locale;

    if-eqz v1, :cond_48

    goto :goto_5

    .line 1331
    :cond_48
    sget-object v1, Lahn;->o:Lahn;

    return-object v1

    .line 1328
    :cond_49
    :goto_5
    new-instance v1, Lahn;

    iget-object v3, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lahn;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1334
    :cond_4a
    const-class v4, Ljava/time/OffsetDateTime;

    if-ne v4, v1, :cond_4b

    .line 1335
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-static {v1, v2}, Lahc;->a(Ljava/lang/String;Ljava/util/Locale;)Lahc;

    move-result-object v1

    return-object v1

    .line 1338
    :cond_4b
    const-class v4, Ljava/time/LocalDateTime;

    if-ne v4, v1, :cond_4e

    .line 1339
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    if-nez v1, :cond_4d

    iget-object v1, v2, Lqe;->A:Ljava/util/Locale;

    if-eqz v1, :cond_4c

    goto :goto_6

    .line 1343
    :cond_4c
    sget-object v1, Lagx;->o:Lagx;

    return-object v1

    .line 1340
    :cond_4d
    :goto_6
    new-instance v1, Lagx;

    iget-object v3, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lagx;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1346
    :cond_4e
    const-class v4, Ljava/time/LocalDate;

    if-ne v4, v1, :cond_4f

    .line 1347
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-static {v1, v2}, Lagw;->a(Ljava/lang/String;Ljava/util/Locale;)Lagw;

    move-result-object v1

    return-object v1

    .line 1350
    :cond_4f
    const-class v4, Ljava/time/LocalTime;

    if-ne v4, v1, :cond_52

    .line 1351
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    if-nez v1, :cond_51

    iget-object v1, v2, Lqe;->A:Ljava/util/Locale;

    if-eqz v1, :cond_50

    goto :goto_7

    .line 1355
    :cond_50
    sget-object v1, Lagy;->o:Lagy;

    return-object v1

    .line 1352
    :cond_51
    :goto_7
    new-instance v1, Lagy;

    iget-object v3, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lagy;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1358
    :cond_52
    const-class v4, Ljava/time/OffsetTime;

    if-ne v4, v1, :cond_55

    .line 1359
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    if-nez v1, :cond_54

    iget-object v1, v2, Lqe;->A:Ljava/util/Locale;

    if-eqz v1, :cond_53

    goto :goto_8

    .line 1363
    :cond_53
    sget-object v1, Lahd;->o:Lahd;

    return-object v1

    .line 1360
    :cond_54
    :goto_8
    new-instance v1, Lahd;

    iget-object v3, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lahd;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1366
    :cond_55
    const-class v4, Ljava/time/Instant;

    if-ne v4, v1, :cond_58

    .line 1367
    iget-object v1, v2, Lqe;->z:Ljava/lang/String;

    if-nez v1, :cond_57

    iget-object v1, v2, Lqe;->A:Ljava/util/Locale;

    if-eqz v1, :cond_56

    goto :goto_9

    .line 1371
    :cond_56
    sget-object v1, Lagg;->o:Lagg;

    return-object v1

    .line 1368
    :cond_57
    :goto_9
    new-instance v1, Lagg;

    iget-object v3, v2, Lqe;->z:Ljava/lang/String;

    iget-object v2, v2, Lqe;->A:Ljava/util/Locale;

    invoke-direct {v1, v3, v2}, Lagg;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1

    .line 1374
    :cond_58
    const-class v2, Ljava/time/Duration;

    if-ne v2, v1, :cond_59

    .line 1375
    sget-object v1, Lahl;->a:Lahl;

    return-object v1

    .line 1378
    :cond_59
    const-class v2, Ljava/lang/StackTraceElement;

    const-string v4, "declaringClass"

    if-ne v2, v1, :cond_5b

    .line 1380
    sget-object v1, Lafc;->a:Laez;

    if-nez v1, :cond_5a

    .line 1381
    iget-object v1, v0, Lafc;->b:Lahq;

    invoke-virtual {v1}, Lahq;->c()Lafe;

    move-result-object v1

    .line 1382
    new-instance v2, Laez;

    const-class v3, Ljava/lang/StackTraceElement;

    const/4 v5, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    new-array v6, v6, [Labq;

    const-class v13, Ljava/lang/String;

    const-class v11, Ljava/lang/StackTraceElement;

    const-string v12, "fileName"

    .line 1391
    invoke-static {v11, v12}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const-class v11, Ljava/lang/StackTraceElement;

    const-string v12, "getFileName"

    .line 1392
    invoke-static {v11, v12}, Laax;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v15

    sget-object v16, L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;->INSTANCE:L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;

    const-string v12, "fileName"

    move-object v11, v1

    .line 1388
    invoke-virtual/range {v11 .. v16}, Lafe;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

    move-result-object v11

    aput-object v11, v6, v9

    const-class v9, Ljava/lang/StackTraceElement;

    const-string v11, "lineNumber"

    .line 1397
    invoke-static {v9, v11}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const-class v12, Ljava/lang/StackTraceElement;

    const-string v13, "getLineNumber"

    .line 1398
    invoke-static {v12, v13}, Laax;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v12

    sget-object v13, L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;->INSTANCE:L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;

    .line 1395
    invoke-virtual {v1, v11, v9, v12, v13}, Lafe;->a(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)Labq;

    move-result-object v9

    aput-object v9, v6, v10

    const-class v13, Ljava/lang/String;

    const-class v9, Ljava/lang/StackTraceElement;

    .line 1404
    invoke-static {v9, v4}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const-class v4, Ljava/lang/StackTraceElement;

    const-string v9, "getClassName"

    .line 1405
    invoke-static {v4, v9}, Laax;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v15

    sget-object v16, L-$$Lambda$X9C1s6hrSKK_7QgSSXTBJvUwuaM;->INSTANCE:L-$$Lambda$X9C1s6hrSKK_7QgSSXTBJvUwuaM;

    const-string v12, "className"

    move-object v11, v1

    .line 1401
    invoke-virtual/range {v11 .. v16}, Lafe;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

    move-result-object v4

    aput-object v4, v6, v8

    const-class v13, Ljava/lang/String;

    const-class v4, Ljava/lang/StackTraceElement;

    const-string v8, "methodName"

    .line 1411
    invoke-static {v4, v8}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    const-class v4, Ljava/lang/StackTraceElement;

    const-string v8, "getMethodName"

    .line 1412
    invoke-static {v4, v8}, Laax;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v15

    sget-object v16, L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;->INSTANCE:L-$$Lambda$PNcWARaUCnqxo5KZVrKltn9O64M;

    const-string v12, "methodName"

    .line 1408
    invoke-virtual/range {v11 .. v16}, Lafe;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Labq;

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

    invoke-direct/range {v11 .. v17}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    sput-object v2, Lafc;->a:Laez;

    .line 1418
    :cond_5a
    sget-object v1, Lafc;->a:Laez;

    return-object v1

    .line 1421
    :cond_5b
    const-class v2, Ljava/lang/Class;

    if-ne v2, v1, :cond_5c

    .line 1422
    sget-object v1, Lafx;->a:Lafx;

    return-object v1

    .line 1425
    :cond_5c
    const-class v2, Ljava/lang/reflect/Method;

    const-string v5, "name"

    if-ne v2, v1, :cond_5d

    .line 1426
    new-instance v1, Laez;

    const-class v12, Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-array v2, v7, [Labq;

    const-class v3, Ljava/lang/Class;

    sget-object v6, L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;->INSTANCE:L-$$Lambda$15j3tKB_0-rQKctFVvVC8UqRGWE;

    .line 1432
    invoke-static {v4, v3, v6}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/String;

    sget-object v4, L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;->INSTANCE:L-$$Lambda$41wj67R9eYOUlhE05A43dLwOQSw;

    .line 1433
    invoke-static {v5, v3, v4}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v10

    const-class v3, [Ljava/lang/Class;

    sget-object v4, L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;->INSTANCE:L-$$Lambda$iumO6utTk9416lhel2JOt08sDAs;

    const-string v5, "parameterTypes"

    .line 1434
    invoke-static {v5, v3, v4}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1431
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v1

    .line 1439
    :cond_5d
    const-class v2, Ljava/lang/reflect/Field;

    if-ne v2, v1, :cond_5e

    .line 1440
    new-instance v1, Laez;

    const-class v12, Ljava/lang/reflect/Method;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    new-array v2, v8, [Labq;

    const-class v3, Ljava/lang/Class;

    sget-object v6, L-$$Lambda$L5wRtrGkKEa0nalwM4-U6uEGdYg;->INSTANCE:L-$$Lambda$L5wRtrGkKEa0nalwM4-U6uEGdYg;

    .line 1446
    invoke-static {v4, v3, v6}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/String;

    sget-object v4, L-$$Lambda$EwHr87MK7hEsolm9oeBYC5WlLmc;->INSTANCE:L-$$Lambda$EwHr87MK7hEsolm9oeBYC5WlLmc;

    .line 1447
    invoke-static {v5, v3, v4}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v10

    .line 1445
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object v11, v1

    invoke-direct/range {v11 .. v17}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v1

    .line 1452
    :cond_5e
    const-class v2, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1453
    const-class v1, Ljava/lang/reflect/ParameterizedType;

    new-array v2, v7, [Labq;

    const-class v3, [Ljava/lang/reflect/Type;

    sget-object v4, L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;->INSTANCE:L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;

    const-string v5, "actualTypeArguments"

    .line 1455
    invoke-static {v5, v3, v4}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v9

    const-class v3, Ljava/lang/reflect/Type;

    sget-object v4, L-$$Lambda$lCMiE7pJnwSshS_fRKEvv3Q5GBY;->INSTANCE:L-$$Lambda$lCMiE7pJnwSshS_fRKEvv3Q5GBY;

    const-string v5, "ownerType"

    .line 1456
    invoke-static {v5, v3, v4}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v10

    const-class v3, Ljava/lang/reflect/Type;

    sget-object v4, L-$$Lambda$yqsLmpukDt-N1NpCHBD-dZbQay0;->INSTANCE:L-$$Lambda$yqsLmpukDt-N1NpCHBD-dZbQay0;

    const-string v5, "rawType"

    .line 1457
    invoke-static {v5, v3, v4}, Lahr;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, v2, v8

    .line 1453
    invoke-static {v1, v2}, Lahr;->a(Ljava/lang/Class;[Labq;)Laem;

    move-result-object v1

    return-object v1

    .line 1296
    :cond_5f
    :goto_a
    sget-object v1, Lahl;->a:Lahl;

    return-object v1

    .line 1211
    :cond_60
    :goto_b
    sget-object v1, Lahl;->a:Lahl;

    return-object v1

    :cond_61
    return-object v3

    .line 1077
    :cond_62
    :goto_c
    sget-object v1, Lagt;->a:Lagt;

    return-object v1

    nop

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
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
