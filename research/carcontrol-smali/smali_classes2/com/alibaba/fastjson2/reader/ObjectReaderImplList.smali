.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;
.super Ljava/lang/Object;
.source "ObjectReaderImplList.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# static fields
.field static final CLASS_ARRAYS_LIST:Ljava/lang/Class;

.field static final CLASS_EMPTY_LIST:Ljava/lang/Class;

.field static final CLASS_EMPTY_SET:Ljava/lang/Class;

.field static final CLASS_SINGLETON:Ljava/lang/Class;

.field static final CLASS_SINGLETON_LIST:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

.field static final CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

.field public static INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;


# instance fields
.field final builder:Ljava/util/function/Function;

.field volatile constructor:Ljava/lang/reflect/Constructor;

.field volatile instanceError:Z

.field final instanceType:Ljava/lang/Class;

.field final instanceTypeHash:J

.field final itemClass:Ljava/lang/Class;

.field final itemClassName:Ljava/lang/String;

.field final itemClassNameHash:J

.field itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final itemType:Ljava/lang/reflect/Type;

.field final listClass:Ljava/lang/Class;

.field listSingleton:Ljava/lang/Object;

.field final listType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_SET:Ljava/lang/Class;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_LIST:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    .line 21
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v1, v2, v0

    .line 22
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptySortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

    .line 30
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    const-class v2, Ljava/util/ArrayList;

    const-class v3, Ljava/util/ArrayList;

    const-class v4, Ljava/util/ArrayList;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    sput-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6

    .line 208
    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    .line 209
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listSingleton:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listType:Ljava/lang/reflect/Type;

    .line 214
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    .line 215
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    .line 216
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceTypeHash:J

    .line 217
    iput-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 218
    invoke-static {p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    .line 219
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_0

    .line 220
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassName:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 221
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassNameHash:J

    return-void
.end method

.method public static synthetic lambda$-tyXSJp6yIHZkhd2CSpn4WX993I(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Dl84f_f-BKCJgvgdSGdSQmw-KrQ(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Hvo3AoVv9PLdAl3rnnLmvx8AXvE(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$JsxHMws04F2Dh76JtRQA6GLDlcI(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$KmCYrCDdWcmGkEx5g-TIhFfBkDY(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$SHHtmjIbqL3gJz4iPPzD781Zajo(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ZLR_S5xBs-G7PN2LRM6JEyGmWks(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$hVOlR9xTu-q1Ke5v7aslA_J9Cvs(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$iMnH_35eFEBLoPR5IzFeiOquZTA(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 103
    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 106
    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$5(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$6(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$7(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$of$8(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readJSONBObject$10(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readJSONBObject$11(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 469
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readJSONBObject$12(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 476
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readJSONBObject$9(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 405
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wzemHH36VFj4CWmc4njg0GT465s(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 9

    if-ne p1, p0, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    :cond_0
    move-object v1, p0

    .line 52
    const-class p0, Ljava/lang/Object;

    .line 54
    instance-of p2, v1, Ljava/lang/reflect/ParameterizedType;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 55
    move-object p2, v1

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 56
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 57
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 58
    array-length v3, p2

    if-ne v3, v0, :cond_1

    .line 59
    aget-object p0, p2, p3

    :cond_1
    :goto_0
    move-object v4, p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 65
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 66
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 67
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 68
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 69
    array-length v3, p2

    if-ne v3, v0, :cond_1

    .line 70
    aget-object p0, p2, p3

    goto :goto_0

    :cond_3
    move-object v4, p0

    move-object v2, v1

    :goto_1
    if-nez p1, :cond_4

    .line 77
    invoke-static {v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    move-object v2, p0

    goto :goto_2

    :cond_4
    move-object v2, p1

    .line 83
    :goto_2
    const-class p0, Ljava/lang/Iterable;

    const/4 p1, 0x3

    const/4 p2, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-eq v2, p0, :cond_23

    const-class p0, Ljava/util/Collection;

    if-eq v2, p0, :cond_23

    const-class p0, Ljava/util/List;

    if-eq v2, p0, :cond_23

    const-class p0, Ljava/util/AbstractCollection;

    if-eq v2, p0, :cond_23

    const-class p0, Ljava/util/AbstractList;

    if-ne v2, p0, :cond_5

    goto/16 :goto_8

    .line 90
    :cond_5
    const-class p0, Ljava/util/Queue;

    if-eq v2, p0, :cond_22

    const-class p0, Ljava/util/Deque;

    if-eq v2, p0, :cond_22

    const-class p0, Ljava/util/AbstractSequentialList;

    if-ne v2, p0, :cond_6

    goto/16 :goto_7

    .line 94
    :cond_6
    const-class p0, Ljava/util/Set;

    if-eq v2, p0, :cond_21

    const-class p0, Ljava/util/AbstractSet;

    if-ne v2, p0, :cond_7

    goto/16 :goto_6

    .line 96
    :cond_7
    const-class p0, Ljava/util/EnumSet;

    if-ne v2, p0, :cond_8

    .line 97
    const-class p0, Ljava/util/HashSet;

    .line 98
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$yd2e2Ug4o9KmSSdrTf2cfq1PmlM;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$yd2e2Ug4o9KmSSdrTf2cfq1PmlM;

    goto/16 :goto_a

    .line 99
    :cond_8
    const-class p0, Ljava/util/NavigableSet;

    if-eq v2, p0, :cond_20

    const-class p0, Ljava/util/SortedSet;

    if-ne v2, p0, :cond_9

    goto/16 :goto_5

    .line 101
    :cond_9
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    if-ne v2, p0, :cond_a

    .line 102
    const-class p0, Ljava/util/ArrayList;

    .line 103
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$azC1a3d8fKaud4lErk05fCw1QH0;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$azC1a3d8fKaud4lErk05fCw1QH0;

    goto/16 :goto_a

    .line 104
    :cond_a
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    if-ne v2, p0, :cond_b

    .line 105
    const-class p0, Ljava/util/ArrayList;

    .line 106
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$d9AcdwkO23kVhgi6Wr_rqGoyWYM;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$d9AcdwkO23kVhgi6Wr_rqGoyWYM;

    goto/16 :goto_a

    .line 107
    :cond_b
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    if-ne v2, p0, :cond_c

    .line 108
    const-class p0, Ljava/util/ArrayList;

    .line 109
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$2NdrGn1iVw20JewiMQ6UFuWkGKI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$2NdrGn1iVw20JewiMQ6UFuWkGKI;

    goto/16 :goto_a

    .line 110
    :cond_c
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    if-ne v2, p0, :cond_d

    .line 111
    const-class p0, Ljava/util/ArrayList;

    .line 112
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$RU20-nk2tlbaXTWdHg9hD55Vzko;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$RU20-nk2tlbaXTWdHg9hD55Vzko;

    goto/16 :goto_a

    .line 113
    :cond_d
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    if-ne v2, p0, :cond_e

    .line 114
    const-class p0, Ljava/util/ArrayList;

    .line 115
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$AqU18ANBmXxm2FRrAsAnqRO4iok;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$AqU18ANBmXxm2FRrAsAnqRO4iok;

    goto/16 :goto_a

    .line 116
    :cond_e
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    if-ne v2, p0, :cond_f

    .line 117
    const-class p0, Ljava/util/LinkedHashSet;

    .line 118
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$BsH7HyRtsmki9c6cMrV5BpXu088;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$BsH7HyRtsmki9c6cMrV5BpXu088;

    goto/16 :goto_a

    .line 119
    :cond_f
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

    if-ne v2, p0, :cond_10

    .line 120
    const-class p0, Ljava/util/TreeSet;

    .line 121
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iCnNpQ9FwyA0bULJW2KS9fUslug;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iCnNpQ9FwyA0bULJW2KS9fUslug;

    goto/16 :goto_a

    .line 122
    :cond_10
    sget-object p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

    if-ne v2, p0, :cond_11

    .line 123
    const-class p0, Ljava/util/TreeSet;

    .line 124
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$yglZmd-7cEu9cEtnJIGecf3zWQ4;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$yglZmd-7cEu9cEtnJIGecf3zWQ4;

    goto/16 :goto_a

    .line 126
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_3
    move p0, v3

    goto/16 :goto_4

    :sswitch_0
    const-string v6, "com.google.common.collect.RegularImmutableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_3

    :cond_12
    const/16 p0, 0xd

    goto/16 :goto_4

    :sswitch_1
    const-string v6, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_3

    :cond_13
    const/16 p0, 0xc

    goto/16 :goto_4

    :sswitch_2
    const-string v6, "com.google.common.collect.Lists.TransformingSequentialList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_3

    :cond_14
    const/16 p0, 0xb

    goto/16 :goto_4

    :sswitch_3
    const-string v6, "com.google.common.collect.Lists$TransformingRandomAccessList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_3

    :cond_15
    const/16 p0, 0xa

    goto/16 :goto_4

    :sswitch_4
    const-string v6, "com.google.common.collect.ImmutableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_3

    :cond_16
    const/16 p0, 0x9

    goto/16 :goto_4

    :sswitch_5
    const-string v6, "com.google.common.collect.SingletonImmutableList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_3

    :cond_17
    const/16 p0, 0x8

    goto/16 :goto_4

    :sswitch_6
    const-string v6, "java.util.Collections$SynchronizedNavigableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_3

    :cond_18
    const/4 p0, 0x7

    goto :goto_4

    :sswitch_7
    const-string v6, "java.util.Collections$SynchronizedRandomAccessList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_3

    :cond_19
    const/4 p0, 0x6

    goto :goto_4

    :sswitch_8
    const-string v6, "com.google.common.collect.SingletonImmutableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_3

    :cond_1a
    const/4 p0, 0x5

    goto :goto_4

    :sswitch_9
    const-string v6, "java.util.Collections$SynchronizedCollection"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto :goto_3

    :cond_1b
    const/4 p0, 0x4

    goto :goto_4

    :sswitch_a
    const-string v6, "com.google.common.collect.RegularImmutableList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_3

    :cond_1c
    move p0, p1

    goto :goto_4

    :sswitch_b
    const-string v6, "java.util.Collections$SynchronizedSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_3

    :cond_1d
    move p0, p2

    goto :goto_4

    :sswitch_c
    const-string v6, "com.google.common.collect.ImmutableList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_3

    :cond_1e
    move p0, v0

    goto :goto_4

    :sswitch_d
    const-string v6, "java.util.Collections$SynchronizedSortedSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_3

    :cond_1f
    move p0, p3

    :goto_4
    packed-switch p0, :pswitch_data_0

    move-object p0, v2

    goto :goto_9

    .line 145
    :pswitch_0
    const-class p0, Ljava/util/LinkedList;

    goto :goto_9

    .line 142
    :pswitch_1
    const-class p0, Ljava/util/ArrayList;

    goto :goto_9

    .line 164
    :pswitch_2
    const-class p0, Ljava/util/TreeSet;

    .line 165
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$hVOlR9xTu-q1Ke5v7aslA_J9Cvs;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$hVOlR9xTu-q1Ke5v7aslA_J9Cvs;

    goto :goto_a

    .line 148
    :pswitch_3
    const-class p0, Ljava/util/ArrayList;

    .line 149
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$iMnH_35eFEBLoPR5IzFeiOquZTA;

    goto :goto_a

    .line 138
    :pswitch_4
    const-class p0, Ljava/util/ArrayList;

    .line 139
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableSetConverter()Ljava/util/function/Function;

    move-result-object v6

    goto :goto_a

    .line 152
    :pswitch_5
    const-class p0, Ljava/util/ArrayList;

    .line 153
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$Dl84f_f-BKCJgvgdSGdSQmw-KrQ;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$Dl84f_f-BKCJgvgdSGdSQmw-KrQ;

    goto :goto_a

    .line 156
    :pswitch_6
    const-class p0, Ljava/util/HashSet;

    .line 157
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$KmCYrCDdWcmGkEx5g-TIhFfBkDY;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$KmCYrCDdWcmGkEx5g-TIhFfBkDY;

    goto :goto_a

    .line 132
    :pswitch_7
    const-class p0, Ljava/util/ArrayList;

    .line 133
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableListConverter()Ljava/util/function/Function;

    move-result-object v6

    goto :goto_a

    .line 160
    :pswitch_8
    const-class p0, Ljava/util/TreeSet;

    .line 161
    sget-object v6, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$Hvo3AoVv9PLdAl3rnnLmvx8AXvE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$Hvo3AoVv9PLdAl3rnnLmvx8AXvE;

    goto :goto_a

    .line 100
    :cond_20
    :goto_5
    const-class p0, Ljava/util/TreeSet;

    goto :goto_9

    .line 95
    :cond_21
    :goto_6
    const-class p0, Ljava/util/HashSet;

    goto :goto_9

    .line 93
    :cond_22
    :goto_7
    const-class p0, Ljava/util/LinkedList;

    goto :goto_9

    .line 89
    :cond_23
    :goto_8
    const-class p0, Ljava/util/ArrayList;

    :goto_9
    move-object v6, v5

    .line 172
    :goto_a
    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :goto_b
    move p3, v3

    goto :goto_c

    :sswitch_e
    const-string p2, "kotlin.collections.EmptySet"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    goto :goto_b

    :cond_24
    move p3, p1

    goto :goto_c

    :sswitch_f
    const-string p1, "java.util.Collections$EmptyList"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_b

    :cond_25
    move p3, p2

    goto :goto_c

    :sswitch_10
    const-string p1, "java.util.Collections$EmptySet"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_b

    :cond_26
    move p3, v0

    goto :goto_c

    :sswitch_11
    const-string p1, "kotlin.collections.EmptyList"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_b

    :cond_27
    :goto_c
    packed-switch p3, :pswitch_data_1

    .line 196
    const-class p1, Ljava/lang/String;

    if-ne v4, p1, :cond_28

    if-nez v6, :cond_28

    .line 197
    new-instance p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    .line 200
    :cond_28
    const-class p1, Ljava/lang/Long;

    if-ne v4, p1, :cond_29

    if-nez v6, :cond_29

    .line 201
    new-instance p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    .line 204
    :cond_29
    new-instance p1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    move-object v0, p1

    move-object v3, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    return-object p1

    .line 192
    :pswitch_9
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    check-cast v1, Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0

    .line 189
    :pswitch_a
    new-instance p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    check-cast v1, Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0

    .line 176
    :pswitch_b
    move-object p0, v1

    check-cast p0, Ljava/lang/Class;

    :try_start_0
    const-string p1, "INSTANCE"

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_2a

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 182
    :cond_2a
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    new-instance p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p2

    :catch_0
    move-exception p0

    goto :goto_d

    :catch_1
    move-exception p0

    .line 184
    :goto_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to get singleton of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x7a823dfe -> :sswitch_d
        -0x766adabf -> :sswitch_c
        -0x6007a441 -> :sswitch_b
        -0x4f0d501d -> :sswitch_a
        -0x30d4835f -> :sswitch_9
        -0x289861d4 -> :sswitch_8
        -0xcb38ef8 -> :sswitch_7
        -0x82baab6 -> :sswitch_6
        0x15890814 -> :sswitch_5
        0x35fca75f -> :sswitch_4
        0x50d047c9 -> :sswitch_3
        0x53c73d4b -> :sswitch_2
        0x5b0f3e73 -> :sswitch_1
        0x7952407d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c36e6db -> :sswitch_11
        -0x18a7e41c -> :sswitch_10
        0x3a8415c -> :sswitch_f
        0x1548a6fb -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 3

    .line 311
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_1

    .line 312
    sget p1, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1

    .line 315
    :cond_1
    const-class p2, Ljava/util/LinkedList;

    if-ne p1, p2, :cond_2

    .line 316
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 319
    :cond_2
    const-class p2, Ljava/util/HashSet;

    if-ne p1, p2, :cond_3

    .line 320
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 323
    :cond_3
    const-class p2, Ljava/util/LinkedHashSet;

    if-ne p1, p2, :cond_4

    .line 324
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1

    .line 327
    :cond_4
    const-class p2, Ljava/util/TreeSet;

    if-ne p1, p2, :cond_5

    .line 328
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    return-object p1

    .line 331
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listSingleton:Ljava/lang/Object;

    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 337
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->hasPublicDefaultConstructor(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 338
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->constructor:Ljava/lang/reflect/Constructor;

    .line 339
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 341
    :cond_7
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    const-string v2, "create list error, type "

    if-nez p2, :cond_9

    .line 343
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->constructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_8

    .line 344
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->constructor:Ljava/lang/reflect/Constructor;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 346
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 349
    :catch_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    .line 350
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    .line 354
    :cond_9
    iget-boolean p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    if-eqz p2, :cond_a

    const-class p2, Ljava/util/List;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 356
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 358
    :catch_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceError:Z

    .line 359
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    :cond_a
    if-nez p1, :cond_b

    goto :goto_1

    .line 364
    :cond_b
    throw p1

    .line 368
    :cond_c
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 10

    .line 236
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    if-ne v0, v1, :cond_1

    .line 239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1

    .line 246
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 255
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 257
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 263
    const-class v6, Lcom/alibaba/fastjson2/JSONObject;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_JSON_OBJECT_1x:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    if-eq v6, v5, :cond_6

    .line 264
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_5

    .line 265
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 267
    :cond_5
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Lcom/alibaba/fastjson2/JSONObject;

    invoke-interface {v5, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 268
    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    if-eq v5, v6, :cond_10

    .line 269
    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 271
    invoke-interface {v6, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 272
    :cond_7
    instance-of v6, v2, Ljava/util/Map;

    if-eqz v6, :cond_9

    .line 273
    check-cast v2, Ljava/util/Map;

    .line 274
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_8

    .line 275
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 277
    :cond_8
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    invoke-interface {v5, v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 278
    :cond_9
    instance-of v6, v2, Ljava/util/Collection;

    if-eqz v6, :cond_b

    .line 279
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v5, :cond_a

    .line 280
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 282
    :cond_a
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v5, v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 283
    :cond_b
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_2

    .line 285
    :cond_c
    const-class v6, Ljava/lang/Enum;

    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const-string v7, " to "

    const-string v8, "can not convert from "

    if-eqz v6, :cond_f

    .line 286
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v6, :cond_d

    .line 287
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 290
    :cond_d
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    instance-of v9, v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    if-eqz v9, :cond_e

    .line 291
    check-cast v6, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplEnum;->getEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_2

    .line 293
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_f
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_10
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 302
    :cond_11
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_12

    .line 303
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v1
.end method

.method public getBuildFunction()Ljava/util/function/Function;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    return-object v0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 377
    :cond_0
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listClass:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 378
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    .line 379
    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    if-eqz v2, :cond_a

    .line 381
    instance-of v4, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    if-eqz v4, :cond_1

    .line 382
    move-object v3, v2

    check-cast v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;

    iget-object v4, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->instanceType:Ljava/lang/Class;

    .line 383
    iget-object v3, v3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    goto :goto_0

    .line 385
    :cond_1
    invoke-interface {v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object v4

    .line 388
    :goto_0
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    .line 389
    const-class v4, Ljava/util/ArrayList;

    .line 390
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$SHHtmjIbqL3gJz4iPPzD781Zajo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$SHHtmjIbqL3gJz4iPPzD781Zajo;

    goto :goto_1

    .line 391
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    if-ne v4, v5, :cond_3

    .line 392
    const-class v4, Ljava/util/ArrayList;

    .line 393
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$JsxHMws04F2Dh76JtRQA6GLDlcI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$JsxHMws04F2Dh76JtRQA6GLDlcI;

    goto :goto_1

    .line 394
    :cond_3
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    if-ne v4, v5, :cond_4

    .line 395
    const-class v4, Ljava/util/LinkedHashSet;

    .line 396
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$-tyXSJp6yIHZkhd2CSpn4WX993I;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$-tyXSJp6yIHZkhd2CSpn4WX993I;

    goto :goto_1

    .line 397
    :cond_4
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

    if-ne v4, v5, :cond_5

    .line 398
    const-class v4, Ljava/util/TreeSet;

    .line 399
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$wzemHH36VFj4CWmc4njg0GT465s;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$wzemHH36VFj4CWmc4njg0GT465s;

    goto :goto_1

    .line 400
    :cond_5
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

    if-ne v4, v5, :cond_6

    .line 401
    const-class v4, Ljava/util/TreeSet;

    .line 402
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$ZLR_S5xBs-G7PN2LRM6JEyGmWks;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$ZLR_S5xBs-G7PN2LRM6JEyGmWks;

    goto :goto_1

    .line 403
    :cond_6
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    if-ne v4, v5, :cond_7

    .line 404
    const-class v4, Ljava/util/ArrayList;

    .line 405
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OUCYvJEWmlDQB75XFmnFlApFWhA;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OUCYvJEWmlDQB75XFmnFlApFWhA;

    goto :goto_1

    .line 406
    :cond_7
    sget-object v5, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    if-ne v4, v5, :cond_8

    .line 407
    const-class v4, Ljava/util/ArrayList;

    .line 408
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$gvB2j5DQ--rrf_8LXX1NKSeXjMo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$gvB2j5DQ--rrf_8LXX1NKSeXjMo;

    goto :goto_1

    .line 410
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, "kotlin.collections.EmptyList"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "kotlin.collections.EmptySet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    .line 413
    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 421
    :cond_a
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v10

    if-lez v10, :cond_b

    .line 423
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v2, :cond_b

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v2

    iget-object v5, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 426
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 429
    :cond_b
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    const-string v11, ".."

    const/4 v5, 0x0

    if-ne v4, v2, :cond_f

    .line 430
    new-array v0, v10, [Ljava/lang/Object;

    .line 431
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move v13, v5

    :goto_2
    if-ge v13, v10, :cond_e

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v2, v12

    goto :goto_3

    .line 441
    :cond_c
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v2

    invoke-virtual {v8, v12, v13, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    move-object v2, v9

    goto :goto_3

    .line 444
    :cond_d
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 447
    :goto_3
    aput-object v2, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_e
    return-object v12

    .line 453
    :cond_f
    const-class v2, Ljava/util/ArrayList;

    if-ne v4, v2, :cond_11

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    if-lez v10, :cond_10

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_4

    :cond_10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    .line 455
    :cond_11
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v4, v2, :cond_13

    .line 456
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    if-lez v10, :cond_12

    invoke-direct {v2, v10}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto :goto_4

    :cond_12
    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_4

    .line 457
    :cond_13
    const-class v2, Ljava/util/HashSet;

    if-ne v4, v2, :cond_14

    .line 458
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_4
    move-object v12, v2

    move-object v13, v3

    goto/16 :goto_6

    .line 459
    :cond_14
    const-class v2, Ljava/util/LinkedHashSet;

    if-ne v4, v2, :cond_15

    .line 460
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_4

    .line 461
    :cond_15
    const-class v2, Ljava/util/TreeSet;

    if-ne v4, v2, :cond_16

    .line 462
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    goto :goto_4

    .line 463
    :cond_16
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_SET:Ljava/lang/Class;

    if-ne v4, v2, :cond_17

    .line 464
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_4

    .line 465
    :cond_17
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_LIST:Ljava/lang/Class;

    if-ne v4, v2, :cond_18

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_4

    .line 467
    :cond_18
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    if-ne v4, v2, :cond_19

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$OIOxftYl47ximhaN9av1i33FFjQ;

    goto :goto_4

    .line 470
    :cond_19
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    if-ne v4, v2, :cond_1a

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$JsxHMws04F2Dh76JtRQA6GLDlcI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$JsxHMws04F2Dh76JtRQA6GLDlcI;

    goto :goto_4

    :cond_1a
    if-eqz v4, :cond_1b

    .line 473
    const-class v2, Ljava/util/EnumSet;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 475
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 476
    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$6MS3oF8Jy1T9-4cyzJQ4suAJZyk;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplList$6MS3oF8Jy1T9-4cyzJQ4suAJZyk;

    goto :goto_4

    :cond_1b
    if-eqz v4, :cond_1c

    .line 477
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listType:Ljava/lang/reflect/Type;

    if-eq v4, v2, :cond_1c

    .line 479
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 481
    :goto_5
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create instance error "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 484
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v6

    or-long v6, v6, p4

    invoke-virtual {v1, v6, v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    goto/16 :goto_4

    .line 487
    :goto_6
    iget-object v2, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 488
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 489
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1d

    .line 490
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 491
    array-length v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    .line 492
    aget-object v3, v0, v5

    .line 493
    iget-object v0, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    if-eq v3, v0, :cond_1d

    .line 494
    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    :cond_1d
    move-object v0, v2

    move-object v14, v3

    move v15, v5

    :goto_7
    if-ge v15, v10, :cond_22

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v2, v12

    goto :goto_8

    .line 507
    :cond_1e
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v2

    invoke-virtual {v8, v12, v15, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    .line 508
    instance-of v2, v12, Ljava/util/List;

    if-eqz v2, :cond_21

    move-object v2, v9

    goto :goto_8

    .line 515
    :cond_1f
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    iget-wide v4, v1, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClassNameHash:J

    move-object/from16 v2, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 517
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v3, p1

    move-object v4, v14

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_8

    .line 519
    :cond_20
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v4, v14

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 523
    :goto_8
    invoke-interface {v12, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_22
    if-eqz v13, :cond_23

    .line 527
    invoke-interface {v13, v12}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_23
    return-object v12
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 535
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 538
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 541
    :cond_0
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 542
    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 545
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    return-object v1

    .line 550
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 551
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v2

    or-long p3, v2, p4

    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->createInstance(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 555
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p4

    const/16 p5, 0x22

    if-ne p4, p5, :cond_7

    .line 557
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 558
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    const-class p5, Ljava/lang/String;

    if-ne p4, p5, :cond_4

    .line 559
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 560
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 564
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 565
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object v1

    .line 569
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p4

    const-class p5, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {p4, p5, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 571
    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 572
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 573
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 576
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const/16 p5, 0x5b

    const/4 v0, 0x0

    if-ne p4, p5, :cond_f

    .line 578
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 592
    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    .line 593
    iget-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    .line 594
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->listType:Ljava/lang/reflect/Type;

    if-eq p2, v1, :cond_8

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_8

    .line 595
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 596
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 597
    aget-object p5, p2, v0

    .line 598
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    if-eq p5, p2, :cond_8

    .line 599
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p4

    .line 605
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 631
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    .line 633
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_9

    .line 634
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    return-object p3

    .line 610
    :cond_a
    const-class p2, Ljava/lang/String;

    if-ne p5, p2, :cond_b

    .line 611
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_b
    if-eqz p4, :cond_e

    .line 613
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 614
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object p2

    const-string v1, ".."

    .line 615
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object p2, p0

    goto :goto_2

    .line 618
    :cond_c
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p2

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask(Ljava/util/Collection;ILcom/alibaba/fastjson2/JSONPath;)V

    goto :goto_3

    .line 622
    :cond_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 628
    :goto_2
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    :cond_e
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TODO : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 580
    :cond_f
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemClass:Ljava/lang/Class;

    const-class p4, Ljava/lang/Object;

    if-eq p2, p4, :cond_10

    iget-object p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    if-nez p4, :cond_11

    :cond_10
    const-class p4, Ljava/lang/Object;

    if-ne p2, p4, :cond_13

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 581
    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemObjectReader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->itemType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 582
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->builder:Ljava/util/function/Function;

    if-eqz p1, :cond_12

    .line 584
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Ljava/util/Collection;

    :cond_12
    return-object p3

    .line 589
    :cond_13
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
