.class public Laat;
.super Ljava/lang/Object;
.source "LambdaMiscCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laat$f;,
        Laat$i;,
        Laat$j;,
        Laat$b;,
        Laat$h;,
        Laat$e;,
        Laat$a;,
        Laat$d;,
        Laat$c;,
        Laat$g;
    }
.end annotation


# static fields
.field static volatile a:Z

.field static volatile b:Ljava/lang/Throwable;


# direct methods
.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;
    .locals 11

    .line 22
    sget-boolean p0, Laat;->a:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v4

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "org.bson.types.Decimal128"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "gnu.trove.stack.array.TByteArrayStack"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_f
    const-string v2, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_10
    const-string v2, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_11
    const-string v2, "com.carrotsearch.hppc.BitSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x16

    goto :goto_0

    :sswitch_12
    const-string v2, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_13
    const-string v2, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_14
    const-string v2, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :sswitch_15
    const-string v2, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0x11

    goto :goto_0

    :sswitch_16
    const-string v2, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_17
    const-string v2, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v1, 0xe

    :cond_1
    :goto_0
    const-string p0, "toArray"

    const-string v2, "illegal state"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    :try_start_0
    const-string p0, "bigDecimalValue"

    .line 149
    new-array v0, v4, [Ljava/lang/Class;

    .line 151
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 150
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lahr;->h(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 155
    :goto_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 122
    :pswitch_1
    invoke-static {p1}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    :try_start_1
    const-string v1, "size"

    .line 124
    new-array v2, v4, [Ljava/lang/Class;

    .line 125
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    invoke-static {v1}, Laat;->b(Ljava/lang/reflect/Method;)Ljava/util/function/ToLongFunction;

    move-result-object v1

    const-string v2, "get"

    .line 128
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {p0, p1, v2, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    const-string v5, "apply"

    .line 129
    const-class v2, Ljava/util/function/BiFunction;

    .line 132
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    const-class v2, Ljava/lang/Object;

    const-class v7, Ljava/lang/Object;

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v4

    .line 133
    invoke-static {v2, v7, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    const-class v2, Ljava/lang/Boolean;

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v9, v4

    .line 135
    invoke-static {v2, p1, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    move-object v4, p0

    .line 129
    invoke-static/range {v4 .. v9}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-polymorphic {p0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object p0

    .line 140
    invoke-static {v1, p0}, Lahr;->a(Ljava/util/function/ToLongFunction;Ljava/util/function/BiFunction;)Laem;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    .line 142
    :catch_2
    sput-boolean v3, Laat;->a:Z

    goto/16 :goto_9

    .line 112
    :pswitch_2
    :try_start_2
    new-array v0, v4, [Ljava/lang/Class;

    .line 114
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 113
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lahr;->g(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    return-object p0

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    .line 118
    :goto_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 100
    :pswitch_3
    :try_start_3
    new-array v0, v4, [Ljava/lang/Class;

    .line 102
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 101
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 100
    invoke-static {p0}, Lahr;->f(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    goto :goto_3

    :catch_6
    move-exception p0

    .line 106
    :goto_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 88
    :pswitch_4
    :try_start_4
    new-array v0, v4, [Ljava/lang/Class;

    .line 90
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 89
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lahr;->e(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    goto :goto_4

    :catch_8
    move-exception p0

    .line 94
    :goto_4
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 75
    :pswitch_5
    :try_start_5
    new-array v0, v4, [Ljava/lang/Class;

    .line 77
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 76
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lahr;->d(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    goto :goto_5

    :catch_a
    move-exception p0

    .line 81
    :goto_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :pswitch_6
    :try_start_6
    new-array v0, v4, [Ljava/lang/Class;

    .line 63
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 62
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lahr;->c(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    goto :goto_6

    :catch_c
    move-exception p0

    .line 67
    :goto_6
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 47
    :pswitch_7
    :try_start_7
    new-array v0, v4, [Ljava/lang/Class;

    .line 49
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 48
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 47
    invoke-static {p0}, Lahr;->b(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    goto :goto_7

    :catch_e
    move-exception p0

    .line 53
    :goto_7
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 34
    :pswitch_8
    :try_start_8
    new-array v0, v4, [Ljava/lang/Class;

    .line 36
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 35
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lahr;->a(Ljava/util/function/Function;)Laem;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    goto :goto_8

    :catch_10
    move-exception p0

    .line 40
    :goto_8
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_9
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x68ba7345 -> :sswitch_17
        -0x644c0dfa -> :sswitch_16
        -0x6393895f -> :sswitch_15
        -0x338dde7c -> :sswitch_14
        -0x328cea9b -> :sswitch_13
        -0x3031dac2 -> :sswitch_12
        -0x29dfa02e -> :sswitch_11
        -0x1abe1be8 -> :sswitch_10
        -0x1463c54d -> :sswitch_f
        -0xe4f93c8 -> :sswitch_e
        -0x79e4957 -> :sswitch_d
        0x5f99c12 -> :sswitch_c
        0xcfdbeea -> :sswitch_b
        0x26e22da4 -> :sswitch_a
        0x43dae238 -> :sswitch_9
        0x47401d82 -> :sswitch_8
        0x50496a58 -> :sswitch_7
        0x532aeec2 -> :sswitch_6
        0x5cc10545 -> :sswitch_5
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
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/reflect/Constructor;)Ljava/util/function/LongFunction;
    .locals 7

    .line 352
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 353
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 354
    sget-object v2, Labo;->B:Ljava/lang/invoke/MethodType;

    .line 355
    invoke-virtual {v1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 359
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    const-string v2, "apply"

    .line 360
    sget-object v3, Labo;->r:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->A:Ljava/lang/invoke/MethodType;

    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/LongFunction;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 370
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 372
    new-instance v0, Laat$f;

    invoke-direct {v0, p0}, Laat$f;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;
    .locals 7

    .line 376
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 378
    :try_start_0
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 379
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 383
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "applyAsInt"

    .line 386
    sget-object v3, Labo;->n:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->x:Ljava/lang/invoke/MethodType;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 392
    invoke-static {v6, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 386
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ToIntFunction;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 396
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 398
    new-instance v0, Laat$i;

    invoke-direct {v0, p0}, Laat$i;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lwk;
    .locals 6

    .line 164
    sget-boolean v0, Laat;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "org.bson.types.Decimal128"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "gnu.trove.stack.array.TByteArrayStack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_e
    const-string v3, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_f
    const-string v3, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x10

    goto :goto_0

    :sswitch_10
    const-string v3, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xf

    goto :goto_0

    :sswitch_11
    const-string v3, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x13

    goto :goto_0

    :sswitch_12
    const-string v3, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_13
    const-string v3, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_14
    const-string v3, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_15
    const-string v3, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0xe

    goto :goto_0

    :sswitch_16
    const-string v3, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    :cond_1
    :goto_0
    const-string v0, "from"

    const-string v3, "illegal state"

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 335
    :pswitch_0
    :try_start_0
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/math/BigDecimal;

    aput-object v1, v0, v4

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 336
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 335
    invoke-static {p0}, Lzz;->h(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 341
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 324
    :pswitch_1
    :try_start_1
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [D

    aput-object v1, v0, v4

    .line 326
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 325
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 324
    invoke-static {p0}, Lzz;->g(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 330
    :goto_2
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 313
    :pswitch_2
    :try_start_2
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [F

    aput-object v1, v0, v4

    .line 315
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 314
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 313
    invoke-static {p0}, Lzz;->f(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    return-object p0

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    .line 319
    :goto_3
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 302
    :pswitch_3
    :try_start_3
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [J

    aput-object v1, v0, v4

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 303
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 302
    invoke-static {p0}, Lzz;->e(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    goto :goto_4

    :catch_7
    move-exception p0

    .line 308
    :goto_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 290
    :pswitch_4
    :try_start_4
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [I

    aput-object v1, v0, v4

    .line 292
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 291
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 290
    invoke-static {p0}, Lzz;->d(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    goto :goto_5

    :catch_9
    move-exception p0

    .line 296
    :goto_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 278
    :pswitch_5
    :try_start_5
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [S

    aput-object v1, v0, v4

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 279
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 278
    invoke-static {p0}, Lzz;->c(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    goto :goto_6

    :catch_b
    move-exception p0

    .line 284
    :goto_6
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 266
    :pswitch_6
    :try_start_6
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [C

    aput-object v1, v0, v4

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 267
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 266
    invoke-static {p0}, Lzz;->a(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    goto :goto_7

    :catch_d
    move-exception p0

    .line 272
    :goto_7
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 255
    :pswitch_7
    :try_start_7
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, [B

    aput-object v1, v0, v4

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 256
    invoke-static {p0}, Laat;->b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lzz;->b(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    goto :goto_8

    :catch_f
    move-exception p0

    .line 261
    :goto_8
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 242
    :pswitch_8
    :try_start_8
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [D

    aput-object v2, v1, v4

    .line 244
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 243
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lzz;->g(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    goto :goto_9

    :catch_11
    move-exception p0

    .line 248
    :goto_9
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 231
    :pswitch_9
    :try_start_9
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [F

    aput-object v2, v1, v4

    .line 233
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 232
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 231
    invoke-static {p0}, Lzz;->f(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    goto :goto_a

    :catch_13
    move-exception p0

    .line 237
    :goto_a
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 220
    :pswitch_a
    :try_start_a
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [C

    aput-object v2, v1, v4

    .line 222
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 221
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 220
    invoke-static {p0}, Lzz;->a(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    goto :goto_b

    :catch_15
    move-exception p0

    .line 226
    :goto_b
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 208
    :pswitch_b
    :try_start_b
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [J

    aput-object v2, v1, v4

    .line 210
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 209
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 208
    invoke-static {p0}, Lzz;->e(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    goto :goto_c

    :catch_17
    move-exception p0

    .line 214
    :goto_c
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 196
    :pswitch_c
    :try_start_c
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [I

    aput-object v2, v1, v4

    .line 198
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 197
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lzz;->d(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    goto :goto_d

    :catch_19
    move-exception p0

    .line 202
    :goto_d
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 184
    :pswitch_d
    :try_start_d
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [S

    aput-object v2, v1, v4

    .line 186
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 185
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 184
    invoke-static {p0}, Lzz;->c(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    goto :goto_e

    :catch_1b
    move-exception p0

    .line 190
    :goto_e
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 173
    :pswitch_e
    :try_start_e
    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, [B

    aput-object v2, v1, v4

    .line 175
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 174
    invoke-static {p0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 173
    invoke-static {p0}, Lzz;->b(Ljava/util/function/Function;)Lwk;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    goto :goto_f

    :catch_1d
    move-exception p0

    .line 179
    :goto_f
    new-instance v0, Lcom/alibaba/fastjson2/c;

    invoke-direct {v0, v3, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68ba7345 -> :sswitch_16
        -0x644c0dfa -> :sswitch_15
        -0x6393895f -> :sswitch_14
        -0x338dde7c -> :sswitch_13
        -0x328cea9b -> :sswitch_12
        -0x3031dac2 -> :sswitch_11
        -0x1abe1be8 -> :sswitch_10
        -0x1463c54d -> :sswitch_f
        -0xe4f93c8 -> :sswitch_e
        -0x79e4957 -> :sswitch_d
        0x5f99c12 -> :sswitch_c
        0xcfdbeea -> :sswitch_b
        0x26e22da4 -> :sswitch_a
        0x43dae238 -> :sswitch_9
        0x47401d82 -> :sswitch_8
        0x50496a58 -> :sswitch_7
        0x532aeec2 -> :sswitch_6
        0x5cc10545 -> :sswitch_5
        0x6069a832 -> :sswitch_4
        0x61f056af -> :sswitch_3
        0x70c56ede -> :sswitch_2
        0x755e191e -> :sswitch_1
        0x76ff3ac9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;
    .locals 7

    .line 429
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 430
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 431
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 432
    aget-object v2, v2, v3

    .line 434
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 436
    invoke-static {v3, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 434
    invoke-virtual {v1, v0, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v3, "apply"

    .line 439
    sget-object v4, Labo;->m:Ljava/lang/invoke/MethodType;

    sget-object v6, Labo;->w:Ljava/lang/invoke/MethodType;

    .line 445
    invoke-static {v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v0

    .line 439
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 449
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 452
    new-instance v0, Laat$b;

    invoke-direct {v0, p0}, Laat$b;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static b(Ljava/lang/reflect/Method;)Ljava/util/function/ToLongFunction;
    .locals 7

    .line 402
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 404
    :try_start_0
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 405
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 409
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "applyAsLong"

    .line 412
    sget-object v3, Labo;->o:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->y:Ljava/lang/invoke/MethodType;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 418
    invoke-static {v6, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 412
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ToLongFunction;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 422
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 424
    new-instance v0, Laat$j;

    invoke-direct {v0, p0}, Laat$j;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static c(Ljava/lang/reflect/Constructor;)Ljava/util/function/BiFunction;
    .locals 10

    .line 553
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 554
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 555
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 556
    aget-object v4, v2, v3

    const/4 v5, 0x1

    .line 557
    aget-object v2, v2, v5

    .line 559
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v2, v7, v3

    .line 561
    invoke-static {v6, v4, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 559
    invoke-virtual {v1, v0, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    const-string v7, "apply"

    .line 564
    sget-object v8, Labo;->s:Ljava/lang/invoke/MethodType;

    sget-object v9, Labo;->C:Ljava/lang/invoke/MethodType;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v2, v5, v3

    .line 570
    invoke-static {v0, v4, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v6

    move-object v6, v0

    .line 564
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 574
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 577
    new-instance v0, Laat$a;

    invoke-direct {v0, p0}, Laat$a;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static c(Ljava/lang/reflect/Method;)Ljava/util/function/Supplier;
    .locals 8

    .line 482
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 483
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 484
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    .line 487
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 485
    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    const-string v3, "get"

    .line 491
    sget-object v4, Labo;->l:Ljava/lang/invoke/MethodType;

    sget-object v5, Labo;->v:Ljava/lang/invoke/MethodType;

    .line 497
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 491
    invoke-static/range {v2 .. v7}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Supplier;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 501
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 504
    new-instance v0, Laat$h;

    invoke-direct {v0, p0}, Laat$h;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static d(Ljava/lang/reflect/Method;)Ljava/util/function/BiFunction;
    .locals 9

    .line 509
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 510
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 511
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    .line 512
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    .line 513
    aget-object v5, v3, v4

    .line 517
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 518
    aget-object v3, v3, v7

    .line 522
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v3, v8, v4

    .line 523
    invoke-static {v1, v5, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    .line 520
    invoke-virtual {v2, v0, v6, v8}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 525
    new-array v6, v7, [Ljava/lang/Class;

    aput-object v3, v6, v4

    invoke-static {v1, v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-static {v1, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 527
    invoke-virtual {v2, v0, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    .line 532
    new-array v6, v7, [Ljava/lang/Class;

    aput-object v5, v6, v4

    invoke-static {v1, v0, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    move-object v7, v0

    move-object v6, v3

    :goto_0
    const-string v3, "apply"

    .line 535
    sget-object v4, Labo;->s:Ljava/lang/invoke/MethodType;

    sget-object v5, Labo;->C:Ljava/lang/invoke/MethodType;

    invoke-static/range {v2 .. v7}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 545
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 548
    new-instance v0, Laat$e;

    invoke-direct {v0, p0}, Laat$e;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;
    .locals 10

    .line 675
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    .line 677
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 679
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    .line 680
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 682
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    .line 683
    aget-object v2, v2, v4

    goto :goto_0

    .line 684
    :cond_0
    array-length v2, v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    move-object v2, v0

    .line 691
    :goto_0
    :try_start_0
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-static {v3, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 694
    invoke-virtual {v4, v0, v1, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    goto :goto_1

    .line 702
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 700
    invoke-virtual {v4, v0, v1, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    :goto_1
    move-object v8, v0

    const-string v5, "apply"

    .line 706
    sget-object v6, Labo;->m:Ljava/lang/invoke/MethodType;

    sget-object v7, Labo;->w:Ljava/lang/invoke/MethodType;

    .line 712
    invoke-static {v3, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    .line 706
    invoke-static/range {v4 .. v9}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 716
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 719
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 720
    new-instance v0, Laat$d;

    invoke-direct {v0, p0}, Laat$d;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 723
    :cond_2
    new-instance v0, Laat$c;

    invoke-direct {v0, p0}, Laat$c;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 687
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support parameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Ljava/lang/reflect/Method;)Ljava/util/function/ObjIntConsumer;
    .locals 10

    .line 727
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 729
    :try_start_0
    invoke-static {v0}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 730
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 734
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "accept"

    .line 737
    sget-object v3, Labo;->p:Ljava/lang/invoke/MethodType;

    sget-object v4, Labo;->z:Ljava/lang/invoke/MethodType;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 743
    invoke-static {v6, v0, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 737
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ObjIntConsumer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 747
    sput-object v0, Laat;->b:Ljava/lang/Throwable;

    .line 749
    new-instance v0, Laat$g;

    invoke-direct {v0, p0}, Laat$g;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method
