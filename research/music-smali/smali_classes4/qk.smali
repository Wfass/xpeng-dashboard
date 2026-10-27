.class public Lqk;
.super Ljava/lang/Object;
.source "ContextAutoTypeBeforeHandler.java"

# interfaces
.implements Lcom/alibaba/fastjson2/u$a;


# instance fields
.field final acceptHashCodes:[J

.field final classCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final tclHashCaches:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lqk;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Ljava/lang/Class;)V
    .locals 0

    .line 38
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 37
    invoke-static {p2}, Lqk;->names(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-direct {p0, p1, p2}, Lqk;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 10

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lqk;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lqk;->classCache:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x2e

    const/16 v4, 0x24

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x67

    .line 67
    new-array p1, p1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, p1, v5

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, p1, v2

    const/4 v2, 0x2

    const-class v6, Ljava/lang/Byte;

    aput-object v6, p1, v2

    const/4 v2, 0x3

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, p1, v2

    const/4 v2, 0x4

    const-class v6, Ljava/lang/Short;

    aput-object v6, p1, v2

    const/4 v2, 0x5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, p1, v2

    const/4 v2, 0x6

    const-class v6, Ljava/lang/Integer;

    aput-object v6, p1, v2

    const/4 v2, 0x7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, p1, v2

    const/16 v2, 0x8

    const-class v6, Ljava/lang/Long;

    aput-object v6, p1, v2

    const/16 v2, 0x9

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, p1, v2

    const/16 v2, 0xa

    const-class v6, Ljava/lang/Float;

    aput-object v6, p1, v2

    const/16 v2, 0xb

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, p1, v2

    const/16 v2, 0xc

    const-class v6, Ljava/lang/Double;

    aput-object v6, p1, v2

    const/16 v2, 0xd

    const-class v6, Ljava/lang/Number;

    aput-object v6, p1, v2

    const/16 v2, 0xe

    const-class v6, Ljava/math/BigInteger;

    aput-object v6, p1, v2

    const/16 v2, 0xf

    const-class v6, Ljava/math/BigDecimal;

    aput-object v6, p1, v2

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v2, p1, v1

    const/16 v1, 0x11

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v2, p1, v1

    const/16 v1, 0x12

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v2, p1, v1

    const/16 v1, 0x13

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    aput-object v2, p1, v1

    const/16 v1, 0x14

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    aput-object v2, p1, v1

    const/16 v1, 0x15

    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    aput-object v2, p1, v1

    const/16 v1, 0x16

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x17

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, p1, v1

    const/16 v1, 0x18

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x19

    const-class v2, Ljava/lang/Character;

    aput-object v2, p1, v1

    const/16 v1, 0x1a

    const-class v2, Ljava/lang/String;

    aput-object v2, p1, v1

    const/16 v1, 0x1b

    const-class v2, Ljava/util/UUID;

    aput-object v2, p1, v1

    const/16 v1, 0x1c

    const-class v2, Ljava/util/Currency;

    aput-object v2, p1, v1

    const/16 v1, 0x1d

    const-class v2, Ljava/util/BitSet;

    aput-object v2, p1, v1

    const/16 v1, 0x1e

    const-class v2, Ljava/util/EnumSet;

    aput-object v2, p1, v1

    const/16 v1, 0x1f

    const-class v2, Ljava/util/concurrent/TimeUnit;

    .line 104
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x20

    const-class v2, Ljava/util/Date;

    aput-object v2, p1, v1

    const/16 v1, 0x21

    const-class v2, Ljava/util/Calendar;

    aput-object v2, p1, v1

    const/16 v1, 0x22

    const-class v2, Ljava/time/LocalTime;

    aput-object v2, p1, v1

    const/16 v1, 0x23

    const-class v2, Ljava/time/LocalDate;

    aput-object v2, p1, v1

    const-class v1, Ljava/time/LocalDateTime;

    aput-object v1, p1, v4

    const/16 v1, 0x25

    const-class v2, Ljava/time/Instant;

    aput-object v2, p1, v1

    const/16 v1, 0x26

    const-class v2, Ljava/text/SimpleDateFormat;

    aput-object v2, p1, v1

    const/16 v1, 0x27

    const-class v2, Ljava/time/format/DateTimeFormatter;

    aput-object v2, p1, v1

    const/16 v1, 0x28

    const-class v2, Ljava/util/concurrent/TimeUnit;

    aput-object v2, p1, v1

    const/16 v1, 0x29

    const-class v2, Ljava/util/Set;

    aput-object v2, p1, v1

    const/16 v1, 0x2a

    const-class v2, Ljava/util/HashSet;

    aput-object v2, p1, v1

    const/16 v1, 0x2b

    const-class v2, Ljava/util/LinkedHashSet;

    aput-object v2, p1, v1

    const/16 v1, 0x2c

    const-class v2, Ljava/util/TreeSet;

    aput-object v2, p1, v1

    const/16 v1, 0x2d

    const-class v2, Ljava/util/List;

    aput-object v2, p1, v1

    const-class v1, Ljava/util/ArrayList;

    aput-object v1, p1, v3

    const/16 v1, 0x2f

    const-class v2, Ljava/util/LinkedList;

    aput-object v2, p1, v1

    const/16 v1, 0x30

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    aput-object v2, p1, v1

    const/16 v1, 0x31

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListSet;

    aput-object v2, p1, v1

    const/16 v1, 0x32

    const-class v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    aput-object v2, p1, v1

    const/16 v1, 0x33

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x34

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x35

    sget-object v2, Labo;->d:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x36

    sget-object v2, Labo;->e:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x37

    sget-object v2, Labo;->f:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x38

    sget-object v2, Labo;->g:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x39

    sget-object v2, Labo;->h:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x3a

    sget-object v2, Labo;->i:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x3b

    sget-object v2, Labo;->j:Ljava/lang/Class;

    aput-object v2, p1, v1

    const/16 v1, 0x3c

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x3d

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 137
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x3e

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 138
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x3f

    new-array v2, v5, [Ljava/lang/Object;

    .line 139
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, p1, v1

    const/16 v1, 0x40

    const-class v2, Ljava/util/Map;

    aput-object v2, p1, v1

    const/16 v1, 0x41

    const-class v2, Ljava/util/HashMap;

    aput-object v2, p1, v1

    const/16 v1, 0x42

    const-class v2, Ljava/util/Hashtable;

    aput-object v2, p1, v1

    const/16 v1, 0x43

    const-class v2, Ljava/util/TreeMap;

    aput-object v2, p1, v1

    const/16 v1, 0x44

    const-class v2, Ljava/util/LinkedHashMap;

    aput-object v2, p1, v1

    const/16 v1, 0x45

    const-class v2, Ljava/util/WeakHashMap;

    aput-object v2, p1, v1

    const/16 v1, 0x46

    const-class v2, Ljava/util/IdentityHashMap;

    aput-object v2, p1, v1

    const/16 v1, 0x47

    const-class v2, Ljava/util/concurrent/ConcurrentMap;

    aput-object v2, p1, v1

    const/16 v1, 0x48

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v2, p1, v1

    const/16 v1, 0x49

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    aput-object v2, p1, v1

    const/16 v1, 0x4a

    const-class v2, Ljava/lang/Exception;

    aput-object v2, p1, v1

    const/16 v1, 0x4b

    const-class v2, Ljava/lang/IllegalAccessError;

    aput-object v2, p1, v1

    const/16 v1, 0x4c

    const-class v2, Ljava/lang/IllegalAccessException;

    aput-object v2, p1, v1

    const/16 v1, 0x4d

    const-class v2, Ljava/lang/IllegalArgumentException;

    aput-object v2, p1, v1

    const/16 v1, 0x4e

    const-class v2, Ljava/lang/IllegalMonitorStateException;

    aput-object v2, p1, v1

    const/16 v1, 0x4f

    const-class v2, Ljava/lang/IllegalStateException;

    aput-object v2, p1, v1

    const/16 v1, 0x50

    const-class v2, Ljava/lang/IllegalThreadStateException;

    aput-object v2, p1, v1

    const/16 v1, 0x51

    const-class v2, Ljava/lang/IndexOutOfBoundsException;

    aput-object v2, p1, v1

    const/16 v1, 0x52

    const-class v2, Ljava/lang/InstantiationError;

    aput-object v2, p1, v1

    const/16 v1, 0x53

    const-class v2, Ljava/lang/InstantiationException;

    aput-object v2, p1, v1

    const/16 v1, 0x54

    const-class v2, Ljava/lang/InternalError;

    aput-object v2, p1, v1

    const/16 v1, 0x55

    const-class v2, Ljava/lang/InterruptedException;

    aput-object v2, p1, v1

    const/16 v1, 0x56

    const-class v2, Ljava/lang/LinkageError;

    aput-object v2, p1, v1

    const/16 v1, 0x57

    const-class v2, Ljava/lang/NegativeArraySizeException;

    aput-object v2, p1, v1

    const/16 v1, 0x58

    const-class v2, Ljava/lang/NoClassDefFoundError;

    aput-object v2, p1, v1

    const/16 v1, 0x59

    const-class v2, Ljava/lang/NoSuchFieldError;

    aput-object v2, p1, v1

    const/16 v1, 0x5a

    const-class v2, Ljava/lang/NoSuchFieldException;

    aput-object v2, p1, v1

    const/16 v1, 0x5b

    const-class v2, Ljava/lang/NoSuchMethodError;

    aput-object v2, p1, v1

    const/16 v1, 0x5c

    const-class v2, Ljava/lang/NoSuchMethodException;

    aput-object v2, p1, v1

    const/16 v1, 0x5d

    const-class v2, Ljava/lang/NullPointerException;

    aput-object v2, p1, v1

    const/16 v1, 0x5e

    const-class v2, Ljava/lang/NumberFormatException;

    aput-object v2, p1, v1

    const/16 v1, 0x5f

    const-class v2, Ljava/lang/OutOfMemoryError;

    aput-object v2, p1, v1

    const/16 v1, 0x60

    const-class v2, Ljava/lang/RuntimeException;

    aput-object v2, p1, v1

    const/16 v1, 0x61

    const-class v2, Ljava/lang/SecurityException;

    aput-object v2, p1, v1

    const/16 v1, 0x62

    const-class v2, Ljava/lang/StackOverflowError;

    aput-object v2, p1, v1

    const/16 v1, 0x63

    const-class v2, Ljava/lang/StringIndexOutOfBoundsException;

    aput-object v2, p1, v1

    const/16 v1, 0x64

    const-class v2, Ljava/lang/TypeNotPresentException;

    aput-object v2, p1, v1

    const/16 v1, 0x65

    const-class v2, Ljava/lang/VerifyError;

    aput-object v2, p1, v1

    const/16 v1, 0x66

    const-class v2, Ljava/lang/StackTraceElement;

    aput-object v2, p1, v1

    move v1, v5

    .line 183
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 184
    aget-object v2, p1, v1

    invoke-static {v2}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "javax.validation.ValidationException"

    const-string v1, "javax.validation.NoProviderFoundException"

    .line 188
    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 192
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move p1, v5

    .line 195
    :goto_1
    array-length v1, p2

    if-ge p1, v1, :cond_5

    .line 196
    aget-object v1, p2, p1

    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 201
    :cond_2
    invoke-static {v1}, Labo;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 203
    invoke-static {v2}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 208
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [J

    .line 211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, v5

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v2, v5

    .line 213
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v4, :cond_6

    move v8, v3

    :cond_6
    int-to-long v8, v8

    xor-long/2addr v6, v8

    const-wide v8, 0x100000001b3L

    mul-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v0, 0x1

    .line 222
    aput-wide v6, p1, v0

    move v0, v1

    goto :goto_3

    .line 225
    :cond_8
    array-length p2, p1

    if-eq v0, p2, :cond_9

    .line 226
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 228
    :cond_9
    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    .line 229
    iput-object p1, p0, Lqk;->acceptHashCodes:[J

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0, p1}, Lqk;-><init>(Z[Ljava/lang/Class;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, p1}, Lqk;-><init>(Z[Ljava/lang/String;)V

    return-void
.end method

.method static names(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-nez v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private putCacheIfAbsent(JLjava/lang/Class;)Ljava/lang/Class;
    .locals 4

    .line 326
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    const-class v1, Lcom/alibaba/fastjson2/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 328
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 329
    iget-object v1, p0, Lqk;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lqk;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v1, p0, Lqk;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 335
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 337
    :cond_1
    iget-object v0, p0, Lqk;->classCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method


# virtual methods
.method public apply(JLjava/lang/Class;J)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 234
    const-class p4, Lcom/alibaba/fastjson2/a;

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    if-eq p3, p4, :cond_0

    .line 235
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    .line 236
    iget-object p4, p0, Lqk;->tclHashCaches:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p3, :cond_0

    .line 238
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    .line 242
    :cond_0
    iget-object p3, p0, Lqk;->classCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    const-string v0, "O"

    move-object/from16 v1, p1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Object"

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, v1

    :goto_0
    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 252
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_5

    .line 253
    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    const/16 v2, 0x2e

    :cond_1
    int-to-long v2, v2

    xor-long/2addr v0, v2

    const-wide v2, 0x100000001b3L

    mul-long v14, v0, v2

    .line 260
    iget-object v0, v6, Lqk;->acceptHashCodes:[J

    invoke-static {v0, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    if-ltz v0, :cond_3

    .line 261
    invoke-static {v10}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object/from16 v3, p2

    move/from16 v16, v13

    move-wide v12, v4

    move-wide/from16 v4, p3

    .line 262
    invoke-virtual/range {v0 .. v5}, Lqk;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    .line 265
    invoke-static {v10}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 267
    invoke-direct {v6, v12, v13, v0}, Lqk;->putCacheIfAbsent(JLjava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_4

    return-object v0

    :cond_3
    move/from16 v16, v13

    :cond_4
    add-int/lit8 v13, v16, 0x1

    move-wide v0, v14

    goto :goto_1

    .line 280
    :cond_5
    invoke-static {v10}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v11

    .line 282
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v13, 0x0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    .line 283
    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    move-wide v1, v11

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    .line 284
    invoke-virtual/range {v0 .. v5}, Lqk;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    const/4 v0, 0x1

    .line 289
    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_7

    .line 292
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v13

    .line 294
    :goto_2
    invoke-virtual {v6, v0, v1, v8, v9}, Lqk;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    if-ne v0, v1, :cond_8

    move-object v0, v7

    goto :goto_3

    .line 300
    :cond_8
    invoke-static {v0}, Labo;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 302
    :goto_3
    invoke-direct {v6, v11, v12, v0}, Lqk;->putCacheIfAbsent(JLjava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v0, v1

    :cond_9
    return-object v0

    .line 310
    :cond_a
    invoke-static {v10}, Labo;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 312
    invoke-static {v0}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 314
    invoke-virtual {v6, v0, v7, v8, v9}, Lqk;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 316
    invoke-direct {v6, v11, v12, v0}, Lqk;->putCacheIfAbsent(JLjava/lang/Class;)Ljava/lang/Class;

    :cond_b
    return-object v0

    :cond_c
    return-object v13
.end method
