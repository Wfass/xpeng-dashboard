.class public Lcom/alibaba/fastjson2/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/util/TypeUtils$X2;,
        Lcom/alibaba/fastjson2/util/TypeUtils$X1;,
        Lcom/alibaba/fastjson2/util/TypeUtils$Cache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BIGINT_INT32_MAX:Ljava/math/BigInteger;

.field public static final BIGINT_INT32_MIN:Ljava/math/BigInteger;

.field public static final BIGINT_INT64_MAX:Ljava/math/BigInteger;

.field public static final BIGINT_INT64_MIN:Ljava/math/BigInteger;

.field static final BIGINT_JAVASCRIPT_HIGH:Ljava/math/BigInteger;

.field static final BIGINT_JAVASCRIPT_LOW:Ljava/math/BigInteger;

.field static final BIG_10_POW:[D

.field private static final BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

.field static final CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

.field static final CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/alibaba/fastjson2/util/TypeUtils$Cache;",
            "[C>;"
        }
    .end annotation
.end field

.field public static final CLASS_JSON_ARRAY_1x:Ljava/lang/Class;

.field public static final CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

.field public static final CLASS_SINGLE_LIST:Ljava/lang/Class;

.field public static final CLASS_SINGLE_SET:Ljava/lang/Class;

.field public static final CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

.field public static final CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

.field public static final CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

.field public static final CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

.field public static final CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

.field static final DECIMAL_JAVASCRIPT_HIGH:Ljava/math/BigDecimal;

.field static final DECIMAL_JAVASCRIPT_LOW:Ljava/math/BigDecimal;

.field public static final FIELD_JSON_OBJECT_1x_map:Ljava/lang/reflect/Field;

.field static final LONG_JAVASCRIPT_HIGH:J = 0x1fffffffffffffL

.field static final LONG_JAVASCRIPT_LOW:J = -0x1fffffffffffffL

.field static volatile METHOD_NEW_PROXY_INSTANCE:Ljava/lang/invoke/MethodHandle;

.field static volatile METHOD_NEW_PROXY_INSTANCE_ERROR:Z

.field public static final METHOD_TYPE_BI_CONSUMER:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_BI_FUNCTION:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_FUNCTION:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_INT_FUNCTION:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_INT_OBJECT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_LONG_FUNCTION:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_LONG_OBJECT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_OBJECT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_OBJECT_INT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_OBJECT_INT_CONSUMER:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_OBJECT_LONG:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_OBJECT_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_SUPPLIER:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_TO_INT_FUNCTION:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_TO_LONG_FUNCTION:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_VOID:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_VOID_INT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_VOID_LONG:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_VOID_OBJECT_INT:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_VOID_STRING:Ljava/lang/invoke/MethodType;

.field public static final METHOD_TYPE_VOO:Ljava/lang/invoke/MethodType;

.field static final NAME_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

