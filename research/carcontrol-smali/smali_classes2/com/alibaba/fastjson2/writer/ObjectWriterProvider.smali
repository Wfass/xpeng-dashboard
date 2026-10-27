.class public Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;
.super Ljava/lang/Object;
.source "ObjectWriterProvider.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;


# static fields
.field static final ENUM:I = 0x4000

.field static final NAME_COMPATIBLE_WITH_FILED:I = 0x40

.field static final NOT_REFERENCES_TYPE_HASH_CODES:[I

.field static final PRIMITIVE_HASH_CODES:[I

.field static final TYPE_DATE_MASK:I = 0x10

.field static final TYPE_DECIMAL_MASK:I = 0x8

.field static final TYPE_ENUM_MASK:I = 0x20

.field static final TYPE_INT32_MASK:I = 0x2

.field static final TYPE_INT64_MASK:I = 0x4


# instance fields
.field final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field

.field final cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ">;"
        }
    .end annotation
.end field

.field final creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

.field final mixInCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/modules/ObjectWriterModule;",
            ">;"
        }
    .end annotation
.end field

.field namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

.field volatile userDefineMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x27

    new-array v1, v0, [Ljava/lang/Class;

    .line 414
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Boolean;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/Character;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-class v7, Ljava/lang/Byte;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-class v7, Ljava/lang/Short;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x7

    aput-object v2, v1, v7

    const/16 v2, 0x8

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v7, 0x9

    aput-object v2, v1, v7

    const/16 v2, 0xa

    const-class v7, Ljava/lang/Long;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v7, 0xb

    aput-object v2, v1, v7

    const/16 v2, 0xc

    const-class v7, Ljava/lang/Float;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v7, 0xd

    aput-object v2, v1, v7

    const/16 v2, 0xe

    const-class v7, Ljava/lang/Double;

    aput-object v7, v1, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v7, 0xf

    aput-object v2, v1, v7

    const/16 v2, 0x10

    const-class v7, Ljava/math/BigInteger;

    aput-object v7, v1, v2

    const/16 v2, 0x11

    const-class v7, Ljava/math/BigDecimal;

    aput-object v7, v1, v2

    const/16 v2, 0x12

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v2

    const/16 v2, 0x13

    const-class v7, Ljava/util/Currency;

    aput-object v7, v1, v2

    const/16 v2, 0x14

    const-class v7, Ljava/util/Date;

    aput-object v7, v1, v2

    const/16 v2, 0x15

    const-class v7, Ljava/util/Calendar;

    aput-object v7, v1, v2

    const/16 v2, 0x16

    const-class v7, Ljava/util/UUID;

    aput-object v7, v1, v2

    const/16 v2, 0x17

    const-class v7, Ljava/util/Locale;

    aput-object v7, v1, v2

    const/16 v2, 0x18

    const-class v7, Ljava/time/LocalTime;

    aput-object v7, v1, v2

    const/16 v2, 0x19

    const-class v7, Ljava/time/LocalDate;

    aput-object v7, v1, v2

    const/16 v2, 0x1a

    const-class v7, Ljava/time/LocalDateTime;

    aput-object v7, v1, v2

    const/16 v2, 0x1b

    const-class v7, Ljava/time/Instant;

    aput-object v7, v1, v2

    const/16 v2, 0x1c

    const-class v7, Ljava/time/ZoneId;

    aput-object v7, v1, v2

    const/16 v2, 0x1d

    const-class v7, Ljava/time/ZonedDateTime;

    aput-object v7, v1, v2

    const/16 v2, 0x1e

    const-class v7, Ljava/time/OffsetDateTime;

    aput-object v7, v1, v2

    const/16 v2, 0x1f

    const-class v7, Ljava/time/OffsetTime;

    aput-object v7, v1, v2

    const/16 v2, 0x20

    const-class v7, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v7, v1, v2

    const/16 v2, 0x21

    const-class v7, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v7, v1, v2

    const/16 v2, 0x22

    const-class v7, Ljava/lang/String;

    aput-object v7, v1, v2

    const/16 v2, 0x23

    const-class v7, Ljava/lang/StackTraceElement;

    aput-object v7, v1, v2

    .line 451
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x24

    aput-object v2, v1, v7

    .line 452
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x25

    aput-object v2, v1, v7

    .line 453
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v7, 0x26

    aput-object v2, v1, v7

    new-array v2, v0, [I

    :goto_0
    if-ge v3, v0, :cond_0

    .line 458
    aget-object v7, v1, v3

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    aput v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 461
    sput-object v2, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->PRIMITIVE_HASH_CODES:[I

    const/16 v0, 0x2a

    .line 463
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 464
    array-length v1, v0

    sub-int/2addr v1, v4

    const-class v2, Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 465
    array-length v1, v0

    sub-int/2addr v1, v5

    const-class v2, [I

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 466
    array-length v1, v0

    sub-int/2addr v1, v6

    const-class v2, [J

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    .line 467
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 468
    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->NOT_REFERENCES_TYPE_HASH_CODES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    check-cast v0, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;-><init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->init()V

    .line 53
    sget-object v0, Lcom/alibaba/fastjson2/JSONFactory;->CREATOR:Ljava/lang/String;

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
    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/alibaba/fastjson2/util/JDKUtils;->GRAAL:Z

    if-nez v1, :cond_4

    .line 62
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreatorASM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    if-nez v0, :cond_6

    .line 68
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    goto :goto_2

    .line 56
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 72
    :cond_6
    :goto_2
    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 73
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->init()V

    .line 78
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    return-void
.end method

.method private getObjectWriterInternal(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 6

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
    invoke-virtual {p0, v0, v0, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 297
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    if-eqz v0, :cond_1

    .line 299
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_1

    .line 301
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.protobuf.GeneratedMessageV3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move p3, v2

    .line 304
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v3, "springfox.documentation.spring.web.json.Json"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cn.hutool.json.JSONArray"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move p3, v2

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_1

    .line 316
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_1
    if-eqz v3, :cond_5

    return-object v3

    .line 322
    :cond_5
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne p2, p1, :cond_6

    move-object p1, v0

    :cond_6
    if-eqz p3, :cond_8

    .line 329
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v3, :cond_7

    return-object v3

    :cond_7
    move-object p2, v0

    move p3, v2

    goto :goto_2

    :cond_8
    move-object p2, v0

    :cond_9
    :goto_2
    const/4 v0, 0x1

    if-eqz p3, :cond_a

    .line 338
    const-class v4, Ljava/lang/Iterable;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-class v4, Ljava/util/Collection;

    .line 339
    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v2

    goto :goto_3

    :cond_a
    move v4, v0

    :goto_3
    if-eqz v4, :cond_e

    move v4, v2

    .line 345
    :goto_4
    iget-object v5, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 346
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;

    .line 347
    invoke-interface {v3, p1, p2}, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    if-eqz v3, :cond_d

    if-eqz p3, :cond_b

    .line 350
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_5

    .line 351
    :cond_b
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_5
    if-eqz p1, :cond_c

    move-object v3, p1

    :cond_c
    return-object v3

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 361
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_6
    move v2, v4

    goto/16 :goto_7

    :sswitch_0
    const-string v0, "android.net.Uri$OpaqueUri"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    const/16 v2, 0x9

    goto/16 :goto_7

    :sswitch_1
    const-string v0, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_7

    :sswitch_2
    const-string v0, "com.google.common.collect.LinkedHashMultimap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    const/4 v2, 0x7

    goto :goto_7

    :sswitch_3
    const-string v0, "com.google.common.collect.ArrayListMultimap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    const/4 v2, 0x6

    goto :goto_7

    :sswitch_4
    const-string v0, "com.google.common.collect.TreeMultimap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6

    :cond_13
    const/4 v2, 0x5

    goto :goto_7

    :sswitch_5
    const-string v0, "com.google.common.collect.LinkedListMultimap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_6

    :cond_14
    const/4 v2, 0x4

    goto :goto_7

    :sswitch_6
    const-string v0, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6

    :cond_15
    const/4 v2, 0x3

    goto :goto_7

    :sswitch_7
    const-string v0, "android.net.Uri$StringUri"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_6

    :cond_16
    const/4 v2, 0x2

    goto :goto_7

    :sswitch_8
    const-string v2, "com.google.common.collect.HashMultimap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_6

    :cond_17
    move v2, v0

    goto :goto_7

    :sswitch_9
    const-string v0, "android.net.Uri$HierarchicalUri"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    :goto_7
    packed-switch v2, :pswitch_data_0

    goto :goto_8

    .line 370
    :pswitch_0
    sget-object v3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplList;

    goto :goto_8

    .line 373
    :pswitch_1
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v3

    goto :goto_8

    .line 367
    :pswitch_2
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/GuavaSupport;->createAsMapWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    goto :goto_8

    .line 378
    :pswitch_3
    sget-object v3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    :goto_8
    if-nez v3, :cond_19

    if-nez p3, :cond_19

    .line 384
    const-class v0, Ljava/util/Map;

    .line 386
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 387
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->isExtendedMap(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 388
    invoke-static {p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object p1

    return-object p1

    :cond_19
    if-nez v3, :cond_1c

    .line 392
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getCreator()Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    move-result-object v0

    if-eqz p3, :cond_1a

    .line 395
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    goto :goto_9

    :cond_1a
    const-wide/16 v1, 0x0

    .line 393
    :goto_9
    invoke-virtual {v0, p2, v1, v2, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v3

    if-eqz p3, :cond_1b

    .line 399
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_a

    .line 400
    :cond_1b
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_a
    if-eqz p1, :cond_1c

    move-object v3, p1

    :cond_1c
    return-object v3

    nop

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
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static isNotReferenceDetect(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 477
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->NOT_REFERENCES_TYPE_HASH_CODES:[I

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

.method public static isPrimitiveOrEnum(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 472
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->PRIMITIVE_HASH_CODES:[I

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

.method static synthetic lambda$cleanup$0(Ljava/lang/ClassLoader;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 532
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$cleanup$1(Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 538
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {v0, p2, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$cleanup$2(Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;Ljava/util/Map$Entry;)Z
    .locals 1

    .line 542
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    invoke-static {v0, p2, p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result p0

    return p0
.end method

.method static match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 490
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_0

    return v0

    .line 495
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    return v1

    .line 499
    :cond_1
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    if-eqz p0, :cond_4

    .line 500
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    .line 501
    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueType:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 502
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_2

    return v0

    .line 505
    :cond_2
    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyType:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 506
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 507
    :cond_4
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    if-eqz p0, :cond_6

    .line 508
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;

    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplCollection;->itemType:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 509
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    .line 510
    :cond_6
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;

    if-eqz p0, :cond_8

    .line 511
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;

    iget-object p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplOptional;->valueType:Ljava/lang/reflect/Type;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 512
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-ne p0, p2, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0

    .line 513
    :cond_8
    instance-of p0, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    .line 514
    invoke-virtual {p3, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->fieldWriters:Ljava/util/List;

    move v2, v1

    .line 516
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 517
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 518
    instance-of v4, v3, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    if-eqz v4, :cond_9

    .line 519
    check-cast v3, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    iget-object v3, v3, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 520
    invoke-static {p0, v3, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->match(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    return v1
.end method


# virtual methods
.method public cleanup(Ljava/lang/Class;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/Class;)V

    return-void
.end method

.method public cleanup(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$7ZcrBYqQGScG2xX-dObQOcCBGrY;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$7ZcrBYqQGScG2xX-dObQOcCBGrY;-><init>(Ljava/lang/ClassLoader;)V

    .line 532
    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 535
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 537
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$nCbLUvJVCU9rqO94MgB9gQOtJj8;

    invoke-direct {v2, p1, v0}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$nCbLUvJVCU9rqO94MgB9gQOtJj8;-><init>(Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 541
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$UQLYKcbQxJ-6j0v8xbSHGwYBmhw;

    invoke-direct {v2, p1, v0}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterProvider$UQLYKcbQxJ-6j0v8xbSHGwYBmhw;-><init>(Ljava/lang/ClassLoader;Ljava/util/IdentityHashMap;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 545
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->cleanupCache(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public cleanupMixIn()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->NeverUseThisValueExceptDefaultValue:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/PropertyNamingStrategy;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;

    .line 252
    invoke-interface {v1}, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCreator()Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;
    .locals 1

    .line 114
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getContextWriterCreator()Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->creator:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    return-object v0
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;

    .line 226
    invoke-interface {v1}, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 230
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 2

    const/4 v0, 0x0

    .line 235
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;

    .line 237
    invoke-interface {v1}, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/modules/ObjectWriterAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMixIn(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/modules/ObjectWriterModule;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getNamingStrategy()Lcom/alibaba/fastjson2/PropertyNamingStrategy;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p0, p1, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    .line 269
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 270
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    if-eqz p3, :cond_0

    .line 281
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 285
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriterInternal(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getObjectWriterFromCache(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    if-eqz p3, :cond_0

    .line 275
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    goto :goto_0

    .line 276
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :goto_0
    return-object p1
.end method

.method public init()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public mixIn(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    if-nez p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public register(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 4

    .line 126
    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    .line 127
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt32;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto/16 :goto_5

    .line 128
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

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
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 142
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 140
    :cond_5
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 144
    :cond_6
    const-class v0, Ljava/util/Date;

    if-ne p1, v0, :cond_9

    if-eqz p2, :cond_8

    .line 145
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    if-ne p2, v0, :cond_7

    goto :goto_2

    .line 148
    :cond_7
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 146
    :cond_8
    :goto_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 150
    :cond_9
    const-class v0, Ljava/lang/Enum;

    if-ne p1, v0, :cond_e

    if-nez p2, :cond_a

    .line 152
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 154
    :cond_a
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    .line 133
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    if-ne p2, v0, :cond_c

    goto :goto_4

    .line 136
    :cond_c
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_5

    .line 134
    :cond_d
    :goto_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    :cond_e
    :goto_5
    if-eqz p3, :cond_f

    .line 158
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_6

    :cond_f
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    :goto_6
    if-nez p2, :cond_10

    .line 161
    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1

    .line 164
    :cond_10
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public register(Lcom/alibaba/fastjson2/modules/ObjectWriterModule;)Z
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 196
    iget-object v3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-interface {p1, p0}, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;->init(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v1
.end method

.method public registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public registerIfAbsent(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    if-eqz p3, :cond_0

    .line 172
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 173
    :goto_0
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public setCompatibleWithFieldName(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 90
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    goto :goto_0

    .line 92
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v2, -0x41

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    :goto_0
    return-void
.end method

.method public setNamingStrategy(Lcom/alibaba/fastjson2/PropertyNamingStrategy;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->namingStrategy:Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    return-void
.end method

.method public unregister(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 1

    const/4 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->unregister(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public unregister(Ljava/lang/reflect/Type;Z)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    if-eqz p2, :cond_0

    .line 181
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 182
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    return-object p1
.end method

.method public unregister(Lcom/alibaba/fastjson2/modules/ObjectWriterModule;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregister(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Z
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->unregister(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Z

    move-result p1

    return p1
.end method

.method public unregister(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/writer/ObjectWriter;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 190
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cacheFieldBased:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 191
    :goto_0
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
