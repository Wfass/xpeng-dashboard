.class public Lcom/alibaba/fastjson2/util/DynamicClassLoader;
.super Ljava/lang/ClassLoader;
.source "DynamicClassLoader.java"


# static fields
.field private static final DOMAIN:Ljava/security/ProtectionDomain;

.field private static final classMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final instance:Lcom/alibaba/fastjson2/util/DynamicClassLoader;


# instance fields
.field private final classes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->classMapping:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->instance:Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    const/16 v0, 0x54

    new-array v1, v0, [Ljava/lang/Class;

    .line 34
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/reflect/Type;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v4, Ljava/lang/reflect/Field;

    aput-object v4, v1, v2

    const-class v2, Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-class v5, Lcom/alibaba/fastjson2/util/Fnv;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-class v5, Lcom/alibaba/fastjson2/JSONReader;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-class v5, Lcom/alibaba/fastjson2/reader/FieldReader;

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader;

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader1;

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader2;

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader3;

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader4;

    aput-object v5, v1, v2

    const/16 v2, 0xc

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader5;

    aput-object v5, v1, v2

    const/16 v2, 0xd

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader6;

    aput-object v5, v1, v2

    const/16 v2, 0xe

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader6;

    aput-object v5, v1, v2

    const/16 v2, 0xf

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader7;

    aput-object v5, v1, v2

    const/16 v2, 0x10

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader8;

    aput-object v5, v1, v2

    const/16 v2, 0x11

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader9;

    aput-object v5, v1, v2

    const/16 v2, 0x12

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader10;

    aput-object v5, v1, v2

    const/16 v2, 0x13

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader11;

    aput-object v5, v1, v2

    const/16 v2, 0x14

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReader12;

    aput-object v5, v1, v2

    const/16 v2, 0x15

    const-class v5, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    aput-object v5, v1, v2

    const/16 v2, 0x16

    const-class v5, Lcom/alibaba/fastjson2/JSONWriter;

    aput-object v5, v1, v2

    const/16 v2, 0x17

    const-class v5, Lcom/alibaba/fastjson2/JSONWriter$Context;

    aput-object v5, v1, v2

    const/16 v2, 0x18

    const-class v5, Lcom/alibaba/fastjson2/writer/FieldWriter;

    aput-object v5, v1, v2

    const/16 v2, 0x19

    const-class v5, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    aput-object v5, v1, v2

    const/16 v2, 0x1a

    const-class v5, Lcom/alibaba/fastjson2/filter/PropertyFilter;

    aput-object v5, v1, v2

    const/16 v2, 0x1b

    const-class v5, Lcom/alibaba/fastjson2/filter/NameFilter;

    aput-object v5, v1, v2

    const/16 v2, 0x1c

    const-class v5, Lcom/alibaba/fastjson2/filter/ValueFilter;

    aput-object v5, v1, v2

    const/16 v2, 0x1d

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    aput-object v5, v1, v2

    const/16 v2, 0x1e

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter1;

    aput-object v5, v1, v2

    const/16 v2, 0x1f

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter2;

    aput-object v5, v1, v2

    const/16 v2, 0x20

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter3;

    aput-object v5, v1, v2

    const/16 v2, 0x21

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter4;

    aput-object v5, v1, v2

    const/16 v2, 0x22

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter5;

    aput-object v5, v1, v2

    const/16 v2, 0x23

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter6;

    aput-object v5, v1, v2

    const/16 v2, 0x24

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter7;

    aput-object v5, v1, v2

    const/16 v2, 0x25

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter8;

    aput-object v5, v1, v2

    const/16 v2, 0x26

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter9;

    aput-object v5, v1, v2

    const/16 v2, 0x27

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter10;

    aput-object v5, v1, v2

    const/16 v2, 0x28

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter11;

    aput-object v5, v1, v2

    const/16 v2, 0x29

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriter12;

    aput-object v5, v1, v2

    const/16 v2, 0x2a

    const-class v5, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    aput-object v5, v1, v2

    const/16 v2, 0x2b

    const-class v5, Lcom/alibaba/fastjson2/util/JDKUtils;

    aput-object v5, v1, v2

    const/16 v2, 0x2c

    const-class v5, Lcom/alibaba/fastjson2/util/TypeUtils;

    aput-object v5, v1, v2

    const/16 v2, 0x2d

    const-class v5, Lcom/alibaba/fastjson2/util/DateUtils;

    aput-object v5, v1, v2

    const/16 v2, 0x2e

    const-class v5, Lcom/alibaba/fastjson2/PropertyNamingStrategy;

    aput-object v5, v1, v2

    const/16 v2, 0x2f

    const-class v5, Ljava/util/Collection;

    aput-object v5, v1, v2

    const/16 v2, 0x30

    const-class v5, Ljava/util/Set;

    aput-object v5, v1, v2

    const/16 v2, 0x31

    const-class v5, Ljava/util/List;

    aput-object v5, v1, v2

    const/16 v2, 0x32

    const-class v5, Ljava/util/ArrayList;

    aput-object v5, v1, v2

    const/16 v2, 0x33

    const-class v5, Ljava/util/LinkedList;

    aput-object v5, v1, v2

    const/16 v2, 0x34

    const-class v5, Ljava/util/Map;

    aput-object v5, v1, v2

    const/16 v2, 0x35

    const-class v5, Ljava/util/HashMap;

    aput-object v5, v1, v2

    const/16 v2, 0x36

    const-class v5, Ljava/util/LinkedHashMap;

    aput-object v5, v1, v2

    const/16 v2, 0x37

    const-class v5, Ljava/util/EnumSet;

    aput-object v5, v1, v2

    const/16 v2, 0x38

    const-class v5, Ljava/util/Optional;

    aput-object v5, v1, v2

    const/16 v2, 0x39

    const-class v5, Ljava/util/OptionalInt;

    aput-object v5, v1, v2

    const/16 v2, 0x3a

    const-class v5, Ljava/util/OptionalLong;

    aput-object v5, v1, v2

    const/16 v2, 0x3b

    const-class v5, Ljava/util/Date;

    aput-object v5, v1, v2

    const/16 v2, 0x3c

    const-class v5, Ljava/util/Calendar;

    aput-object v5, v1, v2

    const/16 v2, 0x3d

    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v5, v1, v2

    const/16 v2, 0x3e

    const-class v5, Ljava/util/function/Supplier;

    aput-object v5, v1, v2

    const/16 v2, 0x3f

    const-class v5, Ljava/util/function/Consumer;

    aput-object v5, v1, v2

    const/16 v2, 0x40

    const-class v5, Ljava/lang/Exception;

    aput-object v5, v1, v2

    const/16 v2, 0x41

    const-class v5, Ljava/lang/Enum;

    aput-object v5, v1, v2

    const/16 v2, 0x42

    const-class v5, Ljava/lang/Class;

    aput-object v5, v1, v2

    const/16 v2, 0x43

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v1, v2

    const/16 v2, 0x44

    const-class v5, Ljava/lang/Byte;

    aput-object v5, v1, v2

    const/16 v2, 0x45

    const-class v5, Ljava/lang/Short;

    aput-object v5, v1, v2

    const/16 v2, 0x46

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v1, v2

    const/16 v2, 0x47

    const-class v5, Ljava/lang/Long;

    aput-object v5, v1, v2

    const/16 v2, 0x48

    const-class v5, Ljava/lang/Float;

    aput-object v5, v1, v2

    const/16 v2, 0x49

    const-class v5, Ljava/lang/Double;

    aput-object v5, v1, v2

    const/16 v2, 0x4a

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v2

    const/16 v2, 0x4b

    const-class v5, Ljava/math/BigInteger;

    aput-object v5, v1, v2

    const/16 v2, 0x4c

    const-class v5, Ljava/math/BigDecimal;

    aput-object v5, v1, v2

    const/16 v2, 0x4d

    const-class v5, Ljava/time/Instant;

    aput-object v5, v1, v2

    const/16 v2, 0x4e

    const-class v5, Ljava/time/LocalTime;

    aput-object v5, v1, v2

    const/16 v2, 0x4f

    const-class v5, Ljava/time/LocalDate;

    aput-object v5, v1, v2

    const/16 v2, 0x50

    const-class v5, Ljava/time/LocalDateTime;

    aput-object v5, v1, v2

    const/16 v2, 0x51

    const-class v5, Ljava/time/ZonedDateTime;

    aput-object v5, v1, v2

    const/16 v2, 0x52

    const-class v5, Lcom/alibaba/fastjson2/reader/CharArrayValueConsumer;

    aput-object v5, v1, v2

    const/16 v2, 0x53

    const-class v5, Lcom/alibaba/fastjson2/reader/ByteArrayValueConsumer;

    aput-object v5, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 130
    aget-object v5, v1, v2

    .line 131
    sget-object v6, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->classMapping:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sun.misc.Unsafe"

    const-string v1, "java.sql.Timestamp"

    const-string v2, "java.sql.Date"

    .line 134
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 139
    aget-object v1, v0, v3

    .line 141
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 142
    sget-object v5, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->classMapping:Ljava/util/Map;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 150
    :cond_1
    const-class v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    .line 151
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$DynamicClassLoader$gaYgmXMNo1a92bYtPau9jSuIQ9I;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/util/-$$Lambda$DynamicClassLoader$gaYgmXMNo1a92bYtPau9jSuIQ9I;-><init>(Ljava/lang/Class;)V

    .line 150
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    sput-object v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-static {}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->classes:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/fastjson2/util/DynamicClassLoader;
    .locals 1

    .line 244
    sget-object v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->instance:Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    return-object v0
.end method

.method static getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 164
    const-class v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 173
    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$gaYgmXMNo1a92bYtPau9jSuIQ9I(Ljava/lang/Class;)Ljava/security/ProtectionDomain;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 221
    sget-object v5, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public definePackage(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v1, p0

    move-object v2, p1

    .line 211
    invoke-super/range {v1 .. v9}, Ljava/lang/ClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    return-void
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_2

    if-ne v1, p1, :cond_1

    return v0

    .line 237
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->classMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->classes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    return-object v0

    .line 190
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 195
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 198
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 204
    :catch_1
    :cond_2
    throw p2
.end method

.method public loadClass(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 215
    sget-object v5, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p2

    .line 216
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/DynamicClassLoader;->classes:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
