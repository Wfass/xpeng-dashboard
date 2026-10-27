.class public Laba;
.super Ljava/lang/ClassLoader;
.source "DynamicClassLoader.java"


# static fields
.field private static final a:Ljava/security/ProtectionDomain;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final c:Laba;


# instance fields
.field private final d:Ljava/util/Map;
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
    .locals 7

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Laba;->b:Ljava/util/Map;

    .line 29
    new-instance v0, Laba;

    invoke-direct {v0}, Laba;-><init>()V

    sput-object v0, Laba;->c:Laba;

    const/16 v0, 0x54

    .line 34
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/reflect/Field;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-class v1, Labc;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/fastjson2/u;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-class v1, Lsu;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-class v1, Lwk;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-class v1, Lwl;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-class v1, Lwp;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-class v1, Lwq;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-class v1, Lwr;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-class v1, Lws;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-class v1, Lwt;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-class v1, Lwt;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-class v1, Lwu;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-class v1, Lwv;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-class v1, Lww;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-class v1, Lwm;

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-class v1, Lwn;

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-class v1, Lwo;

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const-class v1, Lwx;

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/fastjson2/ab;

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/fastjson2/ab$a;

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const-class v1, Labq;

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const-class v1, Lqu;

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const-class v1, Lqt;

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const-class v1, Lqr;

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const-class v1, Lqw;

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    const-class v1, Laem;

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    const-class v1, Laen;

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    const-class v1, Laer;

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    const-class v1, Laes;

    const/16 v3, 0x20

    aput-object v1, v0, v3

    const-class v1, Laet;

    const/16 v3, 0x21

    aput-object v1, v0, v3

    const-class v1, Laeu;

    const/16 v3, 0x22

    aput-object v1, v0, v3

    const-class v1, Laev;

    const/16 v3, 0x23

    aput-object v1, v0, v3

    const-class v1, Laew;

    const/16 v3, 0x24

    aput-object v1, v0, v3

    const-class v1, Laex;

    const/16 v3, 0x25

    aput-object v1, v0, v3

    const-class v1, Laey;

    const/16 v3, 0x26

    aput-object v1, v0, v3

    const-class v1, Laeo;

    const/16 v3, 0x27

    aput-object v1, v0, v3

    const-class v1, Laep;

    const/16 v3, 0x28

    aput-object v1, v0, v3

    const-class v1, Laeq;

    const/16 v3, 0x29

    aput-object v1, v0, v3

    const-class v1, Laez;

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    const-class v1, Labf;

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    const-class v1, Labo;

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    const-class v1, Laay;

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    const-class v1, Lcom/alibaba/fastjson2/aj;

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Collection;

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Set;

    const/16 v3, 0x30

    aput-object v1, v0, v3

    const-class v1, Ljava/util/List;

    const/16 v3, 0x31

    aput-object v1, v0, v3

    const-class v1, Ljava/util/ArrayList;

    const/16 v3, 0x32

    aput-object v1, v0, v3

    const-class v1, Ljava/util/LinkedList;

    const/16 v3, 0x33

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Map;

    const/16 v3, 0x34

    aput-object v1, v0, v3

    const-class v1, Ljava/util/HashMap;

    const/16 v3, 0x35

    aput-object v1, v0, v3

    const-class v1, Ljava/util/LinkedHashMap;

    const/16 v3, 0x36

    aput-object v1, v0, v3

    const-class v1, Ljava/util/EnumSet;

    const/16 v3, 0x37

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Optional;

    const/16 v3, 0x38

    aput-object v1, v0, v3

    const-class v1, Ljava/util/OptionalInt;

    const/16 v3, 0x39

    aput-object v1, v0, v3

    const-class v1, Ljava/util/OptionalLong;

    const/16 v3, 0x3a

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Date;

    const/16 v3, 0x3b

    aput-object v1, v0, v3

    const-class v1, Ljava/util/Calendar;

    const/16 v3, 0x3c

    aput-object v1, v0, v3

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x3d

    aput-object v1, v0, v3

    const-class v1, Ljava/util/function/Supplier;

    const/16 v3, 0x3e

    aput-object v1, v0, v3

    const-class v1, Ljava/util/function/Consumer;

    const/16 v3, 0x3f

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Exception;

    const/16 v3, 0x40

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Enum;

    const/16 v3, 0x41

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Class;

    const/16 v3, 0x42

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Boolean;

    const/16 v3, 0x43

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Byte;

    const/16 v3, 0x44

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Short;

    const/16 v3, 0x45

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    const/16 v3, 0x46

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Long;

    const/16 v3, 0x47

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    const/16 v3, 0x48

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    const/16 v3, 0x49

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/String;

    const/16 v3, 0x4a

    aput-object v1, v0, v3

    const-class v1, Ljava/math/BigInteger;

    const/16 v3, 0x4b

    aput-object v1, v0, v3

    const-class v1, Ljava/math/BigDecimal;

    const/16 v3, 0x4c

    aput-object v1, v0, v3

    const-class v1, Ljava/time/Instant;

    const/16 v3, 0x4d

    aput-object v1, v0, v3

    const-class v1, Ljava/time/LocalTime;

    const/16 v3, 0x4e

    aput-object v1, v0, v3

    const-class v1, Ljava/time/LocalDate;

    const/16 v3, 0x4f

    aput-object v1, v0, v3

    const-class v1, Ljava/time/LocalDateTime;

    const/16 v3, 0x50

    aput-object v1, v0, v3

    const-class v1, Ljava/time/ZonedDateTime;

    const/16 v3, 0x51

    aput-object v1, v0, v3

    const-class v1, Lsq;

    const/16 v3, 0x52

    aput-object v1, v0, v3

    const-class v1, Lsp;

    const/16 v3, 0x53

    aput-object v1, v0, v3

    .line 130
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 131
    sget-object v5, Laba;->b:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "sun.misc.Unsafe"

    const-string v1, "java.sql.Timestamp"

    const-string v3, "java.sql.Date"

    .line 134
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 139
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 141
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 142
    sget-object v5, Laba;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_1
    const-class v0, Laba;

    .line 151
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, L-$$Lambda$VtiW5xx5Z2QC-nuUpwbW5rZ8HoE;

    invoke-direct {v1, v0}, L-$$Lambda$VtiW5xx5Z2QC-nuUpwbW5rZ8HoE;-><init>(Ljava/lang/Class;)V

    .line 150
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    sput-object v0, Laba;->a:Ljava/security/ProtectionDomain;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-static {}, Laba;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Laba;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 31
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Laba;->d:Ljava/util/Map;

    return-void
.end method

.method static a()Ljava/lang/ClassLoader;
    .locals 2

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    const-class v1, Laba;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 173
    :catch_0
    :cond_0
    const-class v0, Laba;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static b()Laba;
    .locals 1

    .line 244
    sget-object v0, Laba;->c:Laba;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;[BII)Ljava/lang/Class;
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

    .line 221
    sget-object v5, Laba;->a:Ljava/security/ProtectionDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laba;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Z
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

    .line 178
    sget-object v0, Laba;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Laba;->d:Ljava/util/Map;

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
