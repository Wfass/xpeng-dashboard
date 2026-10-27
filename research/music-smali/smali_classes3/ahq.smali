.class public Lahq;
.super Ljava/lang/Object;
.source "ObjectWriterProvider.java"

# interfaces
.implements Lsk;


# static fields
.field static final h:[I

.field static final i:[I


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Laem;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Laem;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lafe;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lso;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/alibaba/fastjson2/aj;

.field volatile g:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x27

    .line 414
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/Boolean;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Character;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Ljava/lang/Byte;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Short;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Integer;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Long;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v6, 0xd

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    const/16 v6, 0xe

    aput-object v1, v0, v6

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v6, 0xf

    aput-object v1, v0, v6

    const-class v1, Ljava/math/BigInteger;

    const/16 v6, 0x10

    aput-object v1, v0, v6

    const-class v1, Ljava/math/BigDecimal;

    const/16 v6, 0x11

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/String;

    const/16 v6, 0x12

    aput-object v1, v0, v6

    const-class v1, Ljava/util/Currency;

    const/16 v6, 0x13

    aput-object v1, v0, v6

    const-class v1, Ljava/util/Date;

    const/16 v6, 0x14

    aput-object v1, v0, v6

    const-class v1, Ljava/util/Calendar;

    const/16 v6, 0x15

    aput-object v1, v0, v6

    const-class v1, Ljava/util/UUID;

    const/16 v6, 0x16

    aput-object v1, v0, v6

    const-class v1, Ljava/util/Locale;

    const/16 v6, 0x17

    aput-object v1, v0, v6

    const-class v1, Ljava/time/LocalTime;

    const/16 v6, 0x18

    aput-object v1, v0, v6

    const-class v1, Ljava/time/LocalDate;

    const/16 v6, 0x19

    aput-object v1, v0, v6

    const-class v1, Ljava/time/LocalDateTime;

    const/16 v6, 0x1a

    aput-object v1, v0, v6

    const-class v1, Ljava/time/Instant;

    const/16 v6, 0x1b

    aput-object v1, v0, v6

    const-class v1, Ljava/time/ZoneId;

    const/16 v6, 0x1c

    aput-object v1, v0, v6

    const-class v1, Ljava/time/ZonedDateTime;

    const/16 v6, 0x1d

    aput-object v1, v0, v6

    const-class v1, Ljava/time/OffsetDateTime;

    const/16 v6, 0x1e

    aput-object v1, v0, v6

    const-class v1, Ljava/time/OffsetTime;

    const/16 v6, 0x1f

    aput-object v1, v0, v6

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v6, 0x20

    aput-object v1, v0, v6

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v6, 0x21

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/String;

    const/16 v6, 0x22

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/StackTraceElement;

    const/16 v6, 0x23

    aput-object v1, v0, v6

    .line 451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v6, 0x24

    aput-object v1, v0, v6

    .line 452
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v6, 0x25

    aput-object v1, v0, v6

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v6, 0x26

    aput-object v1, v0, v6

    .line 456
    array-length v1, v0

    new-array v1, v1, [I

    .line 457
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 458
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 461
    sput-object v1, Lahq;->h:[I

    .line 463
    array-length v0, v1

    add-int/2addr v0, v5

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 464
    array-length v1, v0

    sub-int/2addr v1, v3

    const-class v2, Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 465
    array-length v1, v0

    sub-int/2addr v1, v4

    const-class v2, [I

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 466
    array-length v1, v0

    sub-int/2addr v1, v5

    const-class v2, [J

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 467
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 468
    sput-object v0, Lahq;->i:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    check-cast v0, Lcom/alibaba/fastjson2/aj;

    invoke-direct {p0, v0}, Lahq;-><init>(Lcom/alibaba/fastjson2/aj;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/aj;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lahq;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lahq;->e:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lahq;->d()V

    .line 53
    sget-object v0, Lcom/alibaba/fastjson2/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x422aac39

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x17a7b

    if-eq v1, v2, :cond_1

    const v2, 0x40afd6bd

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "reflect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "asm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "lambda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_5

    const/4 v0, 0x0

    .line 61
    :try_start_0
    sget-boolean v1, Labf;->r:Z

    if-nez v1, :cond_4

    sget-boolean v1, Labf;->s:Z

    if-nez v1, :cond_4

    .line 62
    sget-object v0, Laff;->e:Laff;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    if-nez v0, :cond_6

    .line 68
    sget-object v0, Lafe;->a:Lafe;

    goto :goto_2

    .line 56
    :cond_5
    sget-object v0, Lafe;->a:Lafe;

    .line 72
    :cond_6
    :goto_2
    iput-object v0, p0, Lahq;->d:Lafe;

    .line 73
    iput-object p1, p0, Lahq;->f:Lcom/alibaba/fastjson2/aj;

    return-void
.end method

.method private c(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;
    .locals 7

    .line 289
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 290
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0, v0, v0, p3}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_6

    if-eqz v0, :cond_1

    .line 299
    const-class v5, Ljava/lang/Object;

    if-eq v0, v5, :cond_1

    .line 301
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.protobuf.GeneratedMessageV3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move p3, v4

    .line 304
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x2823c693

    if-eq v5, v6, :cond_3

    const v6, 0x78085071

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "cn.hutool.json.JSONArray"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_3
    const-string v5, "springfox.documentation.spring.web.json.Json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v3, :cond_5

    goto :goto_2

    :cond_5
    move p3, v4

    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 315
    iget-object v5, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laem;

    goto :goto_3

    .line 316
    :cond_7
    iget-object v5, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laem;

    :goto_3
    if-eqz v5, :cond_8

    return-object v5

    .line 322
    :cond_8
    invoke-static {p2}, Labo;->c(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-ne p2, p1, :cond_9

    move-object p1, v0

    :cond_9
    if-eqz p3, :cond_c

    .line 329
    iget-object p2, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Laem;

    if-eqz v5, :cond_a

    return-object v5

    :cond_a
    move p3, v4

    goto :goto_4

    :cond_b
    move-object v0, p2

    :cond_c
    :goto_4
    if-eqz p3, :cond_d

    .line 338
    const-class p2, Ljava/lang/Iterable;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-class p2, Ljava/util/Collection;

    .line 339
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_d

    move p2, v4

    goto :goto_5

    :cond_d
    move p2, v3

    :goto_5
    if-eqz p2, :cond_11

    move p2, v4

    .line 345
    :goto_6
    iget-object v6, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p2, v6, :cond_11

    .line 346
    iget-object v5, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lso;

    .line 347
    invoke-interface {v5, p1, v0}, Lso;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v5

    if-eqz v5, :cond_10

    if-eqz p3, :cond_e

    .line 350
    iget-object p2, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    goto :goto_7

    .line 351
    :cond_e
    iget-object p2, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    :goto_7
    if-eqz p1, :cond_f

    goto :goto_8

    :cond_f
    move-object p1, v5

    :goto_8
    return-object p1

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 361
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_9

    :sswitch_0
    const-string p2, "android.net.Uri$OpaqueUri"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 v2, 0x7

    goto :goto_9

    :sswitch_1
    const-string p2, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 v2, 0x5

    goto :goto_9

    :sswitch_2
    const-string p2, "com.google.common.collect.LinkedHashMultimap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 v2, 0x2

    goto :goto_9

    :sswitch_3
    const-string p2, "com.google.common.collect.ArrayListMultimap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 v2, 0x3

    goto :goto_9

    :sswitch_4
    const-string p2, "com.google.common.collect.TreeMultimap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 v2, 0x4

    goto :goto_9

    :sswitch_5
    const-string p2, "com.google.common.collect.LinkedListMultimap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    move v2, v3

    goto :goto_9

    :sswitch_6
    const-string p2, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/4 v2, 0x6

    goto :goto_9

    :sswitch_7
    const-string p2, "android.net.Uri$StringUri"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 v2, 0x9

    goto :goto_9

    :sswitch_8
    const-string p2, "com.google.common.collect.HashMultimap"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    move v2, v4

    goto :goto_9

    :sswitch_9
    const-string p2, "android.net.Uri$HierarchicalUri"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    const/16 v2, 0x8

    :cond_12
    :goto_9
    packed-switch v2, :pswitch_data_0

    goto :goto_a

    .line 378
    :pswitch_0
    sget-object v5, Lahl;->a:Lahl;

    goto :goto_a

    .line 373
    :pswitch_1
    invoke-static {v0}, Laha;->a(Ljava/lang/Class;)Laha;

    move-result-object v5

    goto :goto_a

    .line 370
    :pswitch_2
    sget-object v5, Lagt;->a:Lagt;

    goto :goto_a

    .line 367
    :pswitch_3
    invoke-static {v0}, Labd;->a(Ljava/lang/Class;)Laem;

    move-result-object v5

    :goto_a
    if-nez v5, :cond_13

    if-nez p3, :cond_13

    .line 384
    const-class p2, Ljava/util/Map;

    .line 386
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 387
    invoke-static {v0}, Laax;->h(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 388
    invoke-static {v0}, Laha;->a(Ljava/lang/Class;)Laha;

    move-result-object p1

    return-object p1

    :cond_13
    if-nez v5, :cond_16

    .line 392
    invoke-virtual {p0}, Lahq;->c()Lafe;

    move-result-object p2

    if-eqz p3, :cond_14

    .line 395
    sget-object v1, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    goto :goto_b

    :cond_14
    const-wide/16 v1, 0x0

    .line 393
    :goto_b
    invoke-virtual {p2, v0, v1, v2, p0}, Lafe;->a(Ljava/lang/Class;JLahq;)Laem;

    move-result-object v5

    if-eqz p3, :cond_15

    .line 399
    iget-object p2, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    goto :goto_c

    .line 400
    :cond_15
    iget-object p2, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    :goto_c
    if-eqz p1, :cond_16

    move-object v5, p1

    :cond_16
    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x6a02a6a5 -> :sswitch_9
        -0x39fc2b70 -> :sswitch_8
        -0x31ea2a2d -> :sswitch_7
        -0x23f72d4e -> :sswitch_6
        -0x23c6d267 -> :sswitch_5
        -0x134a08e0 -> :sswitch_4
        0x10bbc8bb -> :sswitch_3
        0x2317ce09 -> :sswitch_2
        0x5b0f3e73 -> :sswitch_1
        0x683df7c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 472
    sget-object v0, Lahq;->h:[I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    .line 473
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Enum;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static d(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 477
    sget-object v0, Lahq;->i:[I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    .line 478
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Enum;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Laem;Z)Laem;
    .locals 4

    .line 126
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 127
    sget-object v0, Lagj;->a:Lagj;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto/16 :goto_5

    .line 128
    :cond_1
    :goto_0
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto/16 :goto_5

    .line 132
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_b

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    goto :goto_3

    .line 138
    :cond_3
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_5

    .line 139
    sget-object v0, Lafp;->a:Lafp;

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 142
    :cond_4
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_5

    .line 140
    :cond_5
    :goto_1
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_5

    .line 144
    :cond_6
    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_8

    .line 145
    sget-object v0, Laga;->o:Laga;

    if-ne p2, v0, :cond_7

    goto :goto_2

    .line 148
    :cond_7
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_5

    .line 146
    :cond_8
    :goto_2
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_5

    .line 150
    :cond_9
    const-class v0, Ljava/lang/Enum;

    if-ne p1, v0, :cond_e

    if-nez p2, :cond_a

    .line 152
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_5

    .line 154
    :cond_a
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_5

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    .line 133
    sget-object v0, Lagm;->a:Lagm;

    if-ne p2, v0, :cond_c

    goto :goto_4

    .line 136
    :cond_c
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_5

    .line 134
    :cond_d
    :goto_4
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    :cond_e
    :goto_5
    if-eqz p3, :cond_f

    .line 158
    iget-object p3, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_6

    :cond_f
    iget-object p3, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    :goto_6
    if-nez p2, :cond_10

    .line 161
    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    return-object p1

    .line 164
    :cond_10
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, p2, v0}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;
    .locals 0

    if-eqz p3, :cond_0

    .line 275
    iget-object p2, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    goto :goto_0

    .line 276
    :cond_0
    iget-object p2, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laem;

    :goto_0
    return-object p1
.end method

.method public a()Lcom/alibaba/fastjson2/aj;
    .locals 1

    .line 82
    iget-object v0, p0, Lahq;->f:Lcom/alibaba/fastjson2/aj;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 212
    iget-object v0, p0, Lahq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/aj;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lahq;->f:Lcom/alibaba/fastjson2/aj;

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    if-nez p2, :cond_0

    .line 102
    iget-object p2, p0, Lahq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lahq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_0
    iget-object p2, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lqe;Ljava/lang/Class;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lahq;->f:Lcom/alibaba/fastjson2/aj;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson2/aj;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/aj;

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lahq;->f:Lcom/alibaba/fastjson2/aj;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/aj;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lqe;->p:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 251
    iget-object v1, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso;

    .line 252
    invoke-interface {v1}, Lso;->a()Lsn;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    invoke-interface {v1, p1, p2}, Lsn;->a(Lqe;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lqe;Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso;

    .line 226
    invoke-interface {v1}, Lso;->a()Lsn;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lsn;->a(Lqe;Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lqe;Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 2

    const/4 v0, 0x0

    .line 235
    :goto_0
    iget-object v1, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lso;

    .line 237
    invoke-interface {v1}, Lso;->a()Lsn;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lsn;->a(Lqe;Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 90
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    goto :goto_0

    .line 92
    :cond_0
    iget-wide v0, p0, Lahq;->g:J

    const-wide/16 v2, -0x41

    and-long/2addr v0, v2

    iput-wide v0, p0, Lahq;->g:J

    :goto_0
    return-void
.end method

.method public a(Lso;)Z
    .locals 4

    .line 195
    iget-object v0, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 196
    iget-object v3, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-interface {p1, p0}, Lso;->a(Lahq;)V

    .line 203
    iget-object v0, p0, Lahq;->e:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v1
.end method

.method public b(Ljava/lang/Class;)Laem;
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, p1, v0}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;
    .locals 1

    if-eqz p3, :cond_0

    .line 281
    iget-object v0, p0, Lahq;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem;

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lahq;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laem;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lahq;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public b()V
    .locals 1

    .line 110
    iget-object v0, p0, Lahq;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public c()Lafe;
    .locals 1

    .line 114
    invoke-static {}, Lcom/alibaba/fastjson2/d;->g()Lafe;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lahq;->d:Lafe;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 216
    iget-object v0, p0, Lahq;->e:Ljava/util/List;

    new-instance v1, Lafc;

    invoke-direct {v1, p0}, Lafc;-><init>(Lahq;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