.field static final SINGLE_SMALL_10_POW:[F

.field public static final SMALL_10_POW:[D

.field static final TINY_10_POW:[D

.field static final TYPE_MAPPINGS:Ljava/util/Map;
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
    .locals 11

    .line 33
    const-class v0, [C

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_SINGLE_SET:Ljava/lang/Class;

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_SINGLE_LIST:Ljava/lang/Class;

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 37
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    .line 38
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

    .line 39
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

    .line 40
    new-instance v2, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    const-class v3, Ljava/util/List;

    new-array v4, v1, [Ljava/lang/reflect/Type;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    .line 42
    const-class v2, Ljava/util/function/Supplier;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_SUPPLIER:Ljava/lang/invoke/MethodType;

    .line 43
    const-class v2, Ljava/util/function/Function;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_FUNCTION:Ljava/lang/invoke/MethodType;

    .line 44
    const-class v2, Ljava/util/function/ToIntFunction;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_TO_INT_FUNCTION:Ljava/lang/invoke/MethodType;

    .line 45
    const-class v2, Ljava/util/function/ToLongFunction;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_TO_LONG_FUNCTION:Ljava/lang/invoke/MethodType;

    .line 46
    const-class v2, Ljava/util/function/ObjIntConsumer;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_INT_CONSUMER:Ljava/lang/invoke/MethodType;

    .line 47
    const-class v2, Ljava/util/function/IntFunction;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_INT_FUNCTION:Ljava/lang/invoke/MethodType;

    .line 48
    const-class v2, Ljava/util/function/LongFunction;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_LONG_FUNCTION:Ljava/lang/invoke/MethodType;

    .line 49
    const-class v2, Ljava/util/function/BiFunction;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_BI_FUNCTION:Ljava/lang/invoke/MethodType;

    .line 50
    const-class v2, Ljava/util/function/BiConsumer;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_BI_CONSUMER:Ljava/lang/invoke/MethodType;

    .line 51
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOO:Ljava/lang/invoke/MethodType;

    .line 53
    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT:Ljava/lang/invoke/MethodType;

    .line 54
    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

    .line 55
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_INT_OBJECT:Ljava/lang/invoke/MethodType;

    .line 56
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_LONG_OBJECT:Ljava/lang/invoke/MethodType;

    .line 57
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOID_OBJECT_INT:Ljava/lang/invoke/MethodType;

    .line 58
    const-class v2, Ljava/lang/Object;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_LONG:Ljava/lang/invoke/MethodType;

    .line 59
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOID_LONG:Ljava/lang/invoke/MethodType;

    .line 60
    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

    .line 62
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOID:Ljava/lang/invoke/MethodType;

    .line 63
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOID_INT:Ljava/lang/invoke/MethodType;

    .line 64
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOID_STRING:Ljava/lang/invoke/MethodType;

    .line 65
    const-class v2, Ljava/lang/Object;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_INT:Ljava/lang/invoke/MethodType;

    const-wide/32 v2, -0x80000000

    .line 67
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT32_MIN:Ljava/math/BigInteger;

    const-wide/32 v2, 0x7fffffff

    .line 68
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT32_MAX:Ljava/math/BigInteger;

    const-wide/high16 v2, -0x8000000000000000L

    .line 69
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT64_MIN:Ljava/math/BigInteger;

    const-wide v2, 0x7fffffffffffffffL

    .line 70
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT64_MAX:Ljava/math/BigInteger;

    const-wide v2, -0x1fffffffffffffL

    .line 75
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    sput-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->DECIMAL_JAVASCRIPT_LOW:Ljava/math/BigDecimal;

    const-wide v4, 0x1fffffffffffffL

    .line 76
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    sput-object v7, Lcom/alibaba/fastjson2/util/TypeUtils;->DECIMAL_JAVASCRIPT_HIGH:Ljava/math/BigDecimal;

    .line 78
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_JAVASCRIPT_LOW:Ljava/math/BigInteger;

    .line 79
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_JAVASCRIPT_HIGH:Ljava/math/BigInteger;

    const/16 v2, 0x17

    new-array v3, v2, [D

    .line 85
    fill-array-data v3, :array_0

    sput-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    const/16 v3, 0xb

    new-array v4, v3, [F

    .line 93
    fill-array-data v4, :array_1

    sput-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->SINGLE_SMALL_10_POW:[F

    const/4 v4, 0x5

    new-array v5, v4, [D

    .line 99
    fill-array-data v5, :array_2

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_10_POW:[D

    new-array v5, v4, [D

    .line 101
    fill-array-data v5, :array_3

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->TINY_10_POW:[D

    .line 1208
    new-instance v5, Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-direct {v5}, Lcom/alibaba/fastjson2/util/TypeUtils$Cache;-><init>()V

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    .line 1209
    const-class v5, Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    const-string v7, "chars"

    .line 1210
    invoke-static {v5, v0, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1540
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->NAME_MAPPINGS:Ljava/util/Map;

    .line 1541
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    const-string v5, "com.alibaba.fastjson.JSONObject"

    .line 1544
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    :try_start_0
    const-string v8, "map"

    .line 1549
    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 1550
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    :catchall_0
    :cond_0
    sput-object v7, Lcom/alibaba/fastjson2/util/TypeUtils;->FIELD_JSON_OBJECT_1x_map:Ljava/lang/reflect/Field;

    const-string v5, "com.alibaba.fastjson.JSONArray"

    .line 1558
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_ARRAY_1x:Ljava/lang/Class;

    .line 1560
    sget-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->NAME_MAPPINGS:Ljava/util/Map;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v8, "B"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v8, "S"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v8, "I"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1563
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v8, "J"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v8, "F"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v8, "D"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v8, "C"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v8, "Z"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    const-class v7, [Ljava/lang/Object;

    const-string v8, "[O"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const-class v7, [[Ljava/lang/Object;

    const-string v9, "[[O"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    const-class v7, [B

    const-string v9, "[B"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    const-class v7, [[B

    const-string v9, "[[B"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    const-class v7, [S

    const-string v9, "[S"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    const-class v7, [[S

    const-string v9, "[[S"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    const-class v7, [I

    const-string v9, "[I"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    const-class v7, [[I

    const-string v9, "[[I"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    const-class v7, [J

    const-string v9, "[J"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    const-class v7, [[J

    const-string v9, "[[J"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const-class v7, [F

    const-string v9, "[F"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const-class v7, [[F

    const-string v9, "[[F"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const-class v7, [D

    const-string v9, "[D"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const-class v7, [[D

    const-string v9, "[[D"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "[C"

    .line 1583
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    const-class v0, [[C

    const-string v7, "[[C"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    const-class v0, [Z

    const-string v7, "[Z"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    const-class v0, [[Z

    const-string v7, "[[Z"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1588
    const-class v0, [Ljava/lang/Byte;

    const-string v7, "[Byte"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    const-class v0, [[Ljava/lang/Byte;

    const-string v7, "[[Byte"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    const-class v0, [Ljava/lang/Short;

    const-string v7, "[Short"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    const-class v0, [[Ljava/lang/Short;

    const-string v7, "[[Short"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    const-class v0, [Ljava/lang/Integer;

    const-string v7, "[Integer"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    const-class v0, [[Ljava/lang/Integer;

    const-string v7, "[[Integer"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    const-class v0, [Ljava/lang/Long;

    const-string v7, "[Long"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    const-class v0, [[Ljava/lang/Long;

    const-string v7, "[[Long"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    const-class v0, [Ljava/lang/Float;

    const-string v7, "[Float"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    const-class v0, [[Ljava/lang/Float;

    const-string v7, "[[Float"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    const-class v0, [Ljava/lang/Double;

    const-string v7, "[Double"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    const-class v0, [[Ljava/lang/Double;

    const-string v7, "[[Double"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const-class v0, [Ljava/lang/Character;

    const-string v7, "[Character"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    const-class v0, [[Ljava/lang/Character;

    const-string v7, "[[Character"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    const-class v0, [Ljava/lang/Boolean;

    const-string v7, "[Boolean"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    const-class v0, [[Ljava/lang/Boolean;

    const-string v7, "[[Boolean"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    const-class v0, [Ljava/lang/String;

    const-string v7, "[String"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1606
    const-class v0, [[Ljava/lang/String;

    const-string v7, "[[String"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    const-class v0, [Ljava/math/BigDecimal;

    const-string v7, "[BigDecimal"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    const-class v0, [[Ljava/math/BigDecimal;

    const-string v7, "[[BigDecimal"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    const-class v0, [Ljava/math/BigInteger;

    const-string v7, "[BigInteger"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    const-class v0, [[Ljava/math/BigInteger;

    const-string v7, "[[BigInteger"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    const-class v0, [Ljava/util/UUID;

    const-string v7, "[UUID"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    const-class v0, [[Ljava/util/UUID;

    const-string v7, "[[UUID"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const-class v0, Ljava/lang/Object;

    const-string v7, "Object"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-class v0, Ljava/util/HashMap;

    const-string v7, "M"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    const-class v7, Ljava/util/HashMap;

    const-string v9, "HashMap"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    const-class v7, Ljava/util/HashMap;

    const-string v9, "java.util.HashMap"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    const-class v7, Ljava/util/LinkedHashMap;

    const-string v9, "LM"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    const-class v7, Ljava/util/LinkedHashMap;

    const-string v9, "LinkedHashMap"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    const-class v7, Ljava/util/LinkedHashMap;

    const-string v9, "java.util.LinkedHashMap"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    const-class v7, Ljava/util/TreeMap;

    const-string v9, "TM"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    const-class v7, Ljava/util/TreeMap;

    const-string v9, "TreeMap"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    const-class v7, Ljava/util/ArrayList;

    const-string v9, "A"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    const-class v7, Ljava/util/ArrayList;

    const-string v9, "ArrayList"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    const-class v7, Ljava/util/ArrayList;

    const-string v9, "java.util.ArrayList"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1634
    const-class v7, Ljava/util/LinkedList;

    const-string v9, "LA"

    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    const-class v7, Ljava/util/LinkedList;

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1636
    const-class v7, Ljava/util/LinkedList;

    const-string v9, "LinkedList"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    const-class v7, Ljava/util/LinkedList;

    const-string v9, "java.util.LinkedList"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    const-class v7, Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v9, "java.util.concurrent.ConcurrentLinkedQueue"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    const-class v7, Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-string v9, "java.util.concurrent.ConcurrentLinkedDeque"

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    const-class v0, Ljava/util/HashSet;

    const-string v7, "HashSet"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-class v0, Ljava/util/TreeSet;

    const-string v7, "TreeSet"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    const-class v0, Ljava/util/LinkedHashSet;

    const-string v7, "LinkedHashSet"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "ConcurrentHashMap"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v7, "ConcurrentLinkedQueue"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    const-class v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-string v7, "ConcurrentLinkedDeque"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    const-class v0, Lcom/alibaba/fastjson2/JSONObject;

    const-string v7, "JSONObject"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    const-class v0, Lcom/alibaba/fastjson2/JSONArray;

    const-string v7, "JSONArray"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1651
    const-class v0, Ljava/util/Currency;

    const-string v7, "Currency"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    const-class v0, Ljava/util/concurrent/TimeUnit;

    const-string v7, "TimeUnit"

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x44

    new-array v5, v0, [Ljava/lang/Class;

    .line 1654
    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const-class v7, Ljava/lang/Cloneable;

    aput-object v7, v5, v1

    const-class v7, Ljava/lang/AutoCloseable;

    const/4 v9, 0x2

    aput-object v7, v5, v9

    const/4 v7, 0x3

    const-class v10, Ljava/lang/Exception;

    aput-object v10, v5, v7

    const/4 v7, 0x4

    const-class v10, Ljava/lang/RuntimeException;

    aput-object v10, v5, v7

    const-class v7, Ljava/lang/IllegalAccessError;

    aput-object v7, v5, v4

    const/4 v4, 0x6

    const-class v7, Ljava/lang/IllegalAccessException;

    aput-object v7, v5, v4

    const/4 v4, 0x7

    const-class v7, Ljava/lang/IllegalArgumentException;

    aput-object v7, v5, v4

    const/16 v4, 0x8

    const-class v7, Ljava/lang/IllegalMonitorStateException;

    aput-object v7, v5, v4

    const/16 v4, 0x9

    const-class v7, Ljava/lang/IllegalStateException;

    aput-object v7, v5, v4

    const/16 v4, 0xa

    const-class v7, Ljava/lang/IllegalThreadStateException;

    aput-object v7, v5, v4

    const-class v4, Ljava/lang/IndexOutOfBoundsException;

    aput-object v4, v5, v3

    const/16 v3, 0xc

    const-class v4, Ljava/lang/InstantiationError;

    aput-object v4, v5, v3

    const/16 v3, 0xd

    const-class v4, Ljava/lang/InstantiationException;

    aput-object v4, v5, v3

    const/16 v3, 0xe

    const-class v4, Ljava/lang/InternalError;

    aput-object v4, v5, v3

    const/16 v3, 0xf

    const-class v4, Ljava/lang/InterruptedException;

    aput-object v4, v5, v3

    const/16 v3, 0x10

    const-class v4, Ljava/lang/LinkageError;

    aput-object v4, v5, v3

    const/16 v3, 0x11

    const-class v4, Ljava/lang/NegativeArraySizeException;

    aput-object v4, v5, v3

    const-class v3, Ljava/lang/NoClassDefFoundError;

    const/16 v4, 0x12

    aput-object v3, v5, v4

    const-class v3, Ljava/lang/NoSuchFieldError;

    const/16 v4, 0x13

    aput-object v3, v5, v4

    const/16 v3, 0x14

    const-class v7, Ljava/lang/NoSuchFieldException;

    aput-object v7, v5, v3

    const/16 v3, 0x15

    const-class v7, Ljava/lang/NoSuchMethodError;

    aput-object v7, v5, v3

    const/16 v3, 0x16

    const-class v7, Ljava/lang/NoSuchMethodException;

    aput-object v7, v5, v3

    const-class v3, Ljava/lang/NullPointerException;

    aput-object v3, v5, v2

    const/16 v2, 0x18

    const-class v3, Ljava/lang/NumberFormatException;

    aput-object v3, v5, v2

    const/16 v2, 0x19

    const-class v3, Ljava/lang/OutOfMemoryError;

    aput-object v3, v5, v2

    const/16 v2, 0x1a

    const-class v3, Ljava/lang/SecurityException;

    aput-object v3, v5, v2

    const/16 v2, 0x1b

    const-class v3, Ljava/lang/StackOverflowError;

    aput-object v3, v5, v2

    const/16 v2, 0x1c

    const-class v3, Ljava/lang/StringIndexOutOfBoundsException;

    aput-object v3, v5, v2

    const/16 v2, 0x1d

    const-class v3, Ljava/lang/TypeNotPresentException;

    aput-object v3, v5, v2

    const/16 v2, 0x1e

    const-class v3, Ljava/lang/VerifyError;

    aput-object v3, v5, v2

    const/16 v2, 0x1f

    const-class v3, Ljava/lang/StackTraceElement;

    aput-object v3, v5, v2

    const/16 v2, 0x20

    const-class v3, Ljava/util/Hashtable;

    aput-object v3, v5, v2

    const/16 v2, 0x21

    const-class v3, Ljava/util/TreeMap;

    aput-object v3, v5, v2

    const/16 v2, 0x22

    const-class v3, Ljava/util/IdentityHashMap;

    aput-object v3, v5, v2

    const/16 v2, 0x23

    const-class v3, Ljava/util/WeakHashMap;

    aput-object v3, v5, v2

    const/16 v2, 0x24

    const-class v3, Ljava/util/HashSet;

    aput-object v3, v5, v2

    const/16 v2, 0x25

    const-class v3, Ljava/util/LinkedHashSet;

    aput-object v3, v5, v2

    const/16 v2, 0x26

    const-class v3, Ljava/util/TreeSet;

    aput-object v3, v5, v2

    const/16 v2, 0x27

    const-class v3, Ljava/util/LinkedList;

    aput-object v3, v5, v2

    const/16 v2, 0x28

    const-class v3, Ljava/util/concurrent/TimeUnit;

    aput-object v3, v5, v2

    const/16 v2, 0x29

    const-class v3, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v3, v5, v2

    const/16 v2, 0x2a

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v3, v5, v2

    const/16 v2, 0x2b

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v3, v5, v2

    const/16 v2, 0x2c

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 1699
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v5, v2

    const/16 v2, 0x2d

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v5, v2

    const/16 v2, 0x2e

    const-class v3, Ljava/lang/Character;

    aput-object v3, v5, v2

    const/16 v2, 0x2f

    const-class v3, Ljava/lang/Byte;

    aput-object v3, v5, v2

    const/16 v2, 0x30

    const-class v3, Ljava/lang/Short;

    aput-object v3, v5, v2

    const/16 v2, 0x31

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v5, v2

    const/16 v2, 0x32

    const-class v3, Ljava/lang/Long;

    aput-object v3, v5, v2

    const/16 v2, 0x33

    const-class v3, Ljava/lang/Float;

    aput-object v3, v5, v2

    const/16 v2, 0x34

    const-class v3, Ljava/lang/Double;

    aput-object v3, v5, v2

    const/16 v2, 0x35

    const-class v3, Ljava/lang/Number;

    aput-object v3, v5, v2

    const/16 v2, 0x36

    const-class v3, Ljava/lang/String;

    aput-object v3, v5, v2

    const/16 v2, 0x37

    const-class v3, Ljava/math/BigDecimal;

    aput-object v3, v5, v2

    const/16 v2, 0x38

    const-class v3, Ljava/math/BigInteger;

    aput-object v3, v5, v2

    const/16 v2, 0x39

    const-class v3, Ljava/util/BitSet;

    aput-object v3, v5, v2

    const/16 v2, 0x3a

    const-class v3, Ljava/util/Calendar;

    aput-object v3, v5, v2

    const/16 v2, 0x3b

    const-class v3, Ljava/util/Date;

    aput-object v3, v5, v2

    const/16 v2, 0x3c

    const-class v3, Ljava/util/Locale;

    aput-object v3, v5, v2

    const/16 v2, 0x3d

    const-class v3, Ljava/util/UUID;

    aput-object v3, v5, v2

    const/16 v2, 0x3e

    const-class v3, Ljava/util/Currency;

    aput-object v3, v5, v2

    const/16 v2, 0x3f

    const-class v3, Ljava/text/SimpleDateFormat;

    aput-object v3, v5, v2

    const/16 v2, 0x40

    const-class v3, Lcom/alibaba/fastjson2/JSONObject;

    aput-object v3, v5, v2

    const/16 v2, 0x41

    const-class v3, Lcom/alibaba/fastjson2/JSONArray;

    aput-object v3, v5, v2

    const/16 v2, 0x42

    const-class v3, Ljava/util/concurrent/ConcurrentSkipListMap;

    aput-object v3, v5, v2

    const/16 v2, 0x43

    const-class v3, Ljava/util/concurrent/ConcurrentSkipListSet;

    aput-object v3, v5, v2

    move v2, v6

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1724
    aget-object v3, v5, v2

    .line 1725
    sget-object v7, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1726
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    sget-object v7, Lcom/alibaba/fastjson2/util/TypeUtils;->NAME_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1730
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    const-class v2, Lcom/alibaba/fastjson2/util/JSONObject1O;

    const-string v3, "JO10"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1731
    const-class v2, [Ljava/lang/Object;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    const-class v2, [Ljava/lang/Object;

    const-string v3, "[Ljava.lang.Object;"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    const-class v2, [Ljava/lang/Object;

    const-string v3, "[java.lang.Object"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    const-class v2, [Ljava/lang/Object;

    const-string v3, "[Object"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    const-class v2, Ljava/lang/StackTraceElement;

    const-string v3, "StackTraceElement"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    const-class v2, [Ljava/lang/StackTraceElement;

    const-string v3, "[StackTraceElement"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "java.util.Collections$UnmodifiableMap"

    const-string v2, "java.util.Collections$UnmodifiableCollection"

    .line 1738
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move v2, v6

    :goto_1
    if-ge v2, v9, :cond_2

    .line 1743
    aget-object v3, v0, v2

    .line 1744
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1745
    sget-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1749
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 1750
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    const-string v3, "JO1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_ARRAY_1x:Ljava/lang/Class;

    if-eqz v0, :cond_4

    .line 1754
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    const-string v3, "JA1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->NAME_MAPPINGS:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Set"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    const-class v5, Ljava/util/HashSet;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "List"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    new-instance v3, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    const-class v3, Ljava/util/ArrayList;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    const-class v3, Ljava/util/HashMap;

    const-string v5, "java.util.ImmutableCollections$Map1"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    const-class v3, Ljava/util/LinkedHashMap;

    const-string v5, "java.util.ImmutableCollections$MapN"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    const-class v3, Ljava/util/LinkedHashSet;

    const-string v5, "java.util.ImmutableCollections$Set12"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    const-class v3, Ljava/util/LinkedHashSet;

    const-string v5, "java.util.ImmutableCollections$SetN"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    const-class v3, Ljava/util/ArrayList;

    const-string v5, "java.util.ImmutableCollections$List12"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    const-class v3, Ljava/util/ArrayList;

    const-string v5, "java.util.ImmutableCollections$ListN"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    const-class v3, Ljava/util/ArrayList;

    const-string v5, "java.util.ImmutableCollections$SubList"

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1782
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    const/16 v0, 0x80

    new-array v2, v0, [Ljava/math/BigInteger;

    .line 4182
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v3, v2, v6

    .line 4183
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    aput-object v3, v2, v1

    const-wide/16 v5, 0xa

    move-wide v7, v5

    :goto_3
    if-ge v9, v4, :cond_6

    mul-long/2addr v7, v5

    .line 4187
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    const/16 v1, 0x12

    .line 4189
    aget-object v1, v2, v1

    :goto_4
    if-ge v4, v0, :cond_7

    .line 4191
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 4192
    aput-object v1, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4194
    :cond_7
    sput-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
    .end array-data

    :array_2
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data

    :array_3
    .array-data 8
        0x3c9cd2b297d889bcL    # 1.0E-16
        0x3949f623d5a8a733L    # 1.0E-32
        0x32a50ffd44f4a73dL    # 1.0E-64
        0x255bba08cf8c979dL    # 1.0E-128
        0xac8062864ac6f43L    # 1.0E-256
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    .line 1420
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1428
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 1432
    :cond_1
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_2

    .line 1433
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 1436
    :cond_2
    const-class v1, Ljava/time/Instant;

    if-ne p1, v1, :cond_3

    .line 1437
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toInstant(Ljava/lang/Object;)Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 1440
    :cond_3
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_5

    .line 1441
    instance-of p1, p0, Ljava/lang/Character;

    if-eqz p1, :cond_4

    .line 1442
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1445
    :cond_4
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1448
    :cond_5
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne p1, v1, :cond_6

    .line 1449
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toIntValue(Ljava/lang/Object;)I

    move-result p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object p1

    .line 1452
    :cond_6
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne p1, v1, :cond_7

    .line 1453
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLongValue(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object p1

    .line 1456
    :cond_7
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne p1, v1, :cond_8

    .line 1457
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object p1

    .line 1460
    :cond_8
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 1461
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    .line 1462
    check-cast p0, Ljava/util/Map;

    const-wide/16 v0, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1465
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1467
    invoke-interface {v1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1470
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1471
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 1472
    instance-of v1, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    if-eqz v1, :cond_c

    .line 1473
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 1474
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 1475
    check-cast v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->of(I)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    .line 1477
    :cond_b
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 1478
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1483
    :cond_c
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 1484
    check-cast p0, Ljava/lang/String;

    .line 1485
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, "null"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_2

    .line 1490
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x22

    if-eq p2, v0, :cond_f

    const/16 v0, 0x7b

    if-eq p2, v0, :cond_f

    const/16 v0, 0x5b

    if-ne p2, v0, :cond_e

    goto :goto_0

    .line 1495
    :cond_e
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1494
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    goto :goto_1

    .line 1492
    :cond_f
    :goto_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    :goto_1
    move-object v1, p0

    .line 1499
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p0

    .line 1500
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 1501
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_10
    :goto_2
    return-object v0

    .line 1504
    :cond_11
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_12

    .line 1505
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    check-cast p0, Ljava/util/Collection;

    .line 1506
    invoke-interface {p1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1509
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1510
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_13

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_17

    .line 1511
    :cond_13
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1512
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_3
    move v2, v3

    goto :goto_4

    :sswitch_0
    const-string v2, "java.sql.Timestamp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_3

    :cond_14
    const/4 v2, 0x2

    goto :goto_4

    :sswitch_1
    const-string v2, "java.sql.Time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_3

    :cond_15
    const/4 v2, 0x1

    goto :goto_4

    :sswitch_2
    const-string v4, "java.sql.Date"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_3

    :cond_16
    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 1525
    :cond_17
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    .line 1526
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 1527
    instance-of v1, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;

    if-eqz v1, :cond_18

    .line 1528
    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;->getFunction()Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1530
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1531
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    return-object v0

    .line 1537
    :cond_18
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1516
    :pswitch_0
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTimestamp(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1518
    :pswitch_1
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTime(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1514
    :pswitch_2
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createDate(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x40d5de3a -> :sswitch_2
        0x40dd4159 -> :sswitch_1
        0x4aad720a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1395
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;",
            ")TT;"
        }
    .end annotation

    .line 1399
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1400
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1403
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    check-cast p0, Ljava/util/Collection;

    .line 1405
    invoke-interface {p1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1408
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1409
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    check-cast p0, Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 1410
    invoke-interface {p1, p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1414
    :cond_2
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1413
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static cast(Ljava/lang/Object;[Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1340
    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1342
    instance-of v2, p0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1344
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v2, v3, 0x1

    .line 1346
    aget-object v4, p1, v3

    invoke-static {v0, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v3

    move v3, v2

    goto :goto_0

    .line 1349
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1350
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1351
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    :goto_1
    if-ge v3, v0, :cond_2

    if-ge v3, v2, :cond_2

    .line 1353
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 1354
    aget-object v5, p1, v3

    invoke-static {v4, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    .line 1357
    :cond_3
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not cast to types "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 3129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3132
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 3135
    :cond_0
    const-class v2, Ljava/math/BigDecimal;

    if-ne v0, v2, :cond_5

    .line 3136
    const-class v0, Ljava/lang/Integer;

    if-eq v1, v0, :cond_4

    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_1

    goto :goto_2

    .line 3138
    :cond_1
    const-class v0, Ljava/lang/Float;

    if-eq v1, v0, :cond_3

    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 3140
    :cond_2
    const-class v0, Ljava/math/BigInteger;

    if-ne v1, v0, :cond_26

    .line 3141
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    move-object p1, v0

    goto/16 :goto_c

    .line 3139
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    goto/16 :goto_c

    .line 3137
    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    goto/16 :goto_c

    .line 3143
    :cond_5
    const-class v2, Ljava/math/BigInteger;

    if-ne v0, v2, :cond_a

    .line 3144
    const-class v0, Ljava/lang/Integer;

    if-eq v1, v0, :cond_9

    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_6

    goto :goto_5

    .line 3146
    :cond_6
    const-class v0, Ljava/lang/Float;

    if-eq v1, v0, :cond_8

    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_7

    goto :goto_3

    .line 3149
    :cond_7
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_26

    .line 3150
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_4

    .line 3147
    :cond_8
    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3148
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    :goto_4
    move-object p0, v0

    goto/16 :goto_c

    .line 3145
    :cond_9
    :goto_5
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    goto/16 :goto_c

    .line 3152
    :cond_a
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_10

    .line 3153
    const-class v0, Ljava/lang/Integer;

    if-ne v1, v0, :cond_b

    .line 3154
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 3155
    :cond_b
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_c

    .line 3156
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_c

    .line 3157
    :cond_c
    const-class v0, Ljava/lang/Float;

    if-eq v1, v0, :cond_f

    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_d

    goto :goto_6

    .line 3159
    :cond_d
    const-class v0, Ljava/math/BigInteger;

    if-ne v1, v0, :cond_e

    .line 3160
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_c

    .line 3161
    :cond_e
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_26

    .line 3162
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3163
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3158
    :cond_f
    :goto_6
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 3165
    :cond_10
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_16

    .line 3166
    const-class v0, Ljava/lang/Long;

    if-ne v1, v0, :cond_11

    .line 3167
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 3168
    :cond_11
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_12

    .line 3169
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_c

    .line 3170
    :cond_12
    const-class v0, Ljava/math/BigInteger;

    if-ne v1, v0, :cond_13

    .line 3171
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_c

    .line 3172
    :cond_13
    const-class v0, Ljava/lang/Float;

    if-eq v1, v0, :cond_15

    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_14

    goto :goto_7

    .line 3174
    :cond_14
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_26

    .line 3175
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3176
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3173
    :cond_15
    :goto_7
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-double v0, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 3178
    :cond_16
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_1b

    .line 3179
    const-class v0, Ljava/lang/Integer;

    if-eq v1, v0, :cond_1a

    const-class v0, Ljava/lang/Long;

    if-eq v1, v0, :cond_1a

    const-class v0, Ljava/lang/Float;

    if-ne v1, v0, :cond_17

    goto :goto_8

    .line 3181
    :cond_17
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_18

    .line 3182
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_c

    .line 3183
    :cond_18
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_19

    .line 3184
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3185
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3186
    :cond_19
    const-class v0, Ljava/math/BigInteger;

    if-ne v1, v0, :cond_26

    .line 3187
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3188
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 3180
    :cond_1a
    :goto_8
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 3190
    :cond_1b
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_20

    .line 3191
    const-class v0, Ljava/lang/Integer;

    if-eq v1, v0, :cond_1f

    const-class v0, Ljava/lang/Long;

    if-eq v1, v0, :cond_1f

    const-class v0, Ljava/lang/Double;

    if-ne v1, v0, :cond_1c

    goto :goto_9

    .line 3193
    :cond_1c
    const-class v0, Ljava/math/BigDecimal;

    if-ne v1, v0, :cond_1d

    .line 3194
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_c

    .line 3195
    :cond_1d
    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_1e

    .line 3196
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3197
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3198
    :cond_1e
    const-class v0, Ljava/math/BigInteger;

    if-ne v1, v0, :cond_26

    .line 3199
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    .line 3200
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 3192
    :cond_1f
    :goto_9
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 3202
    :cond_20
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_26

    .line 3203
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 3204
    const-class v2, Ljava/lang/Integer;

    if-eq v1, v2, :cond_25

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_21

    goto :goto_b

    .line 3212
    :cond_21
    const-class v2, Ljava/lang/Float;

    if-eq v1, v2, :cond_24

    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_22

    goto :goto_a

    .line 3214
    :cond_22
    const-class v2, Ljava/math/BigInteger;

    if-ne v1, v2, :cond_23

    .line 3215
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 3216
    :cond_23
    const-class v2, Ljava/math/BigDecimal;

    if-ne v1, v2, :cond_26

    .line 3217
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 3213
    :cond_24
    :goto_a
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    .line 3206
    :cond_25
    :goto_b
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 3207
    move-object p0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3209
    :catch_0
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 3210
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    .line 3221
    :cond_26
    :goto_c
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static doubleValue(IJI)D
    .locals 6

    .line 4203
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    int-to-long v0, v0

    int-to-double v2, p3

    const-wide v4, 0x400a934f0979a371L    # 3.321928094887362

    mul-double/2addr v2, v4

    .line 4204
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, -0x434

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    int-to-double p0, p0

    const-wide/16 p2, 0x0

    :goto_0
    mul-double/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 v2, 0x401

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    int-to-double p0, p0

    const-wide/high16 p2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    if-gez p3, :cond_2

    .line 4214
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    neg-int p3, p3

    aget-object p3, v0, p3

    .line 4215
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    int-to-double v0, p0

    .line 4216
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide p0

    :goto_1
    mul-double/2addr v0, p0

    return-wide v0

    :cond_2
    if-nez p3, :cond_3

    int-to-double v0, p0

    long-to-double p0, p1

    goto :goto_1

    .line 4222
    :cond_3
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    long-to-int p2, v0

    add-int/lit8 p2, p2, -0x38

    .line 4224
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    aget-object p3, v0, p3

    if-gtz p2, :cond_4

    neg-int v0, p2

    .line 4227
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    .line 4231
    :cond_4
    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p3

    .line 4234
    :goto_2
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    const/4 p3, 0x0

    .line 4235
    aget-object p3, p1, p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/4 p3, 0x1

    .line 4236
    aget-object p1, p1, p3

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    .line 4237
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p3

    rsub-int/lit8 p3, p3, 0x9

    rsub-int v2, p2, -0x434

    if-lt p3, v2, :cond_5

    int-to-double v2, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    long-to-double p0, p0

    .line 4240
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide p0

    mul-double/2addr v2, p0

    return-wide v2

    :cond_5
    const-wide/16 p2, 0x1

    shl-long v3, p2, v2

    sub-long/2addr v3, p2

    shr-long p2, v0, v2

    and-long/2addr v0, v3

    .line 4245
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    int-to-long v0, v0

    or-long/2addr p2, v0

    int-to-long v0, p1

    or-long p1, p2, v0

    int-to-double v0, p0

    long-to-double p0, p1

    const/16 p2, -0x434

    .line 4246
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide p0

    goto :goto_1
.end method

.method public static doubleValue(ZI[CI)D
    .locals 20

    move/from16 v0, p1

    move/from16 v1, p3

    .line 789
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    array-length v2, v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    .line 790
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->SINGLE_SMALL_10_POW:[F

    array-length v3, v3

    const/16 v3, 0x10

    .line 792
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    .line 794
    aget-char v3, p2, v8

    add-int/lit8 v3, v3, -0x30

    const/16 v4, 0x9

    .line 795
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v6, v7

    :goto_0
    if-ge v6, v4, :cond_0

    mul-int/lit8 v3, v3, 0xa

    .line 797
    aget-char v9, p2, v6

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    int-to-long v9, v3

    :goto_1
    if-ge v4, v5, :cond_1

    const-wide/16 v11, 0xa

    mul-long/2addr v9, v11

    .line 801
    aget-char v3, p2, v4

    add-int/lit8 v3, v3, -0x30

    int-to-long v11, v3

    add-long/2addr v9, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    long-to-double v3, v9

    sub-int v6, v0, v5

    const/16 v11, 0xf

    const-wide/16 v12, 0x0

    if-gt v1, v11, :cond_a

    if-eqz v6, :cond_8

    cmpl-double v11, v3, v12

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v6, :cond_6

    if-gt v6, v2, :cond_4

    .line 811
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    aget-wide v0, v0, v6

    mul-double/2addr v3, v0

    if-eqz p0, :cond_3

    neg-double v3, v3

    :cond_3
    return-wide v3

    :cond_4
    rsub-int/lit8 v11, v5, 0xf

    add-int/2addr v2, v11

    if-gt v6, v2, :cond_a

    .line 816
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    aget-wide v1, v0, v11

    mul-double/2addr v3, v1

    sub-int/2addr v6, v11

    .line 817
    aget-wide v0, v0, v6

    mul-double/2addr v3, v0

    if-eqz p0, :cond_5

    neg-double v3, v3

    :cond_5
    return-wide v3

    :cond_6
    neg-int v2, v2

    if-lt v6, v2, :cond_a

    .line 822
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    neg-int v1, v6

    aget-wide v0, v0, v1

    div-double/2addr v3, v0

    if-eqz p0, :cond_7

    neg-double v3, v3

    :cond_7
    return-wide v3

    :cond_8
    :goto_2
    if-eqz p0, :cond_9

    neg-double v3, v3

    :cond_9
    return-wide v3

    :cond_a
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    if-lez v6, :cond_13

    const/16 v2, 0x135

    const-wide/high16 v11, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-le v0, v2, :cond_c

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    move-wide/from16 v11, v16

    :goto_3
    return-wide v11

    :cond_c
    and-int/lit8 v2, v6, 0xf

    if-eqz v2, :cond_d

    .line 833
    sget-object v13, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    aget-wide v18, v13, v2

    mul-double v3, v3, v18

    :cond_d
    shr-int/lit8 v2, v6, 0x4

    if-eqz v2, :cond_1b

    move v6, v8

    :goto_4
    if-le v2, v7, :cond_f

    and-int/lit8 v13, v2, 0x1

    if-eqz v13, :cond_e

    .line 839
    sget-object v13, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_10_POW:[D

    aget-wide v18, v13, v6

    mul-double v3, v3, v18

    :cond_e
    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 843
    :cond_f
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_10_POW:[D

    aget-wide v18, v2, v6

    mul-double v18, v18, v3

    .line 844
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-eqz v13, :cond_12

    div-double/2addr v3, v14

    .line 846
    aget-wide v13, v2, v6

    mul-double/2addr v3, v13

    .line 847
    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz p0, :cond_10

    goto :goto_5

    :cond_10
    move-wide/from16 v11, v16

    :goto_5
    return-wide v11

    :cond_11
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_6
    move-wide v3, v2

    goto :goto_8

    :cond_12
    move-wide/from16 v3, v18

    goto :goto_8

    :cond_13
    if-gez v6, :cond_1b

    neg-int v2, v6

    const/16 v6, -0x145

    const-wide/high16 v16, -0x8000000000000000L

    if-ge v0, v6, :cond_15

    if-eqz p0, :cond_14

    move-wide/from16 v12, v16

    :cond_14
    return-wide v12

    :cond_15
    and-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_16

    .line 860
    sget-object v11, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    aget-wide v18, v11, v6

    div-double v3, v3, v18

    :cond_16
    shr-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1b

    move v6, v8

    :goto_7
    if-le v2, v7, :cond_18

    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_17

    .line 866
    sget-object v11, Lcom/alibaba/fastjson2/util/TypeUtils;->TINY_10_POW:[D

    aget-wide v18, v11, v6

    mul-double v3, v3, v18

    :cond_17
    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 870
    :cond_18
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->TINY_10_POW:[D

    aget-wide v18, v2, v6

    mul-double v18, v18, v3

    cmpl-double v11, v18, v12

    if-nez v11, :cond_12

    mul-double/2addr v3, v14

    .line 873
    aget-wide v14, v2, v6

    mul-double/2addr v3, v14

    cmpl-double v2, v3, v12

    if-nez v2, :cond_1a

    if-eqz p0, :cond_19

    move-wide/from16 v12, v16

    :cond_19
    return-wide v12

    :cond_1a
    const-wide/16 v2, 0x1

    goto :goto_6

    :cond_1b
    :goto_8
    move-wide v11, v3

    const/16 v2, 0x44c

    if-le v1, v2, :cond_1c

    const/16 v1, 0x44d

    const/16 v3, 0x31

    .line 885
    aput-char v3, p2, v2

    :cond_1c
    move v13, v1

    .line 887
    new-instance v14, Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-object v1, v14

    move-wide v2, v9

    move-object/from16 v4, p2

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>(J[CII)V

    sub-int/2addr v0, v13

    .line 890
    invoke-static {v11, v12}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    neg-int v3, v0

    .line 891
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 892
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 893
    invoke-virtual {v14, v0, v8}, Lcom/alibaba/fastjson2/util/FDBigInteger;->multByPow52(II)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v4

    .line 894
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/util/FDBigInteger;->makeImmutable()V

    const/4 v5, 0x0

    move v6, v8

    :goto_9
    const/16 v9, 0x34

    ushr-long v9, v1, v9

    long-to-int v9, v9

    const-wide v10, 0xfffffffffffffL

    and-long/2addr v10, v1

    if-lez v9, :cond_1d

    const-wide/high16 v12, 0x10000000000000L

    or-long/2addr v10, v12

    goto :goto_a

    .line 907
    :cond_1d
    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v9

    add-int/lit8 v9, v9, -0xb

    shl-long/2addr v10, v9

    rsub-int/lit8 v9, v9, 0x1

    :goto_a
    const/16 v12, -0x3ff

    add-int/2addr v9, v12

    .line 913
    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v13

    ushr-long/2addr v10, v13

    add-int/lit8 v14, v9, -0x34

    add-int/2addr v14, v13

    rsub-int/lit8 v15, v13, 0x35

    if-ltz v14, :cond_1e

    add-int v16, v3, v14

    move/from16 v8, v16

    move/from16 v16, v0

    goto :goto_b

    :cond_1e
    sub-int v16, v0, v14

    move v8, v3

    :goto_b
    if-gt v9, v12, :cond_1f

    add-int/2addr v9, v13

    add-int/lit16 v9, v9, 0x3ff

    goto :goto_c

    :cond_1f
    add-int/lit8 v9, v13, 0x1

    :goto_c
    add-int v12, v8, v9

    add-int v9, v16, v9

    .line 942
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v12, v13

    sub-int/2addr v9, v13

    sub-int/2addr v8, v13

    .line 947
    invoke-static {v10, v11, v3, v12}, Lcom/alibaba/fastjson2/util/FDBigInteger;->valueOfMulPow52(JII)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v10

    if-eqz v5, :cond_20

    if-eq v6, v9, :cond_21

    .line 949
    :cond_20
    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v5

    move v6, v9

    .line 956
    :cond_21
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson2/util/FDBigInteger;->cmp(Lcom/alibaba/fastjson2/util/FDBigInteger;)I

    move-result v9

    if-lez v9, :cond_23

    .line 958
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftInplaceSub(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v9

    if-ne v15, v7, :cond_22

    const/16 v10, -0x3fe

    if-le v14, v10, :cond_22

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_22

    .line 969
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v9

    move v10, v7

    const/4 v8, 0x0

    goto :goto_d

    :cond_22
    move v10, v7

    goto :goto_d

    :cond_23
    if-gez v9, :cond_29

    .line 974
    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson2/util/FDBigInteger;->rightInplaceSub(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v9

    const/4 v10, 0x0

    .line 980
    :goto_d
    invoke-virtual {v9, v3, v8}, Lcom/alibaba/fastjson2/util/FDBigInteger;->cmpPow52(II)I

    move-result v8

    if-gez v8, :cond_24

    goto :goto_10

    :cond_24
    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x1

    if-nez v8, :cond_26

    and-long v3, v1, v15

    cmp-long v0, v3, v13

    if-eqz v0, :cond_29

    if-eqz v10, :cond_25

    goto :goto_e

    :cond_25
    move-wide v11, v15

    :goto_e
    add-long/2addr v1, v11

    goto :goto_10

    :cond_26
    if-eqz v10, :cond_27

    goto :goto_f

    :cond_27
    move-wide v11, v15

    :goto_f
    add-long/2addr v1, v11

    cmp-long v8, v1, v13

    if-eqz v8, :cond_29

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmp-long v8, v1, v8

    if-nez v8, :cond_28

    goto :goto_10

    :cond_28
    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_29
    :goto_10
    if-eqz p0, :cond_2a

    const-wide/high16 v3, -0x8000000000000000L

    or-long/2addr v1, v3

    .line 1009
    :cond_2a
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static floatValue(IJI)F
    .locals 6

    .line 4255
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    int-to-long v0, v0

    int-to-double v2, p3

    const-wide v4, 0x400a934f0979a371L    # 3.321928094887362

    mul-double/2addr v2, v4

    .line 4256
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, -0x97

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    int-to-float p0, p0

    const/4 p1, 0x0

    :goto_0
    mul-float/2addr p0, p1

    return p0

    :cond_0
    const-wide/16 v2, 0x81

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    int-to-float p0, p0

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    if-gez p3, :cond_2

    .line 4264
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    int-to-float p0, p0

    .line 4265
    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    neg-int p3, p3

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->floatValue()F

    move-result p1

    goto :goto_0

    .line 4268
    :cond_2
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    long-to-int p2, v0

    add-int/lit8 p2, p2, -0x1b

    .line 4270
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_TEN_POWERS_TABLE:[Ljava/math/BigInteger;

    aget-object p3, v0, p3

    if-gtz p2, :cond_3

    neg-int v0, p2

    .line 4273
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_1

    .line 4277
    :cond_3
    invoke-virtual {p3, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p3

    .line 4279
    :goto_1
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    const/4 p3, 0x0

    .line 4280
    aget-object p3, p1, p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    const/4 v0, 0x1

    .line 4281
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    .line 4282
    invoke-static {p3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x6

    rsub-int v2, p2, -0x97

    if-lt v1, v2, :cond_4

    int-to-float p0, p0

    or-int/2addr p1, p3

    int-to-float p1, p1

    .line 4285
    invoke-static {p1, p2}, Ljava/lang/Math;->scalb(FI)F

    move-result p1

    goto :goto_0

    :cond_4
    shl-int p2, v0, v2

    sub-int/2addr p2, v0

    shr-int v0, p3, v2

    and-int/2addr p2, p3

    .line 4288
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    int-to-float p0, p0

    int-to-float p1, p1

    const/16 p2, -0x97

    .line 4289
    invoke-static {p1, p2}, Ljava/lang/Math;->scalb(FI)F

    move-result p1

    goto :goto_0
.end method

.method public static floatValue(ZI[CI)F
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p3

    .line 1018
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->SINGLE_SMALL_10_POW:[F

    array-length v2, v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    const/16 v8, 0x8

    .line 1020
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v9, 0x0

    .line 1021
    aget-char v3, p2, v9

    add-int/lit8 v3, v3, -0x30

    move v4, v7

    :goto_0
    if-ge v4, v5, :cond_0

    mul-int/lit8 v3, v3, 0xa

    .line 1023
    aget-char v6, p2, v4

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    int-to-float v4, v3

    sub-int v6, v0, v5

    const/4 v10, 0x0

    const/4 v11, 0x7

    if-gt v1, v11, :cond_9

    if-eqz v6, :cond_7

    cmpl-float v11, v4, v10

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    if-ltz v6, :cond_5

    if-gt v6, v2, :cond_3

    .line 1033
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->SINGLE_SMALL_10_POW:[F

    aget v0, v0, v6

    mul-float/2addr v4, v0

    if-eqz p0, :cond_2

    neg-float v4, v4

    :cond_2
    return v4

    :cond_3
    rsub-int/lit8 v11, v5, 0x7

    add-int/2addr v2, v11

    if-gt v6, v2, :cond_c

    .line 1038
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->SINGLE_SMALL_10_POW:[F

    aget v1, v0, v11

    mul-float/2addr v4, v1

    sub-int/2addr v6, v11

    .line 1039
    aget v0, v0, v6

    mul-float/2addr v4, v0

    if-eqz p0, :cond_4

    neg-float v4, v4

    :cond_4
    return v4

    :cond_5
    neg-int v2, v2

    if-lt v6, v2, :cond_c

    .line 1044
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->SINGLE_SMALL_10_POW:[F

    neg-int v1, v6

    aget v0, v0, v1

    div-float/2addr v4, v0

    if-eqz p0, :cond_6

    neg-float v4, v4

    :cond_6
    return v4

    :cond_7
    :goto_1
    if-eqz p0, :cond_8

    neg-float v4, v4

    :cond_8
    return v4

    :cond_9
    if-lt v0, v1, :cond_c

    add-int v2, v1, v0

    const/16 v11, 0xf

    if-gt v2, v11, :cond_c

    int-to-long v2, v3

    :goto_2
    if-ge v5, v1, :cond_a

    const-wide/16 v6, 0xa

    mul-long/2addr v2, v6

    .line 1051
    aget-char v4, p2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    long-to-double v2, v2

    sub-int/2addr v0, v1

    .line 1055
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    aget-wide v0, v1, v0

    mul-double/2addr v2, v0

    double-to-float v0, v2

    if-eqz p0, :cond_b

    neg-float v0, v0

    :cond_b
    return v0

    :cond_c
    float-to-double v11, v4

    if-lez v6, :cond_11

    const/16 v2, 0x27

    if-le v0, v2, :cond_e

    if-eqz p0, :cond_d

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_3

    :cond_d
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_3
    return v0

    :cond_e
    and-int/lit8 v2, v6, 0xf

    if-eqz v2, :cond_f

    .line 1066
    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    aget-wide v13, v4, v2

    mul-double/2addr v11, v13

    :cond_f
    shr-int/lit8 v2, v6, 0x4

    if-eqz v2, :cond_16

    move v4, v9

    :goto_4
    if-lez v2, :cond_16

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_10

    .line 1072
    sget-object v6, Lcom/alibaba/fastjson2/util/TypeUtils;->BIG_10_POW:[D

    aget-wide v13, v6, v4

    mul-double/2addr v11, v13

    :cond_10
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    if-gez v6, :cond_16

    neg-int v2, v6

    const/16 v4, -0x2e

    if-ge v0, v4, :cond_13

    if-eqz p0, :cond_12

    const/high16 v10, -0x80000000

    :cond_12
    return v10

    :cond_13
    and-int/lit8 v4, v2, 0xf

    if-eqz v4, :cond_14

    .line 1083
    sget-object v6, Lcom/alibaba/fastjson2/util/TypeUtils;->SMALL_10_POW:[D

    aget-wide v13, v6, v4

    div-double/2addr v11, v13

    :cond_14
    shr-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_16

    move v4, v9

    :goto_5
    if-lez v2, :cond_16

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_15

    .line 1089
    sget-object v6, Lcom/alibaba/fastjson2/util/TypeUtils;->TINY_10_POW:[D

    aget-wide v13, v6, v4

    mul-double/2addr v11, v13

    :cond_15
    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    const/4 v2, 0x1

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    double-to-float v6, v11

    .line 1094
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v10

    const/16 v2, 0xc8

    if-le v1, v2, :cond_17

    const/16 v1, 0xc9

    const/16 v4, 0x31

    .line 1098
    aput-char v4, p2, v2

    :cond_17
    move v11, v1

    .line 1100
    new-instance v12, Lcom/alibaba/fastjson2/util/FDBigInteger;

    int-to-long v2, v3

    move-object v1, v12

    move-object/from16 v4, p2

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>(J[CII)V

    sub-int/2addr v0, v11

    .line 1103
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    neg-int v2, v0

    .line 1104
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1105
    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1106
    invoke-virtual {v12, v0, v9}, Lcom/alibaba/fastjson2/util/FDBigInteger;->multByPow52(II)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v3

    .line 1107
    invoke-virtual {v3}, Lcom/alibaba/fastjson2/util/FDBigInteger;->makeImmutable()V

    const/4 v4, 0x0

    move v5, v9

    :goto_6
    ushr-int/lit8 v6, v1, 0x17

    const v10, 0x7fffff

    and-int/2addr v10, v1

    if-lez v6, :cond_18

    const/high16 v11, 0x800000

    or-int/2addr v10, v11

    goto :goto_7

    .line 1121
    :cond_18
    invoke-static {v10}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    sub-int/2addr v6, v8

    shl-int/2addr v10, v6

    rsub-int/lit8 v6, v6, 0x1

    :goto_7
    const/16 v11, -0x7f

    add-int/2addr v6, v11

    .line 1127
    invoke-static {v10}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v12

    ushr-int/2addr v10, v12

    add-int/lit8 v13, v6, -0x17

    add-int/2addr v13, v12

    rsub-int/lit8 v14, v12, 0x18

    if-ltz v13, :cond_19

    add-int v15, v2, v13

    move/from16 v16, v0

    goto :goto_8

    :cond_19
    sub-int v15, v0, v13

    move/from16 v16, v15

    move v15, v2

    :goto_8
    if-gt v6, v11, :cond_1a

    add-int/2addr v6, v12

    add-int/lit8 v6, v6, 0x7f

    goto :goto_9

    :cond_1a
    add-int/lit8 v6, v12, 0x1

    :goto_9
    add-int v11, v15, v6

    add-int v6, v16, v6

    .line 1151
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v6, v12

    sub-int/2addr v15, v12

    int-to-long v8, v10

    .line 1156
    invoke-static {v8, v9, v2, v11}, Lcom/alibaba/fastjson2/util/FDBigInteger;->valueOfMulPow52(JII)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v8

    if-eqz v4, :cond_1b

    if-eq v5, v6, :cond_1c

    .line 1158
    :cond_1b
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v4

    move v5, v6

    .line 1165
    :cond_1c
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson2/util/FDBigInteger;->cmp(Lcom/alibaba/fastjson2/util/FDBigInteger;)I

    move-result v6

    if-lez v6, :cond_1e

    .line 1167
    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftInplaceSub(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v6

    if-ne v14, v7, :cond_1d

    const/16 v8, -0x7e

    if-le v13, v8, :cond_1d

    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_1d

    .line 1172
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v6

    move v8, v7

    const/4 v15, 0x0

    goto :goto_a

    :cond_1d
    move v8, v7

    goto :goto_a

    :cond_1e
    if-gez v6, :cond_24

    .line 1177
    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson2/util/FDBigInteger;->rightInplaceSub(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v6

    const/4 v8, 0x0

    .line 1181
    :goto_a
    invoke-virtual {v6, v2, v15}, Lcom/alibaba/fastjson2/util/FDBigInteger;->cmpPow52(II)I

    move-result v6

    if-gez v6, :cond_1f

    goto :goto_c

    :cond_1f
    const/4 v9, -0x1

    if-nez v6, :cond_21

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_24

    if-eqz v8, :cond_20

    move v7, v9

    :cond_20
    add-int/2addr v1, v7

    goto :goto_c

    :cond_21
    if-eqz v8, :cond_22

    goto :goto_b

    :cond_22
    move v9, v7

    :goto_b
    add-int/2addr v1, v9

    if-eqz v1, :cond_24

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ne v1, v6, :cond_23

    goto :goto_c

    :cond_23
    const/16 v8, 0x8

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_24
    :goto_c
    if-eqz p0, :cond_25

    const/high16 v0, -0x80000000

    or-int/2addr v1, v0

    .line 1201
    :cond_25
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 3472
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 3473
    const-class p0, [I

    return-object p0

    .line 3475
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 3476
    const-class p0, [B

    return-object p0

    .line 3478
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 3479
    const-class p0, [S

    return-object p0

    .line 3481
    :cond_2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    .line 3482
    const-class p0, [J

    return-object p0

    .line 3484
    :cond_3
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_4

    .line 3485
    const-class p0, [Ljava/lang/String;

    return-object p0

    .line 3487
    :cond_4
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_5

    .line 3488
    const-class p0, [Ljava/lang/Object;

    return-object p0

    :cond_5
    const/4 v0, 0x1

    .line 3490
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3525
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 3526
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 3529
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 3530
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3533
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 3534
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    .line 3535
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 3536
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 3538
    :cond_3
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3541
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5

    .line 3542
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3543
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 3544
    aget-object p0, v0, v1

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3548
    :cond_5
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_6

    .line 3549
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 3550
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 3551
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 3552
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3555
    :cond_6
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .line 3225
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3229
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 3230
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 3233
    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const/4 p0, 0x0

    .line 3234
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 3237
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-wide/16 v0, 0x0

    .line 3238
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 3241
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 3242
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 3245
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    .line 3246
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 3249
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 3250
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 3253
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    .line 3254
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 3257
    :cond_7
    const-class v0, Ljava/util/Optional;

    if-ne p0, v0, :cond_8

    .line 3258
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 3261
    :cond_8
    const-class v0, Ljava/util/OptionalInt;

    if-ne p0, v0, :cond_9

    .line 3262
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p0

    return-object p0

    .line 3265
    :cond_9
    const-class v0, Ljava/util/OptionalLong;

    if-ne p0, v0, :cond_a

    .line 3266
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object p0

    return-object p0

    .line 3269
    :cond_a
    const-class v0, Ljava/util/OptionalDouble;

    if-ne p0, v0, :cond_b

    .line 3270
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInnerMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 3578
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->FIELD_JSON_OBJECT_1x_map:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3583
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getMapping(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1826
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1218
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 1221
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 1222
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 1225
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1226
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    .line 1227
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 1228
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 1230
    :cond_3
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 1233
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5

    .line 1234
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1235
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1236
    aget-object p0, v0, v1

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 1240
    :cond_5
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_6

    .line 1241
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1242
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 1243
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getArrayClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 1246
    :cond_6
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static getTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .line 1787
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->NAME_MAPPINGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    .line 1792
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1793
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 1794
    array-length v2, v1

    if-lez v2, :cond_1

    const/4 p0, 0x0

    .line 1795
    aget-object p0, v1, p0

    .line 1799
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 1800
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.alibaba.fastjson.JSONArray"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, 0x24

    .line 1814
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 1815
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->isInteger(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1816
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 1817
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1818
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    :cond_3
    const-string v1, "JA1"

    .line 1805
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_4
    const-string v1, "JO1"

    .line 1802
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static intern(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 231
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 232
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 233
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 234
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 235
    const-class v2, Ljava/util/List;

    if-ne v1, v2, :cond_0

    .line 236
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 237
    aget-object v0, v0, v1

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 238
    sget-object p0, Lcom/alibaba/fastjson2/util/TypeUtils;->PARAM_TYPE_LIST_STR:Ljava/lang/reflect/ParameterizedType;

    :cond_0
    return-object p0
.end method

.method public static isFunction(Ljava/lang/Class;)Z
    .locals 2

    .line 3592
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3593
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.function."

    .line 3594
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3598
    :cond_0
    const-class v0, Ljava/lang/FunctionalInterface;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isInt32(Ljava/math/BigInteger;)Z
    .locals 5

    .line 1897
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_BIGINTEGER_MAG_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1898
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_BIGINTEGER_MAG_OFFSET:J

    invoke-virtual {v0, p0, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1899
    array-length v3, v0

    if-eqz v3, :cond_1

    array-length v3, v0

    if-ne v3, v1, :cond_0

    aget v3, v0, v2

    if-gez v3, :cond_1

    aget v0, v0, v2

    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 1900
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 1903
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT32_MIN:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT32_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public static isInt64(Ljava/math/BigInteger;)Z
    .locals 5

    .line 1907
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_BIGINTEGER_MAG_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1908
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_BIGINTEGER_MAG_OFFSET:J

    invoke-virtual {v0, p0, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1909
    array-length v3, v0

    if-gt v3, v2, :cond_0

    return v2

    .line 1913
    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1914
    aget v3, v0, v1

    .line 1915
    aget v4, v0, v1

    if-gez v4, :cond_1

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_2

    aget v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 1918
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT64_MIN:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4

    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_INT64_MAX:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 3605
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 3609
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    const/16 v4, 0x39

    const/16 v5, 0x30

    if-eqz v2, :cond_3

    .line 3612
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_4

    return v0

    :cond_3
    if-lt v1, v5, :cond_8

    if-le v1, v4, :cond_4

    goto :goto_4

    :cond_4
    move v1, v3

    .line 3619
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 3620
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_6

    if-le v2, v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v0
.end method

.method public static isInteger(Ljava/math/BigDecimal;)Z
    .locals 9

    .line 1928
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1933
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v2

    const/16 v3, 0x14

    const/4 v4, 0x0

    if-ge v2, v3, :cond_a

    .line 1935
    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    const-wide/16 v5, -0x1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_a

    .line 1936
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v5, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    invoke-virtual {v2, p0, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const-wide/32 v7, 0x3b9aca00

    .line 1955
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    return v1

    :pswitch_1
    const-wide/32 v7, 0x5f5e100

    .line 1953
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    return v1

    :pswitch_2
    const-wide/32 v7, 0x989680

    .line 1951
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    return v1

    :pswitch_3
    const-wide/32 v7, 0xf4240

    .line 1949
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    return v1

    :pswitch_4
    const-wide/32 v7, 0x186a0

    .line 1947
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    return v1

    :pswitch_5
    const-wide/16 v7, 0x2710

    .line 1945
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    return v1

    :pswitch_6
    const-wide/16 v7, 0x3e8

    .line 1943
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v4

    :goto_6
    return v1

    :pswitch_7
    const-wide/16 v7, 0x64

    .line 1941
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_8

    goto :goto_7

    :cond_8
    move v1, v4

    :goto_7
    return v1

    :pswitch_8
    const-wide/16 v7, 0xa

    .line 1939
    rem-long/2addr v2, v7

    cmp-long p0, v2, v5

    if-nez p0, :cond_9

    goto :goto_8

    :cond_9
    move v1, v4

    :goto_8
    return v1

    .line 1962
    :cond_a
    :goto_9
    invoke-virtual {p0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p0

    if-nez p0, :cond_b

    goto :goto_a

    :cond_b
    move v1, v4

    :goto_a
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static isInteger([BII)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p2, :cond_0

    goto :goto_4

    .line 3633
    :cond_0
    aget-byte v1, p0, p1

    int-to-char v1, v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    const/16 v4, 0x39

    const/16 v5, 0x30

    if-eqz v2, :cond_3

    if-ne p2, v3, :cond_4

    return v0

    :cond_3
    if-lt v1, v5, :cond_8

    if-le v1, v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/2addr p2, p1

    add-int/2addr p1, v3

    :goto_2
    if-ge p1, p2, :cond_7

    .line 3645
    aget-byte v1, p0, p1

    int-to-char v1, v1

    if-lt v1, v5, :cond_6

    if-le v1, v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v0
.end method

.method public static isInteger([CII)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p2, :cond_0

    goto :goto_4

    .line 3658
    :cond_0
    aget-char v1, p0, p1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    const/16 v4, 0x39

    const/16 v5, 0x30

    if-eqz v2, :cond_3

    if-ne p2, v3, :cond_4

    return v0

    :cond_3
    if-lt v1, v5, :cond_8

    if-le v1, v4, :cond_4

    goto :goto_4

    :cond_4
    add-int/2addr p2, p1

    add-int/2addr p1, v3

    :goto_2
    if-ge p1, p2, :cond_7

    .line 3670
    aget-char v1, p0, p1

    if-lt v1, v5, :cond_6

    if-le v1, v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v0
.end method

.method public static isJavaScriptSupport(J)Z
    .locals 2

    const-wide v0, -0x1fffffffffffffL

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x1fffffffffffffL

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJavaScriptSupport(Ljava/math/BigDecimal;)Z
    .locals 1

    .line 4297
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->DECIMAL_JAVASCRIPT_LOW:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->DECIMAL_JAVASCRIPT_HIGH:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJavaScriptSupport(Ljava/math/BigInteger;)Z
    .locals 1

    .line 4301
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_JAVASCRIPT_LOW:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->BIGINT_JAVASCRIPT_HIGH:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 3679
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_d

    .line 3682
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    const/16 v6, 0x2e

    if-eqz v5, :cond_5

    .line 3686
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_3

    return v0

    .line 3689
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_6

    .line 3693
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_4

    return v0

    :cond_6
    move v5, v0

    .line 3703
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v6, :cond_7

    move v8, v4

    goto :goto_3

    :cond_7
    move v8, v0

    :goto_3
    const/16 v9, 0x39

    const/16 v10, 0x30

    if-nez v8, :cond_b

    if-lt v1, v10, :cond_b

    if-gt v1, v9, :cond_b

    :goto_4
    if-ge v5, v7, :cond_a

    add-int/lit8 v1, v5, 0x1

    .line 3711
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_9

    if-le v5, v9, :cond_8

    goto :goto_5

    :cond_8
    move v5, v1

    goto :goto_4

    :cond_9
    :goto_5
    move v8, v4

    move v11, v5

    move v5, v1

    move v1, v11

    goto :goto_6

    :cond_a
    return v4

    :cond_b
    move v8, v0

    :goto_6
    if-ne v1, v6, :cond_11

    if-ge v5, v7, :cond_10

    add-int/lit8 v1, v5, 0x1

    .line 3722
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_f

    if-gt v5, v9, :cond_f

    :goto_7
    if-ge v1, v7, :cond_e

    add-int/lit8 v5, v1, 0x1

    .line 3730
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v10, :cond_d

    if-le v1, v9, :cond_c

    goto :goto_8

    :cond_c
    move v1, v5

    goto :goto_7

    :cond_d
    :goto_8
    move v6, v4

    goto :goto_9

    :cond_e
    return v4

    :cond_f
    move v6, v4

    move v11, v5

    move v5, v1

    move v1, v11

    goto :goto_9

    :cond_10
    return v4

    :cond_11
    move v6, v0

    :goto_9
    if-nez v8, :cond_12

    if-nez v6, :cond_12

    return v0

    :cond_12
    const/16 v6, 0x65

    if-eq v1, v6, :cond_13

    const/16 v6, 0x45

    if-ne v1, v6, :cond_1a

    :cond_13
    if-ne v5, v7, :cond_14

    return v4

    :cond_14
    add-int/lit8 v1, v5, 0x1

    .line 3747
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_16

    if-ne v5, v3, :cond_15

    goto :goto_a

    :cond_15
    move v2, v0

    goto :goto_b

    :cond_16
    :goto_a
    if-ge v1, v7, :cond_1a

    add-int/lit8 v2, v1, 0x1

    .line 3753
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v1, v2

    move v2, v4

    :goto_b
    if-lt v5, v10, :cond_19

    if-gt v5, v9, :cond_19

    :goto_c
    if-ge v1, v7, :cond_18

    add-int/lit8 v2, v1, 0x1

    .line 3762
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v10, :cond_1a

    if-le v1, v9, :cond_17

    goto :goto_d

    :cond_17
    move v1, v2

    goto :goto_c

    :cond_18
    return v4

    :cond_19
    if-eqz v2, :cond_1a

    :cond_1a
    :goto_d
    return v0
.end method

.method public static isNumber([BII)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-nez p2, :cond_0

    goto/16 :goto_d

    .line 3780
    :cond_0
    aget-byte v1, p0, p1

    int-to-char v1, v1

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    const/16 v6, 0x2e

    if-eqz v5, :cond_4

    if-ne p2, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 3787
    aget-byte v5, p0, v1

    int-to-char v5, v5

    move v9, v5

    move v5, v1

    move v1, v9

    goto :goto_2

    :cond_4
    if-ne v1, v6, :cond_6

    if-ne p2, v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v5, p1, 0x1

    goto :goto_2

    :cond_6
    move v5, p1

    :goto_2
    add-int/2addr p1, p2

    if-ne v1, v6, :cond_7

    move p2, v4

    goto :goto_3

    :cond_7
    move p2, v0

    :goto_3
    const/16 v7, 0x39

    const/16 v8, 0x30

    if-nez p2, :cond_b

    if-lt v1, v8, :cond_b

    if-gt v1, v7, :cond_b

    :goto_4
    if-ge v5, p1, :cond_a

    add-int/lit8 p2, v5, 0x1

    .line 3808
    aget-byte v1, p0, v5

    int-to-char v1, v1

    if-lt v1, v8, :cond_9

    if-le v1, v7, :cond_8

    goto :goto_5

    :cond_8
    move v5, p2

    goto :goto_4

    :cond_9
    :goto_5
    move v5, p2

    move p2, v4

    goto :goto_6

    :cond_a
    return v4

    :cond_b
    move p2, v0

    :goto_6
    if-ne v1, v6, :cond_11

    if-ge v5, p1, :cond_10

    add-int/lit8 v1, v5, 0x1

    .line 3819
    aget-byte v5, p0, v5

    int-to-char v5, v5

    if-lt v5, v8, :cond_f

    if-gt v5, v7, :cond_f

    :goto_7
    if-ge v1, p1, :cond_e

    add-int/lit8 v5, v1, 0x1

    .line 3827
    aget-byte v1, p0, v1

    int-to-char v1, v1

    if-lt v1, v8, :cond_d

    if-le v1, v7, :cond_c

    goto :goto_8

    :cond_c
    move v1, v5

    goto :goto_7

    :cond_d
    :goto_8
    move v6, v4

    goto :goto_9

    :cond_e
    return v4

    :cond_f
    move v6, v4

    move v9, v5

    move v5, v1

    move v1, v9

    goto :goto_9

    :cond_10
    return v4

    :cond_11
    move v6, v0

    :goto_9
    if-nez p2, :cond_12

    if-nez v6, :cond_12

    return v0

    :cond_12
    const/16 p2, 0x65

    if-eq v1, p2, :cond_13

    const/16 p2, 0x45

    if-ne v1, p2, :cond_1a

    :cond_13
    if-ne v5, p1, :cond_14

    return v4

    :cond_14
    add-int/lit8 p2, v5, 0x1

    .line 3844
    aget-byte v1, p0, v5

    int-to-char v1, v1

    if-eq v1, v2, :cond_16

    if-ne v1, v3, :cond_15

    goto :goto_a

    :cond_15
    move v2, v0

    goto :goto_b

    :cond_16
    :goto_a
    if-ge p2, p1, :cond_1a

    add-int/lit8 v1, p2, 0x1

    .line 3850
    aget-byte p2, p0, p2

    int-to-char p2, p2

    move v2, v4

    move v9, v1

    move v1, p2

    move p2, v9

    :goto_b
    if-lt v1, v8, :cond_19

    if-gt v1, v7, :cond_19

    :goto_c
    if-ge p2, p1, :cond_18

    add-int/lit8 v1, p2, 0x1

    .line 3859
    aget-byte p2, p0, p2

    int-to-char p2, p2

    if-lt p2, v8, :cond_1a

    if-le p2, v7, :cond_17

    goto :goto_d

    :cond_17
    move p2, v1

    goto :goto_c

    :cond_18
    return v4

    :cond_19
    if-eqz v2, :cond_1a

    :cond_1a
    :goto_d
    return v0
.end method

.method public static isNumber([CII)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-nez p2, :cond_0

    goto/16 :goto_d

    .line 3877
    :cond_0
    aget-char v1, p0, p1

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v4

    :goto_1
    const/16 v6, 0x2e

    if-eqz v5, :cond_4

    if-ne p2, v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 3884
    aget-char v5, p0, v1

    move v9, v5

    move v5, v1

    move v1, v9

    goto :goto_2

    :cond_4
    if-ne v1, v6, :cond_6

    if-ne p2, v4, :cond_5

    return v0

    :cond_5
    add-int/lit8 v5, p1, 0x1

    goto :goto_2

    :cond_6
    move v5, p1

    :goto_2
    add-int/2addr p1, p2

    if-ne v1, v6, :cond_7

    move p2, v4

    goto :goto_3

    :cond_7
    move p2, v0

    :goto_3
    const/16 v7, 0x39

    const/16 v8, 0x30

    if-nez p2, :cond_b

    if-lt v1, v8, :cond_b

    if-gt v1, v7, :cond_b

    :goto_4
    if-ge v5, p1, :cond_a

    add-int/lit8 p2, v5, 0x1

    .line 3906
    aget-char v1, p0, v5

    if-lt v1, v8, :cond_9

    if-le v1, v7, :cond_8

    goto :goto_5

    :cond_8
    move v5, p2

    goto :goto_4

    :cond_9
    :goto_5
    move v5, p2

    move p2, v4

    goto :goto_6

    :cond_a
    return v4

    :cond_b
    move p2, v0

    :goto_6
    if-ne v1, v6, :cond_11

    if-ge v5, p1, :cond_10

    add-int/lit8 v1, v5, 0x1

    .line 3917
    aget-char v5, p0, v5

    if-lt v5, v8, :cond_f

    if-gt v5, v7, :cond_f

    :goto_7
    if-ge v1, p1, :cond_e

    add-int/lit8 v5, v1, 0x1

    .line 3925
    aget-char v1, p0, v1

    if-lt v1, v8, :cond_d

    if-le v1, v7, :cond_c

    goto :goto_8

    :cond_c
    move v1, v5

    goto :goto_7

    :cond_d
    :goto_8
    move v6, v4

    goto :goto_9

    :cond_e
    return v4

    :cond_f
    move v6, v4

    move v9, v5

    move v5, v1

    move v1, v9

    goto :goto_9

    :cond_10
    return v4

    :cond_11
    move v6, v0

    :goto_9
    if-nez p2, :cond_12

    if-nez v6, :cond_12

    return v0

    :cond_12
    const/16 p2, 0x65

    if-eq v1, p2, :cond_13

    const/16 p2, 0x45

    if-ne v1, p2, :cond_1a

    :cond_13
    if-ne v5, p1, :cond_14

    return v4

    :cond_14
    add-int/lit8 p2, v5, 0x1

    .line 3942
    aget-char v1, p0, v5

    if-eq v1, v2, :cond_16

    if-ne v1, v3, :cond_15

    goto :goto_a

    :cond_15
    move v2, v0

    goto :goto_b

    :cond_16
    :goto_a
    if-ge p2, p1, :cond_1a

    add-int/lit8 v1, p2, 0x1

    .line 3948
    aget-char p2, p0, p2

    move v2, v4

    move v9, v1

    move v1, p2

    move p2, v9

    :goto_b
    if-lt v1, v8, :cond_19

    if-gt v1, v7, :cond_19

    :goto_c
    if-ge p2, p1, :cond_18

    add-int/lit8 v1, p2, 0x1

    .line 3957
    aget-char p2, p0, p2

    if-lt p2, v8, :cond_1a

    if-le p2, v7, :cond_17

    goto :goto_d

    :cond_17
    move p2, v1

    goto :goto_c

    :cond_18
    return v4

    :cond_19
    if-eqz v2, :cond_1a

    :cond_1a
    :goto_d
    return v0
.end method

.method public static isProxy(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3559
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    aget-object v3, p0, v2

    .line 3560
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3561
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "org.hibernate.proxy.HibernateProxy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v5, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    const-string v5, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3
    const-string v5, "org.mockito.cglib.proxy.Factory"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "org.springframework.context.annotation.ConfigurationClassEnhancer$EnhancedConfiguration"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v5, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_1

    :sswitch_6
    const-string v5, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    return v6

    :cond_7
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x507397d9 -> :sswitch_6
        -0x4662a30a -> :sswitch_5
        -0xa558f05 -> :sswitch_4
        0x43d640bf -> :sswitch_3
        0x4740f189 -> :sswitch_2
        0x6b0b3933 -> :sswitch_1
        0x76d69142 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUUID(Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3975
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x66

    const/16 v3, 0x46

    const/16 v4, 0x61

    const/16 v5, 0x39

    const/16 v6, 0x41

    const/16 v7, 0x30

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v1, v8, :cond_7

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_6

    .line 3977
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_1

    if-le v10, v5, :cond_3

    :cond_1
    if-lt v10, v6, :cond_2

    if-le v10, v3, :cond_3

    :cond_2
    if-lt v10, v4, :cond_4

    if-gt v10, v2, :cond_4

    :cond_3
    move v10, v9

    goto :goto_1

    :cond_4
    move v10, v0

    :goto_1
    if-nez v10, :cond_5

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v9

    .line 3986
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x24

    if-ne v1, v8, :cond_10

    move v1, v0

    :goto_2
    if-ge v1, v8, :cond_f

    .line 3988
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x8

    if-eq v1, v11, :cond_d

    const/16 v11, 0xd

    if-eq v1, v11, :cond_d

    const/16 v11, 0x12

    if-eq v1, v11, :cond_d

    const/16 v11, 0x17

    if-ne v1, v11, :cond_8

    goto :goto_4

    :cond_8
    if-lt v10, v7, :cond_9

    if-le v10, v5, :cond_b

    :cond_9
    if-lt v10, v6, :cond_a

    if-le v10, v3, :cond_b

    :cond_a
    if-lt v10, v4, :cond_c

    if-gt v10, v2, :cond_c

    :cond_b
    move v10, v9

    goto :goto_3

    :cond_c
    move v10, v0

    :goto_3
    if-nez v10, :cond_e

    return v0

    :cond_d
    :goto_4
    const/16 v11, 0x2d

    if-eq v10, v11, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    return v9

    :cond_10
    return v0
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8

    .line 3277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc0

    if-lt v0, v2, :cond_0

    return-object v1

    .line 3281
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x4c

    const/16 v4, 0x3b

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "short[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "boolean[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "JSONObject"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x52

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "[String"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x51

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "ConcurrentHashMap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x50

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "double[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "java.util.LinkedHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "java.util.LinkedHashMap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x4d

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "java.lang.String"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "java.util.TreeSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x4b

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "java.lang.Object"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x4a

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "java.util.Collections$SingletonSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "java.util.Collections$UnmodifiableRandomAccessList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x48

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "TreeSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x47

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "ArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x46

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "java.lang.Long"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x45

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "java.util.Arrays$ArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x44

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "java.util.OptionalLong"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x43

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v2, "short"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x42

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "int[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x41

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "float"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x40

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "java.util.List"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x3f

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "boolean"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_17
    const-string v2, "java.util.Collections$EmptyList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x3d

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "long"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "char"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move v0, v4

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "byte"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "UUID"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "List"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "Date"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "int"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "Set"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "Map"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_21
    const-string v2, "JO1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_22
    const-string v2, "[Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_23
    const-string v2, "[S"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_24
    const-string v2, "[O"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_25
    const-string v2, "[J"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "[I"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_27
    const-string v2, "[F"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_28
    const-string v2, "[D"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_29
    const-string v2, "[C"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_2a
    const-string v2, "[B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_2b
    const-string v2, "LM"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2c
    const-string v2, "LA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_2d
    const-string v2, "Z"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_2e
    const-string v2, "S"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_2f
    const-string v2, "O"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_30
    const-string v2, "M"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_31
    const-string v2, "J"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_32
    const-string v2, "I"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_33
    const-string v2, "F"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_34
    const-string v2, "D"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_35
    const-string v2, "C"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_36
    const-string v2, "B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_37
    const-string v2, "A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_38
    const-string v2, "Calendar"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_39
    const-string v2, "java.util.Collections$EmptySet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_3a
    const-string v2, "java.util.Collections$EmptyMap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_3b
    const-string v2, "java.lang.Class"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_3c
    const-string v2, "java.util.Optional"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_3d
    const-string v2, "float[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_3e
    const-string v2, "LinkedList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_3f
    const-string v2, "java.util.Collections$SingletonList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_40
    const-string v2, "long[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_41
    const-string v2, "java.util.ArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_42
    const-string v2, "double"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_43
    const-string v2, "char[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_44
    const-string v2, "byte[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_45
    const-string v2, "java.util.Set"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_46
    const-string v2, "java.util.Map"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_47
    const-string v2, "java.util.HashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_48
    const-string v2, "java.util.HashMap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_49
    const-string v2, "LinkedHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_4a
    const-string v2, "LinkedHashMap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_4b
    const-string v2, "ConcurrentLinkedQueue"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_4c
    const-string v2, "ConcurrentLinkedDeque"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_4d
    const-string v2, "String"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_0

    :cond_4e
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4e
    const-string v2, "java.util.LinkedList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    goto :goto_0

    :cond_4f
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_4f
    const-string v2, "HashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_0

    :cond_50
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_50
    const-string v2, "HashMap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_0

    :cond_51
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_51
    const-string v2, "Object"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    goto :goto_0

    :cond_52
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_52
    const-string v2, "java.io.IOException"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    goto :goto_0

    :cond_53
    move v0, v5

    goto :goto_0

    :sswitch_53
    const-string v2, "java.lang.Integer"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    goto :goto_0

    :cond_54
    move v0, v6

    goto :goto_0

    :sswitch_54
    const-string v2, "java.util.OptionalInt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_0

    :cond_55
    move v0, v7

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3327
    :pswitch_0
    const-class p0, Lcom/alibaba/fastjson2/JSONObject;

    return-object p0

    .line 3353
    :pswitch_1
    const-class p0, [Ljava/lang/String;

    return-object p0

    .line 3321
    :pswitch_2
    const-class p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0

    .line 3419
    :pswitch_3
    sget-object p0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_SINGLE_SET:Ljava/lang/Class;

    return-object p0

    .line 3413
    :pswitch_4
    sget-object p0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    return-object p0

    .line 3342
    :pswitch_5
    const-class p0, Ljava/util/TreeSet;

    return-object p0

    .line 3348
    :pswitch_6
    const-class p0, Ljava/lang/Long;

    return-object p0

    :pswitch_7
    new-array p0, v6, [Ljava/lang/Integer;

    .line 3415
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v7

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3297
    :pswitch_8
    const-class p0, Ljava/util/OptionalLong;

    return-object p0

    .line 3289
    :pswitch_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3405
    :pswitch_a
    const-class p0, Ljava/util/UUID;

    return-object p0

    .line 3300
    :pswitch_b
    const-class p0, Ljava/util/List;

    return-object p0

    .line 3407
    :pswitch_c
    const-class p0, Ljava/util/Date;

    return-object p0

    :pswitch_d
    const-string p0, "com.alibaba.fastjson.JSONObject"

    .line 3424
    :goto_1
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->TYPE_MAPPINGS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_56

    return-object v0

    :cond_56
    const-string v0, "java.util.ImmutableCollections$"

    .line 3429
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 3431
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3433
    :catch_0
    sget-object p0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    return-object p0

    .line 3437
    :cond_57
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_58

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_58

    .line 3438
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3441
    :cond_58
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_5b

    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_2

    .line 3450
    :cond_59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 3453
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 3459
    :catch_1
    :cond_5a
    :try_start_2
    const-class v0, Lcom/alibaba/fastjson2/JSON;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 3464
    :catch_2
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    return-object v1

    .line 3442
    :cond_5b
    :goto_2
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_5c

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3443
    :goto_3
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 3447
    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3445
    :cond_5d
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load class error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3401
    :pswitch_e
    const-class p0, [Z

    return-object p0

    .line 3383
    :pswitch_f
    const-class p0, [S

    return-object p0

    .line 3403
    :pswitch_10
    const-class p0, [Ljava/lang/Object;

    return-object p0

    .line 3386
    :pswitch_11
    const-class p0, [I

    return-object p0

    .line 3395
    :pswitch_12
    const-class p0, [D

    return-object p0

    .line 3365
    :pswitch_13
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3359
    :pswitch_14
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3362
    :pswitch_15
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3356
    :pswitch_16
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3371
    :pswitch_17
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3377
    :pswitch_18
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3368
    :pswitch_19
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3409
    :pswitch_1a
    const-class p0, Ljava/util/Calendar;

    return-object p0

    .line 3291
    :pswitch_1b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3287
    :pswitch_1c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 3344
    :pswitch_1d
    const-class p0, Ljava/lang/Class;

    return-object p0

    .line 3293
    :pswitch_1e
    const-class p0, Ljava/util/Optional;

    return-object p0

    .line 3392
    :pswitch_1f
    const-class p0, [F

    return-object p0

    .line 3417
    :pswitch_20
    sget-object p0, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_SINGLE_LIST:Ljava/lang/Class;

    return-object p0

    .line 3389
    :pswitch_21
    const-class p0, [J

    return-object p0

    .line 3304
    :pswitch_22
    const-class p0, Ljava/util/ArrayList;

    return-object p0

    .line 3374
    :pswitch_23
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 3398
    :pswitch_24
    const-class p0, [C

    return-object p0

    .line 3380
    :pswitch_25
    const-class p0, [B

    return-object p0

    .line 3333
    :pswitch_26
    const-class p0, Ljava/util/Set;

    return-object p0

    .line 3311
    :pswitch_27
    const-class p0, Ljava/util/Map;

    return-object p0

    .line 3339
    :pswitch_28
    const-class p0, Ljava/util/LinkedHashSet;

    return-object p0

    .line 3319
    :pswitch_29
    const-class p0, Ljava/util/LinkedHashMap;

    return-object p0

    .line 3323
    :pswitch_2a
    const-class p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0

    .line 3325
    :pswitch_2b
    const-class p0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0

    .line 3351
    :pswitch_2c
    const-class p0, Ljava/lang/String;

    return-object p0

    .line 3308
    :pswitch_2d
    const-class p0, Ljava/util/LinkedList;

    return-object p0

    .line 3336
    :pswitch_2e
    const-class p0, Ljava/util/HashSet;

    return-object p0

    .line 3315
    :pswitch_2f
    const-class p0, Ljava/util/HashMap;

    return-object p0

    .line 3285
    :pswitch_30
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 3411
    :pswitch_31
    const-class p0, Ljava/io/IOException;

    return-object p0

    .line 3346
    :pswitch_32
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 3295
    :pswitch_33
    const-class p0, Ljava/util/OptionalInt;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7b9d8951 -> :sswitch_54
        -0x7a988a96 -> :sswitch_53
        -0x77d84db3 -> :sswitch_52
        -0x739a70a1 -> :sswitch_51
        -0x73343eb2 -> :sswitch_50
        -0x733427ac -> :sswitch_4f
        -0x71348fe9 -> :sswitch_4e
        -0x6bc5b3cf -> :sswitch_4d
        -0x63a0b650 -> :sswitch_4c
        -0x62e26bdf -> :sswitch_4b
        -0x5485130b -> :sswitch_4a
        -0x5484fc05 -> :sswitch_49
        -0x539bd852 -> :sswitch_48
        -0x539bc14c -> :sswitch_47
        -0x52743c64 -> :sswitch_46
        -0x5274255e -> :sswitch_45
        -0x51e5b596 -> :sswitch_44
        -0x5128dec8 -> :sswitch_43
        -0x4f08842f -> :sswitch_42
        -0x4267cf29 -> :sswitch_41
        -0x4164dd22 -> :sswitch_40
        -0x400bab66 -> :sswitch_3f
        -0x39260d89 -> :sswitch_3e
        -0x2daef942 -> :sswitch_3d
        -0x2d66eae0 -> :sswitch_3c
        -0x1fa1475c -> :sswitch_3b
        -0x18a7fb22 -> :sswitch_3a
        -0x18a7e41c -> :sswitch_39
        -0x6c6a0a2 -> :sswitch_38
        0x41 -> :sswitch_37
        0x42 -> :sswitch_36
        0x43 -> :sswitch_35
        0x44 -> :sswitch_34
        0x46 -> :sswitch_33
        0x49 -> :sswitch_32
        0x4a -> :sswitch_31
        0x4d -> :sswitch_30
        0x4f -> :sswitch_2f
        0x53 -> :sswitch_2e
        0x5a -> :sswitch_2d
        0x975 -> :sswitch_2c
        0x981 -> :sswitch_2b
        0xb47 -> :sswitch_2a
        0xb48 -> :sswitch_29
        0xb49 -> :sswitch_28
        0xb4b -> :sswitch_27
        0xb4e -> :sswitch_26
        0xb4f -> :sswitch_25
        0xb54 -> :sswitch_24
        0xb58 -> :sswitch_23
        0xb5f -> :sswitch_22
        0x11f8c -> :sswitch_21
        0x12d3c -> :sswitch_20
        0x14442 -> :sswitch_1f
        0x197ef -> :sswitch_1e
        0x2063ce -> :sswitch_1d
        0x2424be -> :sswitch_1c
        0x27ebbb -> :sswitch_1b
        0x2e6108 -> :sswitch_1a
        0x2e9356 -> :sswitch_19
        0x32c67c -> :sswitch_18
        0x3a8415c -> :sswitch_17
        0x3db6c28 -> :sswitch_16
        0x3ec5a5e -> :sswitch_15
        0x5d0225c -> :sswitch_14
        0x5fb6391 -> :sswitch_13
        0x685847c -> :sswitch_12
        0x7edbfbc -> :sswitch_11
        0xab3ed4d -> :sswitch_10
        0x17c521d0 -> :sswitch_f
        0x227fe277 -> :sswitch_e
        0x23d25bc4 -> :sswitch_d
        0x35074651 -> :sswitch_c
        0x37bda8e6 -> :sswitch_b
        0x3f697993 -> :sswitch_a
        0x436ac224 -> :sswitch_9
        0x473e3665 -> :sswitch_8
        0x4b050b55 -> :sswitch_7
        0x4b05225b -> :sswitch_6
        0x5107d6f3 -> :sswitch_5
        0x51cb8f97 -> :sswitch_4
        0x62115c4c -> :sswitch_3
        0x68732647 -> :sswitch_2
        0x7ab10d8a -> :sswitch_1
        0x7b3660de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_2f
        :pswitch_2e
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_2d
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_22
        :pswitch_19
        :pswitch_18
        :pswitch_23
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_2f
        :pswitch_30
        :pswitch_14
        :pswitch_13
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_24
        :pswitch_12
        :pswitch_1f
        :pswitch_11
        :pswitch_21
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_27
        :pswitch_26
        :pswitch_16
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_19
        :pswitch_18
        :pswitch_15
        :pswitch_9
        :pswitch_13
        :pswitch_b
        :pswitch_17
        :pswitch_11
        :pswitch_14
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_22
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_30
        :pswitch_5
        :pswitch_2c
        :pswitch_29
        :pswitch_28
        :pswitch_12
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static newProxyInstance(Ljava/lang/Class;Lcom/alibaba/fastjson2/JSONObject;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson2/JSONObject;",
            ")TT;"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_NEW_PROXY_INSTANCE:Ljava/lang/invoke/MethodHandle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    const-string v3, "java.lang.reflect.Proxy"

    .line 110
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 111
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    const-string v5, "newProxyInstance"

    .line 112
    const-class v6, Ljava/lang/Object;

    const-class v7, Ljava/lang/ClassLoader;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/Class;

    aput-object v9, v8, v1

    const-class v9, Ljava/lang/reflect/InvocationHandler;

    aput-object v9, v8, v2

    .line 115
    invoke-static {v6, v7, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 112
    invoke-virtual {v4, v3, v5, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 117
    sput-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_NEW_PROXY_INSTANCE:Ljava/lang/invoke/MethodHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    sput-boolean v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_NEW_PROXY_INSTANCE_ERROR:Z

    .line 124
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Class;

    aput-object p0, v2, v1

    invoke-polymorphic {v0, v3, v2, p1}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p1

    .line 126
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create proxy error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static nonePrimitive(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3

    .line 3494
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3495
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3496
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v2, "short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "float"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "boolean"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "long"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "char"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "byte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "int"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "double"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 3500
    :pswitch_0
    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 3506
    :pswitch_1
    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 3512
    :pswitch_2
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 3504
    :pswitch_3
    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 3510
    :pswitch_4
    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 3498
    :pswitch_5
    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 3502
    :pswitch_6
    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 3508
    :pswitch_7
    const-class p0, Ljava/lang/Double;

    :cond_8
    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static parseBigDecimal([BII)Ljava/math/BigDecimal;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz v0, :cond_d

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 2779
    :cond_0
    aget-byte v2, v0, p1

    const/16 v3, 0x2d

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    move/from16 v2, p1

    move v3, v4

    :goto_0
    const/16 v6, 0x14

    if-le v1, v6, :cond_2

    if-eqz v3, :cond_a

    const/16 v6, 0x15

    if-ne v1, v6, :cond_a

    :cond_2
    add-int v6, p1, v1

    const/4 v7, -0x1

    const-wide/16 v8, 0x0

    move v10, v4

    move v13, v7

    move-wide v11, v8

    :goto_1
    if-ge v2, v6, :cond_7

    .line 2790
    aget-byte v14, v0, v2

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_4

    add-int/lit8 v10, v10, 0x1

    if-le v10, v5, :cond_3

    goto :goto_3

    :cond_3
    move v13, v2

    goto :goto_2

    :cond_4
    const/16 v15, 0x30

    if-lt v14, v15, :cond_6

    const/16 v15, 0x39

    if-gt v14, v15, :cond_6

    const-wide/16 v16, 0xa

    mul-long v18, v11, v16

    or-long v20, v11, v16

    const/16 v15, 0x1f

    ushr-long v20, v20, v15

    cmp-long v15, v20, v8

    if-eqz v15, :cond_5

    .line 2799
    div-long v16, v18, v16

    cmp-long v11, v16, v11

    if-nez v11, :cond_6

    :cond_5
    add-int/lit8 v14, v14, -0x30

    int-to-long v11, v14

    add-long v11, v18, v11

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    const-wide/16 v11, -0x1

    :cond_7
    :goto_3
    cmp-long v2, v11, v8

    if-ltz v2, :cond_a

    if-gt v10, v5, :cond_a

    if-eqz v3, :cond_8

    neg-long v11, v11

    :cond_8
    if-eq v13, v7, :cond_9

    sub-int v13, v13, p1

    sub-int v0, v1, v13

    add-int/lit8 v4, v0, -0x1

    .line 2818
    :cond_9
    invoke-static {v11, v12, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_a
    if-nez p1, :cond_b

    .line 2823
    array-length v2, v0

    if-ne v1, v2, :cond_b

    .line 2824
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils$X1;->TO_CHARS:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_5

    .line 2826
    :cond_b
    new-array v2, v1, [C

    move v3, v4

    :goto_4
    if-ge v3, v1, :cond_c

    add-int v5, p1, v3

    .line 2828
    aget-byte v5, v0, v5

    int-to-char v5, v5

    aput-char v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    move-object v0, v2

    .line 2832
    :goto_5
    new-instance v1, Ljava/math/BigDecimal;

    array-length v2, v0

    invoke-direct {v1, v0, v4, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v1

    :cond_d
    :goto_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseBigDecimal([CII)Ljava/math/BigDecimal;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz v0, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 2726
    :cond_0
    aget-char v3, v0, v1

    const/16 v4, 0x2d

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    move v3, v1

    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x14

    if-le v2, v7, :cond_2

    if-eqz v4, :cond_a

    const/16 v7, 0x15

    if-ne v2, v7, :cond_a

    :cond_2
    add-int v7, v1, v2

    const/4 v8, -0x1

    const-wide/16 v9, 0x0

    move v14, v8

    move-wide v12, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v3, v7, :cond_7

    .line 2737
    aget-char v5, v0, v3

    const/16 v15, 0x2e

    if-ne v5, v15, :cond_4

    add-int/lit8 v11, v11, 0x1

    if-le v11, v6, :cond_3

    goto :goto_3

    :cond_3
    move v14, v3

    goto :goto_2

    :cond_4
    const/16 v15, 0x30

    if-lt v5, v15, :cond_6

    const/16 v15, 0x39

    if-gt v5, v15, :cond_6

    const-wide/16 v15, 0xa

    mul-long v17, v12, v15

    or-long v19, v12, v15

    const/16 v21, 0x1f

    ushr-long v19, v19, v21

    cmp-long v19, v19, v9

    if-eqz v19, :cond_5

    .line 2746
    div-long v15, v17, v15

    cmp-long v12, v15, v12

    if-nez v12, :cond_6

    :cond_5
    add-int/lit8 v5, v5, -0x30

    int-to-long v12, v5

    add-long v12, v17, v12

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-wide/16 v12, -0x1

    :cond_7
    :goto_3
    cmp-long v3, v12, v9

    if-ltz v3, :cond_a

    if-gt v11, v6, :cond_a

    if-eqz v4, :cond_8

    neg-long v12, v12

    :cond_8
    if-eq v14, v8, :cond_9

    sub-int/2addr v14, v1

    sub-int v0, v2, v14

    add-int/lit8 v5, v0, -0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    .line 2765
    :goto_4
    invoke-static {v12, v13, v5}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 2769
    :cond_a
    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v3

    :cond_b
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseBoolean([BII)Ljava/lang/Boolean;
    .locals 3

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x65

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 2049
    :cond_0
    aget-byte v1, p0, p1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x4

    aget-byte v1, p0, v1

    if-ne v1, v0, :cond_4

    .line 2054
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 2044
    :cond_1
    aget-byte v1, p0, p1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v0, :cond_4

    .line 2045
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 2034
    :cond_2
    aget-byte v0, p0, p1

    const/16 v1, 0x31

    if-eq v0, v1, :cond_6

    const/16 v1, 0x59

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 2061
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 2062
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 2039
    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 2036
    :cond_6
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseBoolean([CII)Ljava/lang/Boolean;
    .locals 3

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/16 v0, 0x65

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 2085
    :cond_0
    aget-char v1, p0, p1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x4

    aget-char v1, p0, v1

    if-ne v1, v0, :cond_4

    .line 2090
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 2080
    :cond_1
    aget-char v1, p0, p1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x1

    aget-char v1, p0, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x2

    aget-char v1, p0, v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p1, 0x3

    aget-char v1, p0, v1

    if-ne v1, v0, :cond_4

    .line 2081
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 2070
    :cond_2
    aget-char v0, p0, p1

    const/16 v1, 0x31

    if-eq v0, v1, :cond_6

    const/16 v1, 0x59

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x30

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 2097
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 2098
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 2075
    :cond_5
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 2072
    :cond_6
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDouble([BII)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    add-int v3, v1, v2

    if-eqz v2, :cond_19

    .line 260
    :try_start_0
    aget-byte v4, v0, v1

    const/16 v5, 0x2d

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    move v9, v1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    .line 268
    :goto_1
    new-array v11, v2, [C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    const-string v15, "multiple points"

    const/16 v7, 0x2e

    const/16 v8, 0x30

    if-ge v9, v3, :cond_5

    .line 277
    :try_start_1
    aget-byte v5, v0, v9

    if-ne v5, v8, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    if-ne v5, v7, :cond_5

    if-nez v13, :cond_4

    sub-int v5, v9, v1

    if-eqz v10, :cond_3

    add-int/lit8 v5, v5, -0x1

    :cond_3
    move v14, v5

    const/4 v13, 0x1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x2d

    goto :goto_2

    .line 282
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_4
    const/16 v6, 0x39

    if-ge v9, v3, :cond_a

    .line 296
    aget-byte v7, v0, v9

    const/16 v8, 0x31

    if-lt v7, v8, :cond_6

    if-gt v7, v6, :cond_6

    add-int/lit8 v6, v5, 0x1

    int-to-char v7, v7

    .line 298
    aput-char v7, v11, v5

    move v5, v6

    const/16 v8, 0x2e

    const/16 v18, 0x0

    goto :goto_5

    :cond_6
    const/16 v8, 0x30

    if-ne v7, v8, :cond_7

    add-int/lit8 v6, v5, 0x1

    int-to-char v7, v7

    .line 301
    aput-char v7, v11, v5

    add-int/lit8 v18, v18, 0x1

    move v5, v6

    const/16 v8, 0x2e

    goto :goto_5

    :cond_7
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_a

    if-nez v13, :cond_9

    sub-int v6, v9, v1

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, -0x1

    :cond_8
    move v14, v6

    const/4 v13, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v7, v8

    const/16 v8, 0x30

    goto :goto_4

    .line 305
    :cond_9
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    sub-int v5, v5, v18

    if-nez v5, :cond_b

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_c

    if-eqz v12, :cond_1a

    :cond_c
    if-eqz v13, :cond_d

    sub-int/2addr v14, v12

    goto :goto_7

    :cond_d
    add-int v14, v5, v18

    :goto_7
    if-ge v9, v3, :cond_16

    .line 329
    aget-byte v8, v0, v9

    const/16 v10, 0x65

    if-eq v8, v10, :cond_e

    const/16 v10, 0x45

    if-ne v8, v10, :cond_16

    :cond_e
    const v8, 0xccccccc

    add-int/lit8 v9, v9, 0x1

    .line 334
    aget-byte v10, v0, v9

    const/4 v12, -0x1

    const/16 v13, 0x2b

    if-eq v10, v13, :cond_10

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    move v10, v12

    goto :goto_8

    :cond_10
    const/4 v10, 0x1

    :goto_8
    add-int/lit8 v9, v9, 0x1

    :goto_9
    move v15, v9

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v15, v3, :cond_13

    if-lt v13, v8, :cond_11

    const/16 v16, 0x1

    :cond_11
    add-int/lit8 v17, v15, 0x1

    .line 345
    aget-byte v15, v0, v15

    const/16 v8, 0x30

    if-lt v15, v8, :cond_12

    if-gt v15, v6, :cond_12

    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v15, v15, -0x30

    add-int/2addr v13, v15

    move/from16 v15, v17

    const v8, 0xccccccc

    goto :goto_a

    :cond_12
    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    :cond_13
    add-int/lit16 v6, v5, 0x144

    add-int v6, v6, v18

    if-nez v16, :cond_15

    if-le v13, v6, :cond_14

    goto :goto_b

    :cond_14
    mul-int/2addr v10, v13

    add-int/2addr v14, v10

    goto :goto_c

    :cond_15
    :goto_b
    mul-int/2addr v10, v6

    move v14, v10

    :goto_c
    if-eq v15, v9, :cond_1a

    move v9, v15

    :cond_16
    if-ge v9, v3, :cond_17

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ne v9, v3, :cond_1a

    :cond_17
    if-eqz v7, :cond_18

    const-wide/16 v0, 0x0

    return-wide v0

    .line 372
    :cond_18
    invoke-static {v4, v14, v11, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->doubleValue(ZI[CI)D

    move-result-wide v0

    return-wide v0

    .line 257
    :cond_19
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "empty String"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :catch_0
    :cond_1a
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For input string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static parseDouble([CII)D
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    add-int v3, v1, v2

    if-eqz v2, :cond_19

    .line 393
    :try_start_0
    aget-char v4, v0, v1

    const/16 v5, 0x2d

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    move v9, v1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    .line 401
    :goto_1
    new-array v11, v2, [C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    const-string v15, "multiple points"

    const/16 v7, 0x2e

    const/16 v8, 0x30

    if-ge v9, v3, :cond_5

    .line 410
    :try_start_1
    aget-char v5, v0, v9

    if-ne v5, v8, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    if-ne v5, v7, :cond_5

    if-nez v13, :cond_4

    sub-int v5, v9, v1

    if-eqz v10, :cond_3

    add-int/lit8 v5, v5, -0x1

    :cond_3
    move v14, v5

    const/4 v13, 0x1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x2d

    goto :goto_2

    .line 415
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_4
    const/16 v6, 0x39

    if-ge v9, v3, :cond_a

    .line 429
    aget-char v7, v0, v9

    const/16 v8, 0x31

    if-lt v7, v8, :cond_6

    if-gt v7, v6, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 431
    aput-char v7, v11, v5

    move v5, v6

    const/16 v8, 0x2e

    const/16 v18, 0x0

    goto :goto_5

    :cond_6
    const/16 v8, 0x30

    if-ne v7, v8, :cond_7

    add-int/lit8 v6, v5, 0x1

    .line 434
    aput-char v7, v11, v5

    add-int/lit8 v18, v18, 0x1

    move v5, v6

    const/16 v8, 0x2e

    goto :goto_5

    :cond_7
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_a

    if-nez v13, :cond_9

    sub-int v6, v9, v1

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, -0x1

    :cond_8
    move v14, v6

    const/4 v13, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v7, v8

    const/16 v8, 0x30

    goto :goto_4

    .line 438
    :cond_9
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    sub-int v5, v5, v18

    if-nez v5, :cond_b

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_c

    if-eqz v12, :cond_1a

    :cond_c
    if-eqz v13, :cond_d

    sub-int/2addr v14, v12

    goto :goto_7

    :cond_d
    add-int v14, v5, v18

    :goto_7
    if-ge v9, v3, :cond_16

    .line 462
    aget-char v8, v0, v9

    const/16 v10, 0x65

    if-eq v8, v10, :cond_e

    const/16 v10, 0x45

    if-ne v8, v10, :cond_16

    :cond_e
    const v8, 0xccccccc

    add-int/lit8 v9, v9, 0x1

    .line 467
    aget-char v10, v0, v9

    const/4 v12, -0x1

    const/16 v13, 0x2b

    if-eq v10, v13, :cond_10

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    move v10, v12

    goto :goto_8

    :cond_10
    const/4 v10, 0x1

    :goto_8
    add-int/lit8 v9, v9, 0x1

    :goto_9
    move v15, v9

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v15, v3, :cond_13

    if-lt v13, v8, :cond_11

    const/16 v16, 0x1

    :cond_11
    add-int/lit8 v17, v15, 0x1

    .line 479
    aget-char v15, v0, v15

    const/16 v8, 0x30

    if-lt v15, v8, :cond_12

    if-gt v15, v6, :cond_12

    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v15, v15, -0x30

    add-int/2addr v13, v15

    move/from16 v15, v17

    const v8, 0xccccccc

    goto :goto_a

    :cond_12
    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    :cond_13
    add-int/lit16 v6, v5, 0x144

    add-int v6, v6, v18

    if-nez v16, :cond_15

    if-le v13, v6, :cond_14

    goto :goto_b

    :cond_14
    mul-int/2addr v10, v13

    add-int/2addr v14, v10

    goto :goto_c

    :cond_15
    :goto_b
    mul-int/2addr v10, v6

    move v14, v10

    :goto_c
    if-eq v15, v9, :cond_1a

    move v9, v15

    :cond_16
    if-ge v9, v3, :cond_17

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ne v9, v3, :cond_1a

    :cond_17
    if-eqz v7, :cond_18

    const-wide/16 v0, 0x0

    return-wide v0

    .line 506
    :cond_18
    invoke-static {v4, v14, v11, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->doubleValue(ZI[CI)D

    move-result-wide v0

    return-wide v0

    .line 390
    :cond_19
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "empty String"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :catch_0
    :cond_1a
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For input string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static parseFloat([BII)F
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    add-int v3, v1, v2

    if-eqz v2, :cond_19

    .line 527
    :try_start_0
    aget-byte v4, v0, v1

    const/16 v5, 0x2d

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    move v9, v1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    .line 535
    :goto_1
    new-array v11, v2, [C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    const-string v15, "multiple points"

    const/16 v7, 0x2e

    const/16 v8, 0x30

    if-ge v9, v3, :cond_5

    .line 544
    :try_start_1
    aget-byte v5, v0, v9

    if-ne v5, v8, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    if-ne v5, v7, :cond_5

    if-nez v13, :cond_4

    sub-int v5, v9, v1

    if-eqz v10, :cond_3

    add-int/lit8 v5, v5, -0x1

    :cond_3
    move v14, v5

    const/4 v13, 0x1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x2d

    goto :goto_2

    .line 549
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_4
    const/16 v6, 0x39

    if-ge v9, v3, :cond_a

    .line 563
    aget-byte v7, v0, v9

    const/16 v8, 0x31

    if-lt v7, v8, :cond_6

    if-gt v7, v6, :cond_6

    add-int/lit8 v6, v5, 0x1

    int-to-char v7, v7

    .line 565
    aput-char v7, v11, v5

    move v5, v6

    const/16 v8, 0x2e

    const/16 v18, 0x0

    goto :goto_5

    :cond_6
    const/16 v8, 0x30

    if-ne v7, v8, :cond_7

    add-int/lit8 v6, v5, 0x1

    int-to-char v7, v7

    .line 568
    aput-char v7, v11, v5

    add-int/lit8 v18, v18, 0x1

    move v5, v6

    const/16 v8, 0x2e

    goto :goto_5

    :cond_7
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_a

    if-nez v13, :cond_9

    sub-int v6, v9, v1

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, -0x1

    :cond_8
    move v14, v6

    const/4 v13, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v7, v8

    const/16 v8, 0x30

    goto :goto_4

    .line 572
    :cond_9
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    sub-int v5, v5, v18

    if-nez v5, :cond_b

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_c

    if-eqz v12, :cond_1a

    :cond_c
    if-eqz v13, :cond_d

    sub-int/2addr v14, v12

    goto :goto_7

    :cond_d
    add-int v14, v5, v18

    :goto_7
    if-ge v9, v3, :cond_16

    .line 596
    aget-byte v8, v0, v9

    const/16 v10, 0x65

    if-eq v8, v10, :cond_e

    const/16 v10, 0x45

    if-ne v8, v10, :cond_16

    :cond_e
    const v8, 0xccccccc

    add-int/lit8 v9, v9, 0x1

    .line 601
    aget-byte v10, v0, v9

    const/4 v12, -0x1

    const/16 v13, 0x2b

    if-eq v10, v13, :cond_10

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    move v10, v12

    goto :goto_8

    :cond_10
    const/4 v10, 0x1

    :goto_8
    add-int/lit8 v9, v9, 0x1

    :goto_9
    move v15, v9

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v15, v3, :cond_13

    if-lt v13, v8, :cond_11

    const/16 v16, 0x1

    :cond_11
    add-int/lit8 v17, v15, 0x1

    .line 613
    aget-byte v15, v0, v15

    const/16 v8, 0x30

    if-lt v15, v8, :cond_12

    if-gt v15, v6, :cond_12

    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v15, v15, -0x30

    add-int/2addr v13, v15

    move/from16 v15, v17

    const v8, 0xccccccc

    goto :goto_a

    :cond_12
    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    :cond_13
    add-int/lit16 v6, v5, 0x144

    add-int v6, v6, v18

    if-nez v16, :cond_15

    if-le v13, v6, :cond_14

    goto :goto_b

    :cond_14
    mul-int/2addr v10, v13

    add-int/2addr v14, v10

    goto :goto_c

    :cond_15
    :goto_b
    mul-int/2addr v10, v6

    move v14, v10

    :goto_c
    if-eq v15, v9, :cond_1a

    move v9, v15

    :cond_16
    if-ge v9, v3, :cond_17

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ne v9, v3, :cond_1a

    :cond_17
    if-eqz v7, :cond_18

    const/4 v0, 0x0

    return v0

    .line 640
    :cond_18
    invoke-static {v4, v14, v11, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->floatValue(ZI[CI)F

    move-result v0

    return v0

    .line 524
    :cond_19
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "empty String"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 644
    :catch_0
    :cond_1a
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For input string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static parseFloat([CII)F
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    add-int v3, v1, v2

    if-eqz v2, :cond_19

    .line 661
    :try_start_0
    aget-char v4, v0, v1

    const/16 v5, 0x2d

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    move v9, v1

    const/4 v4, 0x0

    const/4 v10, 0x0

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v9, v1, 0x1

    const/4 v10, 0x1

    .line 669
    :goto_1
    new-array v11, v2, [C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    const-string v15, "multiple points"

    const/16 v7, 0x2e

    const/16 v8, 0x30

    if-ge v9, v3, :cond_5

    .line 678
    :try_start_1
    aget-char v5, v0, v9

    if-ne v5, v8, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    if-ne v5, v7, :cond_5

    if-nez v13, :cond_4

    sub-int v5, v9, v1

    if-eqz v10, :cond_3

    add-int/lit8 v5, v5, -0x1

    :cond_3
    move v14, v5

    const/4 v13, 0x1

    :goto_3
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x2d

    goto :goto_2

    .line 683
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_4
    const/16 v6, 0x39

    if-ge v9, v3, :cond_a

    .line 697
    aget-char v7, v0, v9

    const/16 v8, 0x31

    if-lt v7, v8, :cond_6

    if-gt v7, v6, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 699
    aput-char v7, v11, v5

    move v5, v6

    const/16 v8, 0x2e

    const/16 v18, 0x0

    goto :goto_5

    :cond_6
    const/16 v8, 0x30

    if-ne v7, v8, :cond_7

    add-int/lit8 v6, v5, 0x1

    .line 702
    aput-char v7, v11, v5

    add-int/lit8 v18, v18, 0x1

    move v5, v6

    const/16 v8, 0x2e

    goto :goto_5

    :cond_7
    const/16 v8, 0x2e

    if-ne v7, v8, :cond_a

    if-nez v13, :cond_9

    sub-int v6, v9, v1

    if-eqz v10, :cond_8

    add-int/lit8 v6, v6, -0x1

    :cond_8
    move v14, v6

    const/4 v13, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    move v7, v8

    const/16 v8, 0x30

    goto :goto_4

    .line 706
    :cond_9
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, v15}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    sub-int v5, v5, v18

    if-nez v5, :cond_b

    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_c

    if-eqz v12, :cond_1a

    :cond_c
    if-eqz v13, :cond_d

    sub-int/2addr v14, v12

    goto :goto_7

    :cond_d
    add-int v14, v5, v18

    :goto_7
    if-ge v9, v3, :cond_16

    .line 730
    aget-char v8, v0, v9

    const/16 v10, 0x65

    if-eq v8, v10, :cond_e

    const/16 v10, 0x45

    if-ne v8, v10, :cond_16

    :cond_e
    const v8, 0xccccccc

    add-int/lit8 v9, v9, 0x1

    .line 735
    aget-char v10, v0, v9

    const/4 v12, -0x1

    const/16 v13, 0x2b

    if-eq v10, v13, :cond_10

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_f

    const/4 v10, 0x1

    goto :goto_9

    :cond_f
    move v10, v12

    goto :goto_8

    :cond_10
    const/4 v10, 0x1

    :goto_8
    add-int/lit8 v9, v9, 0x1

    :goto_9
    move v15, v9

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ge v15, v3, :cond_13

    if-lt v13, v8, :cond_11

    const/16 v16, 0x1

    :cond_11
    add-int/lit8 v17, v15, 0x1

    .line 746
    aget-char v15, v0, v15

    const/16 v8, 0x30

    if-lt v15, v8, :cond_12

    if-gt v15, v6, :cond_12

    mul-int/lit8 v13, v13, 0xa

    add-int/lit8 v15, v15, -0x30

    add-int/2addr v13, v15

    move/from16 v15, v17

    const v8, 0xccccccc

    goto :goto_a

    :cond_12
    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    :cond_13
    add-int/lit16 v6, v5, 0x144

    add-int v6, v6, v18

    if-nez v16, :cond_15

    if-le v13, v6, :cond_14

    goto :goto_b

    :cond_14
    mul-int/2addr v10, v13

    add-int/2addr v14, v10

    goto :goto_c

    :cond_15
    :goto_b
    mul-int/2addr v10, v6

    move v14, v10

    :goto_c
    if-eq v15, v9, :cond_1a

    move v9, v15

    :cond_16
    if-ge v9, v3, :cond_17

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ne v9, v3, :cond_1a

    :cond_17
    if-eqz v7, :cond_18

    const/4 v0, 0x0

    return v0

    .line 773
    :cond_18
    invoke-static {v4, v14, v11, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->floatValue(ZI[CI)F

    move-result v0

    return v0

    .line 658
    :cond_19
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "empty String"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 777
    :catch_0
    :cond_1a
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "For input string: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static parseInt([BII)I
    .locals 12

    const v0, 0xf4240

    const v1, 0x186a0

    const/16 v2, 0x39

    const/16 v3, 0x30

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2220
    :pswitch_0
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    .line 2221
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x2

    .line 2222
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x3

    .line 2223
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x4

    .line 2224
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x5

    .line 2225
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x6

    .line 2226
    aget-byte v10, p0, v10

    add-int/lit8 v11, p1, 0x7

    .line 2227
    aget-byte v11, p0, v11

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    if-lt v7, v3, :cond_0

    if-gt v7, v2, :cond_0

    if-lt v8, v3, :cond_0

    if-gt v8, v2, :cond_0

    if-lt v9, v3, :cond_0

    if-gt v9, v2, :cond_0

    if-lt v10, v3, :cond_0

    if-gt v10, v2, :cond_0

    if-lt v11, v3, :cond_0

    if-gt v11, v2, :cond_0

    sub-int/2addr v4, v3

    const p0, 0x989680

    mul-int/2addr v4, p0

    sub-int/2addr v5, v3

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    sub-int/2addr v6, v3

    mul-int/2addr v6, v1

    add-int/2addr v4, v6

    sub-int/2addr v7, v3

    mul-int/lit16 v7, v7, 0x2710

    add-int/2addr v4, v7

    sub-int/2addr v8, v3

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v4, v8

    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v4, v9

    sub-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v4, v10

    sub-int/2addr v11, v3

    add-int/2addr v4, v11

    return v4

    .line 2194
    :pswitch_1
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    .line 2195
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x2

    .line 2196
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x3

    .line 2197
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x4

    .line 2198
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x5

    .line 2199
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x6

    .line 2200
    aget-byte v10, p0, v10

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    if-lt v7, v3, :cond_0

    if-gt v7, v2, :cond_0

    if-lt v8, v3, :cond_0

    if-gt v8, v2, :cond_0

    if-lt v9, v3, :cond_0

    if-gt v9, v2, :cond_0

    if-lt v10, v3, :cond_0

    if-gt v10, v2, :cond_0

    sub-int/2addr v4, v3

    mul-int/2addr v4, v0

    sub-int/2addr v5, v3

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    sub-int/2addr v6, v3

    mul-int/lit16 v6, v6, 0x2710

    add-int/2addr v4, v6

    sub-int/2addr v7, v3

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v4, v7

    sub-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v4, v8

    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v4, v9

    sub-int/2addr v10, v3

    add-int/2addr v4, v10

    return v4

    .line 2171
    :pswitch_2
    aget-byte v0, p0, p1

    add-int/lit8 v4, p1, 0x1

    .line 2172
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x2

    .line 2173
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x3

    .line 2174
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x4

    .line 2175
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x5

    .line 2176
    aget-byte v8, p0, v8

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    if-lt v7, v3, :cond_0

    if-gt v7, v2, :cond_0

    if-lt v8, v3, :cond_0

    if-gt v8, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/2addr v0, v1

    sub-int/2addr v4, v3

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v0, v4

    sub-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v0, v5

    sub-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v0, v6

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v0, v7

    sub-int/2addr v8, v3

    add-int/2addr v0, v8

    return v0

    .line 2151
    :pswitch_3
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2152
    aget-byte v1, p0, v1

    add-int/lit8 v4, p1, 0x2

    .line 2153
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2154
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2155
    aget-byte v6, p0, v6

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x2710

    sub-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v0, v4

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v5

    sub-int/2addr v6, v3

    add-int/2addr v0, v6

    return v0

    .line 2134
    :pswitch_4
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2135
    aget-byte v1, p0, v1

    add-int/lit8 v4, p1, 0x2

    .line 2136
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2137
    aget-byte v5, p0, v5

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v0, v4

    sub-int/2addr v5, v3

    add-int/2addr v0, v5

    return v0

    .line 2121
    :pswitch_5
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2122
    aget-byte v1, p0, v1

    add-int/lit8 v4, p1, 0x2

    .line 2123
    aget-byte v4, p0, v4

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int/2addr v4, v3

    add-int/2addr v0, v4

    return v0

    .line 2111
    :pswitch_6
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2112
    aget-byte v1, p0, v1

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    return v0

    .line 2104
    :pswitch_7
    aget-byte v0, p0, p1

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    sub-int/2addr v0, v3

    return v0

    .line 2252
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 2253
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static parseInt([CII)I
    .locals 12

    const v0, 0xf4240

    const v1, 0x186a0

    const/16 v2, 0x39

    const/16 v3, 0x30

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2375
    :pswitch_0
    aget-char v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    .line 2376
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x2

    .line 2377
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x3

    .line 2378
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x4

    .line 2379
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x5

    .line 2380
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x6

    .line 2381
    aget-char v10, p0, v10

    add-int/lit8 v11, p1, 0x7

    .line 2382
    aget-char v11, p0, v11

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    if-lt v7, v3, :cond_0

    if-gt v7, v2, :cond_0

    if-lt v8, v3, :cond_0

    if-gt v8, v2, :cond_0

    if-lt v9, v3, :cond_0

    if-gt v9, v2, :cond_0

    if-lt v10, v3, :cond_0

    if-gt v10, v2, :cond_0

    if-lt v11, v3, :cond_0

    if-gt v11, v2, :cond_0

    sub-int/2addr v4, v3

    const p0, 0x989680

    mul-int/2addr v4, p0

    sub-int/2addr v5, v3

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    sub-int/2addr v6, v3

    mul-int/2addr v6, v1

    add-int/2addr v4, v6

    sub-int/2addr v7, v3

    mul-int/lit16 v7, v7, 0x2710

    add-int/2addr v4, v7

    sub-int/2addr v8, v3

    mul-int/lit16 v8, v8, 0x3e8

    add-int/2addr v4, v8

    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, 0x64

    add-int/2addr v4, v9

    sub-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v4, v10

    sub-int/2addr v11, v3

    add-int/2addr v4, v11

    return v4

    .line 2349
    :pswitch_1
    aget-char v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    .line 2350
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x2

    .line 2351
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x3

    .line 2352
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x4

    .line 2353
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x5

    .line 2354
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x6

    .line 2355
    aget-char v10, p0, v10

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    if-lt v7, v3, :cond_0

    if-gt v7, v2, :cond_0

    if-lt v8, v3, :cond_0

    if-gt v8, v2, :cond_0

    if-lt v9, v3, :cond_0

    if-gt v9, v2, :cond_0

    if-lt v10, v3, :cond_0

    if-gt v10, v2, :cond_0

    sub-int/2addr v4, v3

    mul-int/2addr v4, v0

    sub-int/2addr v5, v3

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    sub-int/2addr v6, v3

    mul-int/lit16 v6, v6, 0x2710

    add-int/2addr v4, v6

    sub-int/2addr v7, v3

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v4, v7

    sub-int/2addr v8, v3

    mul-int/lit8 v8, v8, 0x64

    add-int/2addr v4, v8

    sub-int/2addr v9, v3

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v4, v9

    sub-int/2addr v10, v3

    add-int/2addr v4, v10

    return v4

    .line 2326
    :pswitch_2
    aget-char v0, p0, p1

    add-int/lit8 v4, p1, 0x1

    .line 2327
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x2

    .line 2328
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x3

    .line 2329
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x4

    .line 2330
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x5

    .line 2331
    aget-char v8, p0, v8

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    if-lt v7, v3, :cond_0

    if-gt v7, v2, :cond_0

    if-lt v8, v3, :cond_0

    if-gt v8, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/2addr v0, v1

    sub-int/2addr v4, v3

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v0, v4

    sub-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v0, v5

    sub-int/2addr v6, v3

    mul-int/lit8 v6, v6, 0x64

    add-int/2addr v0, v6

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v0, v7

    sub-int/2addr v8, v3

    add-int/2addr v0, v8

    return v0

    .line 2306
    :pswitch_3
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2307
    aget-char v1, p0, v1

    add-int/lit8 v4, p1, 0x2

    .line 2308
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2309
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2310
    aget-char v6, p0, v6

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    if-lt v6, v3, :cond_0

    if-gt v6, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x2710

    sub-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v0, v4

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v0, v5

    sub-int/2addr v6, v3

    add-int/2addr v0, v6

    return v0

    .line 2289
    :pswitch_4
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2290
    aget-char v1, p0, v1

    add-int/lit8 v4, p1, 0x2

    .line 2291
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2292
    aget-char v5, p0, v5

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    if-lt v5, v3, :cond_0

    if-gt v5, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3e8

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v0, v4

    sub-int/2addr v5, v3

    add-int/2addr v0, v5

    return v0

    .line 2276
    :pswitch_5
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2277
    aget-char v1, p0, v1

    add-int/lit8 v4, p1, 0x2

    .line 2278
    aget-char v4, p0, v4

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    if-lt v4, v3, :cond_0

    if-gt v4, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int/2addr v4, v3

    add-int/2addr v0, v4

    return v0

    .line 2266
    :pswitch_6
    aget-char v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 2267
    aget-char v1, p0, v1

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    if-lt v1, v3, :cond_0

    if-gt v1, v2, :cond_0

    sub-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    return v0

    .line 2259
    :pswitch_7
    aget-char v0, p0, p1

    if-lt v0, v3, :cond_0

    if-gt v0, v2, :cond_0

    sub-int/2addr v0, v3

    return v0

    .line 2407
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 2408
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static parseLong([BII)J
    .locals 13

    const v0, 0x186a0

    const/16 v1, 0x39

    const/16 v2, 0x30

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2529
    :pswitch_0
    aget-byte v3, p0, p1

    add-int/lit8 v4, p1, 0x1

    .line 2530
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x2

    .line 2531
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x3

    .line 2532
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x4

    .line 2533
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x5

    .line 2534
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x6

    .line 2535
    aget-byte v9, p0, v9

    add-int/lit8 v10, p1, 0x7

    .line 2536
    aget-byte v10, p0, v10

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    if-lt v7, v2, :cond_0

    if-gt v7, v1, :cond_0

    if-lt v8, v2, :cond_0

    if-gt v8, v1, :cond_0

    if-lt v9, v2, :cond_0

    if-gt v9, v1, :cond_0

    if-lt v10, v2, :cond_0

    if-gt v10, v1, :cond_0

    sub-int/2addr v3, v2

    int-to-long p0, v3

    const-wide/32 v11, 0x989680

    mul-long/2addr p0, v11

    sub-int/2addr v4, v2

    const p2, 0xf4240

    mul-int/2addr v4, p2

    int-to-long v3, v4

    add-long/2addr p0, v3

    sub-int/2addr v5, v2

    mul-int/2addr v5, v0

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    mul-int/lit16 v6, v6, 0x2710

    int-to-long v0, v6

    add-long/2addr p0, v0

    sub-int/2addr v7, v2

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v0, v7

    add-long/2addr p0, v0

    sub-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x64

    int-to-long v0, v8

    add-long/2addr p0, v0

    sub-int/2addr v9, v2

    mul-int/lit8 v9, v9, 0xa

    int-to-long v0, v9

    add-long/2addr p0, v0

    sub-int/2addr v10, v2

    int-to-long v0, v10

    add-long/2addr p0, v0

    return-wide p0

    .line 2503
    :pswitch_1
    aget-byte v3, p0, p1

    add-int/lit8 v4, p1, 0x1

    .line 2504
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x2

    .line 2505
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x3

    .line 2506
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x4

    .line 2507
    aget-byte v7, p0, v7

    add-int/lit8 v8, p1, 0x5

    .line 2508
    aget-byte v8, p0, v8

    add-int/lit8 v9, p1, 0x6

    .line 2509
    aget-byte v9, p0, v9

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    if-lt v7, v2, :cond_0

    if-gt v7, v1, :cond_0

    if-lt v8, v2, :cond_0

    if-gt v8, v1, :cond_0

    if-lt v9, v2, :cond_0

    if-gt v9, v1, :cond_0

    sub-int/2addr v3, v2

    int-to-long p0, v3

    const-wide/32 v10, 0xf4240

    mul-long/2addr p0, v10

    sub-int/2addr v4, v2

    mul-int/2addr v4, v0

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x2710

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v0, v6

    add-long/2addr p0, v0

    sub-int/2addr v7, v2

    mul-int/lit8 v7, v7, 0x64

    int-to-long v0, v7

    add-long/2addr p0, v0

    sub-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0xa

    int-to-long v0, v8

    add-long/2addr p0, v0

    sub-int/2addr v9, v2

    int-to-long v0, v9

    add-long/2addr p0, v0

    return-wide p0

    .line 2480
    :pswitch_2
    aget-byte v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2481
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2482
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2483
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2484
    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x5

    .line 2485
    aget-byte v7, p0, v7

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    if-lt v7, v2, :cond_0

    if-gt v7, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/32 v0, 0x186a0

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0x2710

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x64

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0xa

    int-to-long v0, v6

    add-long/2addr p0, v0

    sub-int/2addr v7, v2

    int-to-long v0, v7

    add-long/2addr p0, v0

    return-wide p0

    .line 2460
    :pswitch_3
    aget-byte v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2461
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2462
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2463
    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2464
    aget-byte v6, p0, v6

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0x2710

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x64

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0xa

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    int-to-long v0, v6

    add-long/2addr p0, v0

    return-wide p0

    .line 2444
    :pswitch_4
    aget-byte v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2445
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2446
    aget-byte v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2447
    aget-byte v5, p0, v5

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0xa

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    int-to-long v0, v5

    add-long/2addr p0, v0

    return-wide p0

    .line 2431
    :pswitch_5
    aget-byte v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2432
    aget-byte v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2433
    aget-byte v4, p0, v4

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0x64

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0xa

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    int-to-long v0, v4

    add-long/2addr p0, v0

    return-wide p0

    .line 2421
    :pswitch_6
    aget-byte v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2422
    aget-byte v3, p0, v3

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0xa

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    int-to-long v0, v3

    add-long/2addr p0, v0

    return-wide p0

    .line 2414
    :pswitch_7
    aget-byte v0, p0, p1

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    return-wide p0

    .line 2561
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    .line 2562
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static parseLong([CII)J
    .locals 13

    const v0, 0x186a0

    const/16 v1, 0x39

    const/16 v2, 0x30

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2683
    :pswitch_0
    aget-char v3, p0, p1

    add-int/lit8 v4, p1, 0x1

    .line 2684
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x2

    .line 2685
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x3

    .line 2686
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x4

    .line 2687
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x5

    .line 2688
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x6

    .line 2689
    aget-char v9, p0, v9

    add-int/lit8 v10, p1, 0x7

    .line 2690
    aget-char v10, p0, v10

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    if-lt v7, v2, :cond_0

    if-gt v7, v1, :cond_0

    if-lt v8, v2, :cond_0

    if-gt v8, v1, :cond_0

    if-lt v9, v2, :cond_0

    if-gt v9, v1, :cond_0

    if-lt v10, v2, :cond_0

    if-gt v10, v1, :cond_0

    sub-int/2addr v3, v2

    int-to-long p0, v3

    const-wide/32 v11, 0x989680

    mul-long/2addr p0, v11

    sub-int/2addr v4, v2

    const p2, 0xf4240

    mul-int/2addr v4, p2

    int-to-long v3, v4

    add-long/2addr p0, v3

    sub-int/2addr v5, v2

    mul-int/2addr v5, v0

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    mul-int/lit16 v6, v6, 0x2710

    int-to-long v0, v6

    add-long/2addr p0, v0

    sub-int/2addr v7, v2

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v0, v7

    add-long/2addr p0, v0

    sub-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x64

    int-to-long v0, v8

    add-long/2addr p0, v0

    sub-int/2addr v9, v2

    mul-int/lit8 v9, v9, 0xa

    int-to-long v0, v9

    add-long/2addr p0, v0

    sub-int/2addr v10, v2

    int-to-long v0, v10

    add-long/2addr p0, v0

    return-wide p0

    .line 2657
    :pswitch_1
    aget-char v3, p0, p1

    add-int/lit8 v4, p1, 0x1

    .line 2658
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x2

    .line 2659
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x3

    .line 2660
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x4

    .line 2661
    aget-char v7, p0, v7

    add-int/lit8 v8, p1, 0x5

    .line 2662
    aget-char v8, p0, v8

    add-int/lit8 v9, p1, 0x6

    .line 2663
    aget-char v9, p0, v9

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    if-lt v7, v2, :cond_0

    if-gt v7, v1, :cond_0

    if-lt v8, v2, :cond_0

    if-gt v8, v1, :cond_0

    if-lt v9, v2, :cond_0

    if-gt v9, v1, :cond_0

    sub-int/2addr v3, v2

    int-to-long p0, v3

    const-wide/32 v10, 0xf4240

    mul-long/2addr p0, v10

    sub-int/2addr v4, v2

    mul-int/2addr v4, v0

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    mul-int/lit16 v5, v5, 0x2710

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v0, v6

    add-long/2addr p0, v0

    sub-int/2addr v7, v2

    mul-int/lit8 v7, v7, 0x64

    int-to-long v0, v7

    add-long/2addr p0, v0

    sub-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0xa

    int-to-long v0, v8

    add-long/2addr p0, v0

    sub-int/2addr v9, v2

    int-to-long v0, v9

    add-long/2addr p0, v0

    return-wide p0

    .line 2634
    :pswitch_2
    aget-char v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2635
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2636
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2637
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2638
    aget-char v6, p0, v6

    add-int/lit8 v7, p1, 0x5

    .line 2639
    aget-char v7, p0, v7

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    if-lt v7, v2, :cond_0

    if-gt v7, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/32 v0, 0x186a0

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0x2710

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x64

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0xa

    int-to-long v0, v6

    add-long/2addr p0, v0

    sub-int/2addr v7, v2

    int-to-long v0, v7

    add-long/2addr p0, v0

    return-wide p0

    .line 2614
    :pswitch_3
    aget-char v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2615
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2616
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2617
    aget-char v5, p0, v5

    add-int/lit8 v6, p1, 0x4

    .line 2618
    aget-char v6, p0, v6

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    if-lt v6, v2, :cond_0

    if-gt v6, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0x2710

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x64

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0xa

    int-to-long v0, v5

    add-long/2addr p0, v0

    sub-int/2addr v6, v2

    int-to-long v0, v6

    add-long/2addr p0, v0

    return-wide p0

    .line 2598
    :pswitch_4
    aget-char v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2599
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2600
    aget-char v4, p0, v4

    add-int/lit8 v5, p1, 0x3

    .line 2601
    aget-char v5, p0, v5

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    if-gt v5, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x64

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0xa

    int-to-long v0, v4

    add-long/2addr p0, v0

    sub-int/2addr v5, v2

    int-to-long v0, v5

    add-long/2addr p0, v0

    return-wide p0

    .line 2585
    :pswitch_5
    aget-char v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2586
    aget-char v3, p0, v3

    add-int/lit8 v4, p1, 0x2

    .line 2587
    aget-char v4, p0, v4

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-gt v4, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0x64

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0xa

    int-to-long v0, v3

    add-long/2addr p0, v0

    sub-int/2addr v4, v2

    int-to-long v0, v4

    add-long/2addr p0, v0

    return-wide p0

    .line 2575
    :pswitch_6
    aget-char v0, p0, p1

    add-int/lit8 v3, p1, 0x1

    .line 2576
    aget-char v3, p0, v3

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    if-lt v3, v2, :cond_0

    if-gt v3, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    const-wide/16 v0, 0xa

    mul-long/2addr p0, v0

    sub-int/2addr v3, v2

    int-to-long v0, v3

    add-long/2addr p0, v0

    return-wide p0

    .line 2568
    :pswitch_7
    aget-char v0, p0, p1

    if-lt v0, v2, :cond_0

    if-gt v0, v1, :cond_0

    sub-int/2addr v0, v2

    int-to-long p0, v0

    return-wide p0

    .line 2715
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 2716
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method static toAsciiCharArray([B)[C
    .locals 3

    .line 193
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 194
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 195
    aget-byte v2, p0, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static toBigDecimal(D)Ljava/math/BigDecimal;
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1861
    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(D[BIZ)I

    move-result p0

    .line 1862
    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal(F)Ljava/math/BigDecimal;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1855
    invoke-static {p0, v0, v1, v2}, Lcom/alibaba/fastjson2/util/DoubleToDecimal;->toString(F[BIZ)I

    move-result p0

    .line 1856
    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal(J)Ljava/math/BigDecimal;
    .locals 0

    .line 1850
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 2

    if-eqz p0, :cond_6

    .line 1830
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1834
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1838
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1839
    check-cast p0, Ljava/lang/String;

    .line 1840
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1843
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 1846
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 1835
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1831
    :cond_6
    :goto_2
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0
.end method

.method public static toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3

    if-eqz p0, :cond_2

    .line 1866
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1870
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1871
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 1872
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    .line 1873
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 1874
    array-length v0, p0

    invoke-static {p0, v1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1878
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object p0

    .line 1879
    array-length v0, p0

    invoke-static {p0, v1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toBigDecimal([B)Ljava/math/BigDecimal;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1893
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigDecimal([C)Ljava/math/BigDecimal;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1886
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static toBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 2

    if-eqz p0, :cond_6

    .line 1966
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1970
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1974
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1975
    check-cast p0, Ljava/lang/String;

    .line 1976
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1979
    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 1982
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to bigint"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1971
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1967
    :cond_6
    :goto_2
    check-cast p0, Ljava/math/BigInteger;

    return-object p0
.end method

.method public static toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3015
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 3016
    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    .line 3019
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 3020
    check-cast p0, Ljava/lang/String;

    .line 3021
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3024
    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0

    .line 3027
    :cond_4
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 3028
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 3030
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p0, :cond_6

    const/4 p0, 0x0

    .line 3033
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 3037
    :cond_6
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to boolean"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBooleanValue(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2985
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2986
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 2989
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2990
    check-cast p0, Ljava/lang/String;

    .line 2991
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2994
    :cond_2
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0

    .line 2997
    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_6

    .line 2998
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    return v1

    :cond_5
    if-nez p0, :cond_6

    return v0

    .line 3007
    :cond_6
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to boolean"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 1

    if-eqz p0, :cond_5

    .line 2864
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2868
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 2869
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2872
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2873
    check-cast p0, Ljava/lang/String;

    .line 2874
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2877
    :cond_2
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 2880
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to byte"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2865
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Byte;

    return-object p0
.end method

.method public static toByteValue(Ljava/lang/Object;)B
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2888
    :cond_0
    instance-of v1, p0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 2889
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0

    .line 2892
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 2893
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    .line 2896
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2897
    check-cast p0, Ljava/lang/String;

    .line 2898
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2901
    :cond_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0

    .line 2904
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to byte"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1254
    :cond_0
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 1255
    check-cast p0, Ljava/util/Date;

    return-object p0

    .line 1258
    :cond_1
    instance-of v0, p0, Ljava/time/Instant;

    if-eqz v0, :cond_2

    .line 1259
    check-cast p0, Ljava/time/Instant;

    .line 1260
    new-instance v0, Ljava/util/Date;

    .line 1261
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 1264
    :cond_2
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_3

    .line 1265
    check-cast p0, Ljava/time/ZonedDateTime;

    .line 1266
    new-instance v0, Ljava/util/Date;

    .line 1267
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 1270
    :cond_3
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_4

    .line 1271
    check-cast p0, Ljava/time/LocalDate;

    .line 1272
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 1273
    new-instance v0, Ljava/util/Date;

    .line 1274
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 1277
    :cond_4
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_5

    .line 1278
    check-cast p0, Ljava/time/LocalDateTime;

    .line 1279
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    .line 1280
    new-instance v0, Ljava/util/Date;

    .line 1281
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 1284
    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1285
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 1288
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_8

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    goto :goto_0

    .line 1292
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_8
    :goto_0
    new-instance v0, Ljava/util/Date;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    if-eqz p0, :cond_5

    .line 3109
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3113
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 3114
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 3117
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3118
    check-cast p0, Ljava/lang/String;

    .line 3119
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3122
    :cond_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 3125
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to decimal"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3110
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method public static toDoubleValue(Ljava/lang/Object;)D
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 3089
    :cond_0
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 3090
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 3093
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 3094
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 3097
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 3098
    check-cast p0, Ljava/lang/String;

    .line 3099
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 3102
    :cond_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :cond_4
    :goto_0
    return-wide v0

    .line 3105
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to decimal"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 1

    if-eqz p0, :cond_5

    .line 3065
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3069
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 3070
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 3073
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 3074
    check-cast p0, Ljava/lang/String;

    .line 3075
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3078
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 3081
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to decimal"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3066
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static toFloatValue(Ljava/lang/Object;)F
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3045
    :cond_0
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3046
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 3049
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 3050
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    .line 3053
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 3054
    check-cast p0, Ljava/lang/String;

    .line 3055
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 3058
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0

    .line 3061
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to decimal"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toInstant(Ljava/lang/Object;)Ljava/time/Instant;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1300
    :cond_0
    instance-of v1, p0, Ljava/time/Instant;

    if-eqz v1, :cond_1

    .line 1301
    check-cast p0, Ljava/time/Instant;

    return-object p0

    .line 1304
    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    .line 1305
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 1308
    :cond_2
    instance-of v1, p0, Ljava/time/ZonedDateTime;

    if-eqz v1, :cond_3

    .line 1309
    check-cast p0, Ljava/time/ZonedDateTime;

    .line 1310
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0

    .line 1313
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1314
    check-cast p0, Ljava/lang/String;

    .line 1315
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1320
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    goto :goto_0

    .line 1323
    :cond_5
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 1325
    :goto_0
    const-class v0, Ljava/time/Instant;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReader;->read(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Instant;

    return-object p0

    :cond_6
    :goto_1
    return-object v0

    .line 1328
    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 1329
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInstant;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInstant;

    check-cast p0, Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInstant;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Instant;

    return-object p0

    .line 1332
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntValue(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2956
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2957
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 2960
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 2961
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 2964
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2965
    check-cast p0, Ljava/lang/String;

    .line 2966
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x2e

    .line 2970
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2971
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    return p0

    .line 2974
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v0

    .line 2977
    :cond_6
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to decimal"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    if-eqz p0, :cond_7

    .line 2836
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2840
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 2841
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2844
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2845
    check-cast p0, Ljava/lang/String;

    .line 2846
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2849
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1

    .line 2852
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v1

    .line 2856
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 2857
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2860
    :cond_6
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to integer"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2837
    :cond_7
    :goto_1
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 3

    if-eqz p0, :cond_5

    .line 1986
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1990
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 1991
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1994
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1995
    check-cast p0, Ljava/lang/String;

    .line 1996
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1999
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 2002
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1987
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static toLongValue(Ljava/lang/Object;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 2010
    :cond_0
    instance-of v2, p0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 2011
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 2014
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 2015
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 2018
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2019
    check-cast p0, Ljava/lang/String;

    .line 2020
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 2023
    :cond_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_4
    :goto_0
    return-wide v0

    .line 2026
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 1

    if-eqz p0, :cond_5

    .line 2908
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2912
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 2913
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 2916
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2917
    check-cast p0, Ljava/lang/String;

    .line 2918
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2921
    :cond_2
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    .line 2924
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to byte"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2909
    :cond_5
    :goto_1
    check-cast p0, Ljava/lang/Short;

    return-object p0
.end method

.method public static toShortValue(Ljava/lang/Object;)S
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2932
    :cond_0
    instance-of v1, p0, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 2933
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0

    .line 2936
    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 2937
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    int-to-byte p0, p0

    int-to-short p0, p0

    return p0

    .line 2940
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2941
    check-cast p0, Ljava/lang/String;

    .line 2942
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 2945
    :cond_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0

    .line 2948
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "can not cast to byte"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 3

    if-ltz p0, :cond_0

    .line 208
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils$X2;->chars:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 209
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils$X2;->chars:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toString(BB)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v1, 0x7e

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x5f

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    .line 225
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils$X2;->chars2:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const/4 p0, 0x1

    aput-byte p1, v1, p0

    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 1

    .line 201
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils$X2;->chars:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 202
    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils$X2;->chars:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0

    .line 204
    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(CC)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v1, 0x7e

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x5f

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    .line 217
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils$X2;->chars2:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    const/4 p0, 0x1

    aput-char p1, v1, p0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static toStringArray(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_9

    .line 1365
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_6

    .line 1369
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1370
    check-cast p0, Ljava/util/Collection;

    .line 1371
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1373
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-eqz v2, :cond_2

    .line 1375
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    :goto_1
    check-cast v2, Ljava/lang/String;

    :goto_2
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_3
    return-object v0

    .line 1380
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1381
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1382
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1383
    new-array v2, v0, [Ljava/lang/String;

    :goto_3
    if-ge v1, v0, :cond_7

    .line 1385
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1386
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    :goto_4
    check-cast v3, Ljava/lang/String;

    :goto_5
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-object v2

    .line 1391
    :cond_8
    const-class v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 1366
    :cond_9
    :goto_6
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static validateIPv4(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 4008
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->validateIPv4(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static validateIPv4(Ljava/lang/String;I)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4016
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v2, v1, p1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_11

    const/16 v3, 0x19

    if-le v2, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    move v2, p1

    move v3, v0

    :goto_0
    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ge p1, v1, :cond_10

    .line 4027
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_2

    add-int/lit8 v8, v1, -0x1

    if-ne p1, v8, :cond_e

    :cond_2
    if-ne v6, v7, :cond_3

    move v8, p1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, p1, 0x1

    :goto_1
    sub-int v9, v8, v2

    const/16 v10, 0x39

    const/16 v11, 0x30

    if-eq v9, v5, :cond_c

    const/4 v5, 0x2

    if-eq v9, v5, :cond_9

    if-eq v9, v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v4, v8, -0x3

    .line 4052
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v8, -0x2

    .line 4053
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v8, v8, -0x1

    .line 4054
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v4, v11, :cond_8

    const/16 v9, 0x32

    if-le v4, v9, :cond_5

    goto :goto_2

    :cond_5
    if-lt v5, v11, :cond_8

    if-le v5, v10, :cond_6

    goto :goto_2

    :cond_6
    if-lt v8, v11, :cond_8

    if-le v8, v10, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/lit8 v5, v5, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    add-int/lit8 v8, v8, -0x30

    add-int/2addr v4, v8

    const/16 v5, 0xff

    if-le v4, v5, :cond_d

    :cond_8
    :goto_2
    return v0

    :cond_9
    add-int/lit8 v4, v8, -0x2

    .line 4041
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v8, v8, -0x1

    .line 4042
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v4, v11, :cond_b

    if-le v4, v10, :cond_a

    goto :goto_3

    :cond_a
    if-lt v5, v11, :cond_b

    if-le v5, v10, :cond_d

    :cond_b
    :goto_3
    return v0

    :cond_c
    add-int/lit8 v8, v8, -0x1

    .line 4035
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v11, :cond_f

    if-le v4, v10, :cond_d

    goto :goto_4

    :cond_d
    if-ne v6, v7, :cond_e

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, p1, 0x1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_f
    :goto_4
    return v0

    :cond_10
    if-ne v3, v4, :cond_11

    move v0, v5

    :cond_11
    :goto_5
    return v0
.end method

.method public static validateIPv6(Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4089
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_32

    const/16 v4, 0x27

    if-le v2, v4, :cond_1

    goto/16 :goto_b

    :cond_1
    move v4, v1

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v2, :cond_30

    .line 4097
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    .line 4099
    invoke-static {v0, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->validateIPv4(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_30

    return v1

    :cond_2
    const/16 v9, 0x3a

    if-eq v8, v9, :cond_3

    add-int/lit8 v10, v2, -0x1

    if-ne v4, v10, :cond_2f

    :cond_3
    if-ne v8, v9, :cond_4

    move v10, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v4, 0x1

    :goto_1
    sub-int v11, v10, v5

    if-eqz v11, :cond_2e

    const/16 v13, 0x46

    const/16 v14, 0x61

    const/16 v15, 0x39

    const/16 v9, 0x41

    const/16 v12, 0x30

    if-eq v11, v7, :cond_29

    if-eq v11, v3, :cond_21

    const/4 v7, 0x3

    if-eq v11, v7, :cond_15

    const/4 v7, 0x4

    if-eq v11, v7, :cond_5

    return v1

    :cond_5
    add-int/lit8 v7, v10, -0x4

    .line 4146
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v11, v10, -0x3

    .line 4147
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v3, v10, -0x2

    .line 4148
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v10, v10, -0x1

    .line 4149
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v7, v12, :cond_6

    if-le v7, v15, :cond_8

    :cond_6
    if-lt v7, v9, :cond_7

    if-le v7, v13, :cond_8

    :cond_7
    if-lt v7, v14, :cond_14

    const/16 v1, 0x66

    if-le v7, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    if-lt v11, v12, :cond_9

    if-le v11, v15, :cond_b

    :cond_9
    if-lt v11, v9, :cond_a

    if-le v11, v13, :cond_b

    :cond_a
    if-lt v11, v14, :cond_13

    const/16 v1, 0x66

    if-le v11, v1, :cond_b

    goto :goto_3

    :cond_b
    if-lt v3, v12, :cond_c

    if-le v3, v15, :cond_e

    :cond_c
    if-lt v3, v9, :cond_d

    if-le v3, v13, :cond_e

    :cond_d
    if-lt v3, v14, :cond_12

    const/16 v1, 0x66

    if-le v3, v1, :cond_e

    goto :goto_2

    :cond_e
    if-lt v10, v12, :cond_f

    if-le v10, v15, :cond_2a

    :cond_f
    if-lt v10, v9, :cond_10

    if-le v10, v13, :cond_2a

    :cond_10
    if-lt v10, v14, :cond_11

    const/16 v1, 0x66

    if-le v10, v1, :cond_2a

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_12
    :goto_2
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_3
    const/4 v0, 0x0

    return v0

    :cond_14
    move v0, v1

    :goto_4
    return v0

    :cond_15
    add-int/lit8 v1, v10, -0x3

    .line 4131
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v3, v10, -0x2

    .line 4132
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v10, v10, -0x1

    .line 4133
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v1, v12, :cond_16

    if-le v1, v15, :cond_18

    :cond_16
    if-lt v1, v9, :cond_17

    if-le v1, v13, :cond_18

    :cond_17
    if-lt v1, v14, :cond_20

    const/16 v10, 0x66

    if-le v1, v10, :cond_18

    goto :goto_6

    :cond_18
    if-lt v3, v12, :cond_19

    if-le v3, v15, :cond_1b

    :cond_19
    if-lt v3, v9, :cond_1a

    if-le v3, v13, :cond_1b

    :cond_1a
    if-lt v3, v14, :cond_1f

    const/16 v1, 0x66

    if-le v3, v1, :cond_1b

    goto :goto_5

    :cond_1b
    if-lt v7, v12, :cond_1c

    if-le v7, v15, :cond_2a

    :cond_1c
    if-lt v7, v9, :cond_1d

    if-le v7, v13, :cond_2a

    :cond_1d
    if-lt v7, v14, :cond_1e

    const/16 v1, 0x66

    if-le v7, v1, :cond_2a

    :cond_1e
    const/4 v0, 0x0

    return v0

    :cond_1f
    :goto_5
    const/4 v0, 0x0

    return v0

    :cond_20
    :goto_6
    const/4 v0, 0x0

    return v0

    :cond_21
    add-int/lit8 v1, v10, -0x2

    .line 4120
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v10, v10, -0x1

    .line 4121
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v1, v12, :cond_22

    if-le v1, v15, :cond_24

    :cond_22
    if-lt v1, v9, :cond_23

    if-le v1, v13, :cond_24

    :cond_23
    if-lt v1, v14, :cond_28

    const/16 v7, 0x66

    if-le v1, v7, :cond_24

    goto :goto_7

    :cond_24
    if-lt v3, v12, :cond_25

    if-le v3, v15, :cond_2a

    :cond_25
    if-lt v3, v9, :cond_26

    if-le v3, v13, :cond_2a

    :cond_26
    if-lt v3, v14, :cond_27

    const/16 v1, 0x66

    if-le v3, v1, :cond_2a

    :cond_27
    const/4 v0, 0x0

    return v0

    :cond_28
    :goto_7
    const/4 v0, 0x0

    return v0

    :cond_29
    add-int/lit8 v10, v10, -0x1

    .line 4114
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v12, :cond_2b

    if-le v1, v15, :cond_2a

    goto :goto_8

    :cond_2a
    const/16 v1, 0x3a

    goto :goto_9

    :cond_2b
    :goto_8
    if-lt v1, v9, :cond_2c

    if-le v1, v13, :cond_2a

    :cond_2c
    if-lt v1, v14, :cond_2d

    const/16 v3, 0x66

    if-le v1, v3, :cond_2a

    :cond_2d
    const/4 v0, 0x0

    return v0

    :cond_2e
    move v1, v9

    :goto_9
    if-ne v8, v1, :cond_2f

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v4, 0x1

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    goto/16 :goto_0

    :cond_30
    if-lez v6, :cond_31

    const/16 v0, 0x8

    if-ge v6, v0, :cond_31

    move v1, v7

    goto :goto_a

    :cond_31
    const/4 v1, 0x0

    :goto_a
    return v1

    :cond_32
    :goto_b
    move v0, v1

    return v0
.end method
