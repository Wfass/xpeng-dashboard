.class public final Lyp;
.super Ljava/lang/Object;
.source "ObjectReaderImplList.java"

# interfaces
.implements Lwk;


# static fields
.field static final a:Ljava/lang/Class;

.field static final b:Ljava/lang/Class;

.field static final c:Ljava/lang/Class;

.field static final d:Ljava/lang/Class;

.field static final e:Ljava/lang/Class;

.field static final g:Ljava/lang/Class;

.field static final h:Ljava/lang/Class;

.field static final i:Ljava/lang/Class;

.field static final j:Ljava/lang/Class;

.field static final k:Ljava/lang/Class;

.field public static l:Lyp;


# instance fields
.field final m:Ljava/lang/reflect/Type;

.field final n:Ljava/lang/Class;

.field final o:Ljava/lang/Class;

.field final p:J

.field final q:Ljava/lang/reflect/Type;

.field final r:Ljava/lang/Class;

.field final s:Ljava/lang/String;

.field final t:J

.field final u:Ljava/util/function/Function;

.field v:Ljava/lang/Object;

.field w:Lwk;

.field volatile x:Z

.field volatile y:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->a:Ljava/lang/Class;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->b:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lyp;->c:Ljava/lang/Class;

    .line 21
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lyp;->d:Ljava/lang/Class;

    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->e:Ljava/lang/Class;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->g:Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->h:Ljava/lang/Class;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->i:Ljava/lang/Class;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptySortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->j:Ljava/lang/Class;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lyp;->k:Ljava/lang/Class;

    .line 30
    new-instance v0, Lyp;

    const-class v2, Ljava/util/ArrayList;

    const-class v3, Ljava/util/ArrayList;

    const-class v4, Ljava/util/ArrayList;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lyp;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    sput-object v0, Lyp;->l:Lyp;

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

    invoke-direct/range {v0 .. v5}, Lyp;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    .line 209
    iput-object p2, p0, Lyp;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lyp;->m:Ljava/lang/reflect/Type;

    .line 214
    iput-object p2, p0, Lyp;->n:Ljava/lang/Class;

    .line 215
    iput-object p3, p0, Lyp;->o:Ljava/lang/Class;

    .line 216
    invoke-static {p3}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lyp;->p:J

    .line 217
    iput-object p4, p0, Lyp;->q:Ljava/lang/reflect/Type;

    .line 218
    invoke-static {p4}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lyp;->r:Ljava/lang/Class;

    .line 219
    iput-object p5, p0, Lyp;->u:Ljava/util/function/Function;

    .line 220
    iget-object p1, p0, Lyp;->r:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-static {p1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lyp;->s:Ljava/lang/String;

    .line 221
    iget-object p1, p0, Lyp;->s:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    :goto_1
    iput-wide p1, p0, Lyp;->t:J

    return-void
.end method

.method private static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 476
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
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

.method private static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 408
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;
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
    invoke-static {v2}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    move-object v2, p0

    goto :goto_2

    :cond_4
    move-object v2, p1

    .line 83
    :goto_2
    const-class p0, Ljava/lang/Iterable;

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x2

    if-eq v2, p0, :cond_16

    const-class p0, Ljava/util/Collection;

    if-eq v2, p0, :cond_16

    const-class p0, Ljava/util/List;

    if-eq v2, p0, :cond_16

    const-class p0, Ljava/util/AbstractCollection;

    if-eq v2, p0, :cond_16

    const-class p0, Ljava/util/AbstractList;

    if-ne v2, p0, :cond_5

    goto/16 :goto_8

    .line 90
    :cond_5
    const-class p0, Ljava/util/Queue;

    if-eq v2, p0, :cond_15

    const-class p0, Ljava/util/Deque;

    if-eq v2, p0, :cond_15

    const-class p0, Ljava/util/AbstractSequentialList;

    if-ne v2, p0, :cond_6

    goto/16 :goto_7

    .line 94
    :cond_6
    const-class p0, Ljava/util/Set;

    if-eq v2, p0, :cond_14

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
    sget-object v6, L-$$Lambda$yp$7ASguGs0ms2EN6JKu1L3L5d-KiI;->INSTANCE:L-$$Lambda$yp$7ASguGs0ms2EN6JKu1L3L5d-KiI;

    goto/16 :goto_a

    .line 99
    :cond_8
    const-class p0, Ljava/util/NavigableSet;

    if-eq v2, p0, :cond_13

    const-class p0, Ljava/util/SortedSet;

    if-ne v2, p0, :cond_9

    goto/16 :goto_5

    .line 101
    :cond_9
    sget-object p0, Lyp;->c:Ljava/lang/Class;

    if-ne v2, p0, :cond_a

    .line 102
    const-class p0, Ljava/util/ArrayList;

    .line 103
    sget-object v6, L-$$Lambda$yp$gFBnmC_71DGVXaU3WpLNvcZy2_M;->INSTANCE:L-$$Lambda$yp$gFBnmC_71DGVXaU3WpLNvcZy2_M;

    goto/16 :goto_a

    .line 104
    :cond_a
    sget-object p0, Lyp;->d:Ljava/lang/Class;

    if-ne v2, p0, :cond_b

    .line 105
    const-class p0, Ljava/util/ArrayList;

    .line 106
    sget-object v6, L-$$Lambda$yp$ADQMZ-BlwoprEHhGglnFmEvxeaQ;->INSTANCE:L-$$Lambda$yp$ADQMZ-BlwoprEHhGglnFmEvxeaQ;

    goto/16 :goto_a

    .line 107
    :cond_b
    sget-object p0, Lyp;->e:Ljava/lang/Class;

    if-ne v2, p0, :cond_c

    .line 108
    const-class p0, Ljava/util/ArrayList;

    .line 109
    sget-object v6, L-$$Lambda$yp$BFGfQL30HQmwEyjzMv8vyIuNHeY;->INSTANCE:L-$$Lambda$yp$BFGfQL30HQmwEyjzMv8vyIuNHeY;

    goto/16 :goto_a

    .line 110
    :cond_c
    sget-object p0, Lyp;->g:Ljava/lang/Class;

    if-ne v2, p0, :cond_d

    .line 111
    const-class p0, Ljava/util/ArrayList;

    .line 112
    sget-object v6, L-$$Lambda$yp$tRUPjm5SmaBV7miqPj0OHS7FzOs;->INSTANCE:L-$$Lambda$yp$tRUPjm5SmaBV7miqPj0OHS7FzOs;

    goto/16 :goto_a

    .line 113
    :cond_d
    sget-object p0, Lyp;->h:Ljava/lang/Class;

    if-ne v2, p0, :cond_e

    .line 114
    const-class p0, Ljava/util/ArrayList;

    .line 115
    sget-object v6, L-$$Lambda$yp$xCv5YxmS7F4zZX7CuRLPhynZgO8;->INSTANCE:L-$$Lambda$yp$xCv5YxmS7F4zZX7CuRLPhynZgO8;

    goto/16 :goto_a

    .line 116
    :cond_e
    sget-object p0, Lyp;->i:Ljava/lang/Class;

    if-ne v2, p0, :cond_f

    .line 117
    const-class p0, Ljava/util/LinkedHashSet;

    .line 118
    sget-object v6, L-$$Lambda$yp$zWhb7tuy3XWKViSn6Kfu0CDlekQ;->INSTANCE:L-$$Lambda$yp$zWhb7tuy3XWKViSn6Kfu0CDlekQ;

    goto/16 :goto_a

    .line 119
    :cond_f
    sget-object p0, Lyp;->j:Ljava/lang/Class;

    if-ne v2, p0, :cond_10

    .line 120
    const-class p0, Ljava/util/TreeSet;

    .line 121
    sget-object v6, L-$$Lambda$yp$1PICg3q-knk7q_elApasfzNJom4;->INSTANCE:L-$$Lambda$yp$1PICg3q-knk7q_elApasfzNJom4;

    goto/16 :goto_a

    .line 122
    :cond_10
    sget-object p0, Lyp;->k:Ljava/lang/Class;

    if-ne v2, p0, :cond_11

    .line 123
    const-class p0, Ljava/util/TreeSet;

    .line 124
    sget-object v6, L-$$Lambda$yp$e_ducVEcEZSmbj-llJYEEZT_4Gs;->INSTANCE:L-$$Lambda$yp$e_ducVEcEZSmbj-llJYEEZT_4Gs;

    goto/16 :goto_a

    .line 126
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "com.google.common.collect.RegularImmutableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x6

    goto/16 :goto_4

    :sswitch_1
    const-string v6, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v3

    goto/16 :goto_4

    :sswitch_2
    const-string v6, "com.google.common.collect.Lists.TransformingSequentialList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x8

    goto/16 :goto_4

    :sswitch_3
    const-string v6, "com.google.common.collect.Lists$TransformingRandomAccessList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x7

    goto/16 :goto_4

    :sswitch_4
    const-string v6, "com.google.common.collect.ImmutableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x4

    goto/16 :goto_4

    :sswitch_5
    const-string v6, "com.google.common.collect.SingletonImmutableList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v0

    goto :goto_4

    :sswitch_6
    const-string v6, "java.util.Collections$SynchronizedNavigableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xd

    goto :goto_4

    :sswitch_7
    const-string v6, "java.util.Collections$SynchronizedRandomAccessList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x9

    goto :goto_4

    :sswitch_8
    const-string v6, "com.google.common.collect.SingletonImmutableSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x5

    goto :goto_4

    :sswitch_9
    const-string v6, "java.util.Collections$SynchronizedCollection"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xa

    goto :goto_4

    :sswitch_a
    const-string v6, "com.google.common.collect.RegularImmutableList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, v5

    goto :goto_4

    :sswitch_b
    const-string v6, "java.util.Collections$SynchronizedSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xb

    goto :goto_4

    :sswitch_c
    const-string v6, "com.google.common.collect.ImmutableList"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p0, p3

    goto :goto_4

    :sswitch_d
    const-string v6, "java.util.Collections$SynchronizedSortedSet"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0xc

    goto :goto_4

    :cond_12
    :goto_3
    move p0, p1

    :goto_4
    packed-switch p0, :pswitch_data_0

    move-object v6, p2

    move-object p0, v2

    goto :goto_a

    .line 164
    :pswitch_0
    const-class p0, Ljava/util/TreeSet;

    .line 165
    sget-object v6, L-$$Lambda$PJslCgHFPWsTExtxcZMpBOlIypI;->INSTANCE:L-$$Lambda$PJslCgHFPWsTExtxcZMpBOlIypI;

    goto :goto_a

    .line 160
    :pswitch_1
    const-class p0, Ljava/util/TreeSet;

    .line 161
    sget-object v6, L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;->INSTANCE:L-$$Lambda$uc9Uwe2dBxHA-hlw4FuGGqzIOok;

    goto :goto_a

    .line 156
    :pswitch_2
    const-class p0, Ljava/util/HashSet;

    .line 157
    sget-object v6, L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;->INSTANCE:L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;

    goto :goto_a

    .line 152
    :pswitch_3
    const-class p0, Ljava/util/ArrayList;

    .line 153
    sget-object v6, L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;->INSTANCE:L-$$Lambda$eDc80PWH_tLqzHaTIZn6Vc-hl9A;

    goto :goto_a

    .line 148
    :pswitch_4
    const-class p0, Ljava/util/ArrayList;

    .line 149
    sget-object v6, L-$$Lambda$mmFAuhJta4_uhPvFMyLe3VGMi1A;->INSTANCE:L-$$Lambda$mmFAuhJta4_uhPvFMyLe3VGMi1A;

    goto :goto_a

    .line 145
    :pswitch_5
    const-class p0, Ljava/util/LinkedList;

    goto :goto_9

    .line 142
    :pswitch_6
    const-class p0, Ljava/util/ArrayList;

    goto :goto_9

    .line 138
    :pswitch_7
    const-class p0, Ljava/util/ArrayList;

    .line 139
    invoke-static {}, Labd;->b()Ljava/util/function/Function;

    move-result-object v6

    goto :goto_a

    .line 132
    :pswitch_8
    const-class p0, Ljava/util/ArrayList;

    .line 133
    invoke-static {}, Labd;->a()Ljava/util/function/Function;

    move-result-object v6

    goto :goto_a

    .line 100
    :cond_13
    :goto_5
    const-class p0, Ljava/util/TreeSet;

    goto :goto_9

    .line 95
    :cond_14
    :goto_6
    const-class p0, Ljava/util/HashSet;

    goto :goto_9

    .line 93
    :cond_15
    :goto_7
    const-class p0, Ljava/util/LinkedList;

    goto :goto_9

    .line 89
    :cond_16
    :goto_8
    const-class p0, Ljava/util/ArrayList;

    :goto_9
    move-object v6, p2

    .line 172
    :goto_a
    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_b

    :sswitch_e
    const-string v8, "kotlin.collections.EmptySet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    move p1, p3

    goto :goto_b

    :sswitch_f
    const-string p3, "java.util.Collections$EmptyList"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    move p1, v3

    goto :goto_b

    :sswitch_10
    const-string p3, "java.util.Collections$EmptySet"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    move p1, v5

    goto :goto_b

    :sswitch_11
    const-string p3, "kotlin.collections.EmptyList"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    move p1, v0

    :cond_17
    :goto_b
    if-eqz p1, :cond_1c

    if-eq p1, v0, :cond_1c

    if-eq p1, v5, :cond_1b

    if-eq p1, v3, :cond_1a

    .line 196
    const-class p1, Ljava/lang/String;

    if-ne v4, p1, :cond_18

    if-nez v6, :cond_18

    .line 197
    new-instance p1, Lyr;

    invoke-direct {p1, v2, p0}, Lyr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    .line 200
    :cond_18
    const-class p1, Ljava/lang/Long;

    if-ne v4, p1, :cond_19

    if-nez v6, :cond_19

    .line 201
    new-instance p1, Lyq;

    invoke-direct {p1, v2, p0}, Lyq;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p1

    .line 204
    :cond_19
    new-instance p1, Lyp;

    move-object v0, p1

    move-object v3, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lyp;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/function/Function;)V

    return-object p1

    .line 192
    :cond_1a
    new-instance p0, Lyp;

    check-cast v1, Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyp;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0

    .line 189
    :cond_1b
    new-instance p0, Lyp;

    check-cast v1, Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lyp;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0

    .line 176
    :cond_1c
    move-object p0, v1

    check-cast p0, Ljava/lang/Class;

    :try_start_0
    const-string p1, "INSTANCE"

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p3

    if-nez p3, :cond_1d

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 182
    :cond_1d
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    new-instance p2, Lyp;

    invoke-direct {p2, p0, p1}, Lyp;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p2

    :catch_0
    move-exception p0

    goto :goto_c

    :catch_1
    move-exception p0

    .line 184
    :goto_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to get singleton of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6c36e6db -> :sswitch_11
        -0x18a7e41c -> :sswitch_10
        0x3a8415c -> :sswitch_f
        0x1548a6fb -> :sswitch_e
    .end sparse-switch
.end method

.method private static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
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

.method private static synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic h(Ljava/lang/Object;)Ljava/lang/Object;
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

.method private static synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
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

.method private static synthetic j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$1PICg3q-knk7q_elApasfzNJom4(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$7ASguGs0ms2EN6JKu1L3L5d-KiI(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ADQMZ-BlwoprEHhGglnFmEvxeaQ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$BFGfQL30HQmwEyjzMv8vyIuNHeY(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_A4JIjXnCZ5jZKk5mpMrVRAVzyk(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lyp;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$dcuHnPcOSZD9zTVPSRmu79lWxGQ(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Lyp;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$e_ducVEcEZSmbj-llJYEEZT_4Gs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$gFBnmC_71DGVXaU3WpLNvcZy2_M(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$jIrk6IOvWraRh2Z2IhAn-YgzTPA(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$tRUPjm5SmaBV7miqPj0OHS7FzOs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$vaByBHNJ_XUyGg99HMNx6Z78DSc(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lyp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$xCv5YxmS7F4zZX7CuRLPhynZgO8(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$zWhb7tuy3XWKViSn6Kfu0CDlekQ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lyp;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 3

    .line 311
    iget-object p1, p0, Lyp;->o:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_1

    .line 312
    sget p1, Labf;->d:I

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
    iget-object p2, p0, Lyp;->v:Ljava/lang/Object;

    if-eqz p2, :cond_6

    return-object p2

    :cond_6
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 337
    iget-object p2, p0, Lyp;->y:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_7

    iget-object p2, p0, Lyp;->o:Ljava/lang/Class;

    invoke-static {p2}, Laax;->c(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 338
    iget-object p2, p0, Lyp;->o:Ljava/lang/Class;

    invoke-static {p2, v0}, Laax;->a(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iput-object p2, p0, Lyp;->y:Ljava/lang/reflect/Constructor;

    .line 339
    iget-object p2, p0, Lyp;->y:Ljava/lang/reflect/Constructor;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 341
    :cond_7
    iget-boolean p2, p0, Lyp;->x:Z

    const-string v2, "create list error, type "

    if-nez p2, :cond_9

    .line 343
    :try_start_0
    iget-object p1, p0, Lyp;->y:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_8

    .line 344
    iget-object p1, p0, Lyp;->y:Ljava/lang/reflect/Constructor;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 346
    :cond_8
    iget-object p1, p0, Lyp;->o:Ljava/lang/Class;

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
    iput-boolean v1, p0, Lyp;->x:Z

    .line 350
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyp;->o:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    .line 354
    :cond_9
    iget-boolean p2, p0, Lyp;->x:Z

    if-eqz p2, :cond_a

    const-class p2, Ljava/util/List;

    iget-object v0, p0, Lyp;->o:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 356
    :try_start_1
    iget-object p1, p0, Lyp;->o:Ljava/lang/Class;

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
    iput-boolean v1, p0, Lyp;->x:Z

    .line 359
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyp;->o:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

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

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 377
    :cond_0
    iget-object v3, v1, Lyp;->n:Ljava/lang/Class;

    const-wide/16 v4, 0x0

    move-object/from16 v2, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v2

    .line 378
    iget-object v3, v1, Lyp;->u:Ljava/util/function/Function;

    .line 379
    iget-object v4, v1, Lyp;->o:Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_d

    .line 381
    instance-of v4, v2, Lyp;

    if-eqz v4, :cond_1

    .line 382
    move-object v3, v2

    check-cast v3, Lyp;

    iget-object v4, v3, Lyp;->o:Ljava/lang/Class;

    .line 383
    iget-object v3, v3, Lyp;->u:Ljava/util/function/Function;

    goto :goto_0

    .line 385
    :cond_1
    invoke-interface {v2}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v4

    .line 388
    :goto_0
    sget-object v7, Lyp;->g:Ljava/lang/Class;

    if-ne v4, v7, :cond_2

    .line 389
    const-class v4, Ljava/util/ArrayList;

    .line 390
    sget-object v3, L-$$Lambda$emQEwJoNmn5CPD9YGv6KkU_iy-4;->INSTANCE:L-$$Lambda$emQEwJoNmn5CPD9YGv6KkU_iy-4;

    goto/16 :goto_2

    .line 391
    :cond_2
    sget-object v7, Lyp;->h:Ljava/lang/Class;

    if-ne v4, v7, :cond_3

    .line 392
    const-class v4, Ljava/util/ArrayList;

    .line 393
    sget-object v3, L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;->INSTANCE:L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;

    goto/16 :goto_2

    .line 394
    :cond_3
    sget-object v7, Lyp;->i:Ljava/lang/Class;

    if-ne v4, v7, :cond_4

    .line 395
    const-class v4, Ljava/util/LinkedHashSet;

    .line 396
    sget-object v3, L-$$Lambda$1fItRLjCUymglcKhkxvNGD0_M7g;->INSTANCE:L-$$Lambda$1fItRLjCUymglcKhkxvNGD0_M7g;

    goto/16 :goto_2

    .line 397
    :cond_4
    sget-object v7, Lyp;->j:Ljava/lang/Class;

    if-ne v4, v7, :cond_5

    .line 398
    const-class v4, Ljava/util/TreeSet;

    .line 399
    sget-object v3, L-$$Lambda$59ojbnatPTFXyfk_3eQIImCAkP8;->INSTANCE:L-$$Lambda$59ojbnatPTFXyfk_3eQIImCAkP8;

    goto :goto_2

    .line 400
    :cond_5
    sget-object v7, Lyp;->k:Ljava/lang/Class;

    if-ne v4, v7, :cond_6

    .line 401
    const-class v4, Ljava/util/TreeSet;

    .line 402
    sget-object v3, L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;->INSTANCE:L-$$Lambda$WYta6LVH7E2uyCK5z3Ttw_PUruo;

    goto :goto_2

    .line 403
    :cond_6
    sget-object v7, Lyp;->c:Ljava/lang/Class;

    if-ne v4, v7, :cond_7

    .line 404
    const-class v4, Ljava/util/ArrayList;

    .line 405
    sget-object v3, L-$$Lambda$yp$dcuHnPcOSZD9zTVPSRmu79lWxGQ;->INSTANCE:L-$$Lambda$yp$dcuHnPcOSZD9zTVPSRmu79lWxGQ;

    goto :goto_2

    .line 406
    :cond_7
    sget-object v7, Lyp;->d:Ljava/lang/Class;

    if-ne v4, v7, :cond_8

    .line 407
    const-class v4, Ljava/util/ArrayList;

    .line 408
    sget-object v3, L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;->INSTANCE:L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;

    goto :goto_2

    .line 410
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x6c36e6db

    if-eq v11, v12, :cond_a

    const v12, 0x1548a6fb

    if-eq v11, v12, :cond_9

    goto :goto_1

    :cond_9
    const-string v11, "kotlin.collections.EmptySet"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v10, v5

    goto :goto_1

    :cond_a
    const-string v11, "kotlin.collections.EmptyList"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v10, v6

    :cond_b
    :goto_1
    if-eqz v10, :cond_c

    if-eq v10, v6, :cond_c

    goto :goto_2

    :cond_c
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    .line 413
    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 421
    :cond_d
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v10

    if-lez v10, :cond_e

    .line 423
    iget-object v2, v1, Lyp;->w:Lwk;

    if-nez v2, :cond_e

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v2

    iget-object v7, v1, Lyp;->q:Ljava/lang/reflect/Type;

    .line 426
    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v2

    iput-object v2, v1, Lyp;->w:Lwk;

    .line 429
    :cond_e
    sget-object v2, Lyp;->e:Ljava/lang/Class;

    const-string v11, ".."

    if-ne v4, v2, :cond_12

    .line 430
    new-array v0, v10, [Ljava/lang/Object;

    .line 431
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move v13, v5

    :goto_3
    if-ge v13, v10, :cond_11

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v2, v12

    goto :goto_4

    .line 441
    :cond_f
    invoke-static {v2}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v2

    invoke-virtual {v8, v12, v13, v2}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Collection;ILcom/alibaba/fastjson2/g;)V

    move-object v2, v9

    goto :goto_4

    .line 444
    :cond_10
    iget-object v2, v1, Lyp;->w:Lwk;

    iget-object v4, v1, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v3, p1

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 447
    :goto_4
    aput-object v2, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_11
    return-object v12

    .line 453
    :cond_12
    const-class v2, Ljava/util/ArrayList;

    if-ne v4, v2, :cond_14

    if-lez v10, :cond_13

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_5

    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    .line 455
    :cond_14
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    if-ne v4, v2, :cond_16

    if-lez v10, :cond_15

    .line 456
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2, v10}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto :goto_5

    :cond_15
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_5

    .line 457
    :cond_16
    const-class v2, Ljava/util/HashSet;

    if-ne v4, v2, :cond_17

    .line 458
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_5
    move-object v13, v2

    move-object v12, v3

    goto/16 :goto_7

    .line 459
    :cond_17
    const-class v2, Ljava/util/LinkedHashSet;

    if-ne v4, v2, :cond_18

    .line 460
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_5

    .line 461
    :cond_18
    const-class v2, Ljava/util/TreeSet;

    if-ne v4, v2, :cond_19

    .line 462
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    goto :goto_5

    .line 463
    :cond_19
    sget-object v2, Lyp;->a:Ljava/lang/Class;

    if-ne v4, v2, :cond_1a

    .line 464
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_5

    .line 465
    :cond_1a
    sget-object v2, Lyp;->b:Ljava/lang/Class;

    if-ne v4, v2, :cond_1b

    .line 466
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_5

    .line 467
    :cond_1b
    sget-object v2, Lyp;->d:Ljava/lang/Class;

    if-ne v4, v2, :cond_1c

    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    sget-object v3, L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;->INSTANCE:L-$$Lambda$yp$_A4JIjXnCZ5jZKk5mpMrVRAVzyk;

    goto :goto_5

    .line 470
    :cond_1c
    sget-object v2, Lyp;->h:Ljava/lang/Class;

    if-ne v4, v2, :cond_1d

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    sget-object v3, L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;->INSTANCE:L-$$Lambda$y2fzDLbTCwV7HiJGBJd5ZxaUDJo;

    goto :goto_5

    :cond_1d
    if-eqz v4, :cond_1e

    .line 473
    const-class v2, Ljava/util/EnumSet;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 475
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 476
    sget-object v3, L-$$Lambda$yp$jIrk6IOvWraRh2Z2IhAn-YgzTPA;->INSTANCE:L-$$Lambda$yp$jIrk6IOvWraRh2Z2IhAn-YgzTPA;

    goto :goto_5

    :cond_1e
    if-eqz v4, :cond_1f

    .line 477
    iget-object v2, v1, Lyp;->m:Ljava/lang/reflect/Type;

    if-eq v4, v2, :cond_1f

    .line 479
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 481
    :goto_6
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create instance error "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 484
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v12

    or-long v12, v12, p4

    invoke-virtual {v1, v12, v13}, Lyp;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    goto/16 :goto_5

    .line 487
    :goto_7
    iget-object v2, v1, Lyp;->w:Lwk;

    .line 488
    iget-object v3, v1, Lyp;->q:Ljava/lang/reflect/Type;

    .line 489
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_21

    .line 490
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 491
    array-length v4, v0

    if-ne v4, v6, :cond_21

    .line 492
    aget-object v0, v0, v5

    .line 493
    iget-object v3, v1, Lyp;->q:Ljava/lang/reflect/Type;

    if-eq v0, v3, :cond_20

    .line 494
    invoke-virtual {v8, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v2

    :cond_20
    move-object v14, v0

    move-object v0, v2

    goto :goto_8

    :cond_21
    move-object v0, v2

    move-object v14, v3

    :goto_8
    move v15, v5

    :goto_9
    if-ge v15, v10, :cond_26

    .line 502
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object v2, v13

    goto :goto_a

    .line 507
    :cond_22
    invoke-static {v2}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v2

    invoke-virtual {v8, v13, v15, v2}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Collection;ILcom/alibaba/fastjson2/g;)V

    .line 508
    instance-of v2, v13, Ljava/util/List;

    if-eqz v2, :cond_25

    move-object v2, v9

    goto :goto_a

    .line 515
    :cond_23
    iget-object v3, v1, Lyp;->r:Ljava/lang/Class;

    iget-wide v4, v1, Lyp;->t:J

    move-object/from16 v2, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 517
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v3, p1

    move-object v4, v14

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_a

    .line 519
    :cond_24
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v4, v14

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 523
    :goto_a
    invoke-interface {v13, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_26
    if-eqz v12, :cond_27

    .line 527
    invoke-interface {v12, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_27
    return-object v13
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 10

    .line 236
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lyp;->n:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    if-ne v0, v1, :cond_1

    .line 239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v0, p0, Lyp;->u:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1

    .line 246
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lyp;->o:Ljava/lang/Class;

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
    invoke-virtual {p0, v3, v4}, Lyp;->a(J)Ljava/lang/Object;

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
    const-class v6, Lcom/alibaba/fastjson2/e;

    if-eq v5, v6, :cond_4

    sget-object v6, Labo;->a:Ljava/lang/Class;

    if-ne v5, v6, :cond_6

    :cond_4
    iget-object v6, p0, Lyp;->r:Ljava/lang/Class;

    if-eq v6, v5, :cond_6

    .line 264
    iget-object v5, p0, Lyp;->w:Lwk;

    if-nez v5, :cond_5

    .line 265
    iget-object v5, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v5

    iput-object v5, p0, Lyp;->w:Lwk;

    .line 267
    :cond_5
    iget-object v5, p0, Lyp;->w:Lwk;

    check-cast v2, Lcom/alibaba/fastjson2/e;

    invoke-interface {v5, v2, v3, v4}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 268
    :cond_6
    iget-object v6, p0, Lyp;->q:Ljava/lang/reflect/Type;

    if-eq v5, v6, :cond_10

    .line 269
    invoke-virtual {v0, v5, v6}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

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
    iget-object v5, p0, Lyp;->w:Lwk;

    if-nez v5, :cond_8

    .line 275
    iget-object v5, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v5

    iput-object v5, p0, Lyp;->w:Lwk;

    .line 277
    :cond_8
    iget-object v5, p0, Lyp;->w:Lwk;

    invoke-interface {v5, v2, v3, v4}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_2

    .line 278
    :cond_9
    instance-of v6, v2, Ljava/util/Collection;

    if-eqz v6, :cond_b

    .line 279
    iget-object v5, p0, Lyp;->w:Lwk;

    if-nez v5, :cond_a

    .line 280
    iget-object v5, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v5

    iput-object v5, p0, Lyp;->w:Lwk;

    .line 282
    :cond_a
    iget-object v5, p0, Lyp;->w:Lwk;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v5, v2}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    .line 283
    :cond_b
    iget-object v6, p0, Lyp;->r:Ljava/lang/Class;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_2

    .line 285
    :cond_c
    const-class v6, Ljava/lang/Enum;

    iget-object v7, p0, Lyp;->r:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    const-string v7, " to "

    const-string v8, "can not convert from "

    if-eqz v6, :cond_f

    .line 286
    iget-object v6, p0, Lyp;->w:Lwk;

    if-nez v6, :cond_d

    .line 287
    iget-object v6, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v6}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v6

    iput-object v6, p0, Lyp;->w:Lwk;

    .line 290
    :cond_d
    iget-object v6, p0, Lyp;->w:Lwk;

    instance-of v9, v6, Lxt;

    if-eqz v9, :cond_e

    .line 291
    check-cast v6, Lxt;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lxt;->b(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_2

    .line 293
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_f
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_10
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 302
    :cond_11
    iget-object p1, p0, Lyp;->u:Ljava/util/function/Function;

    if-eqz p1, :cond_12

    .line 303
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    return-object v1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 226
    iget-object v0, p0, Lyp;->n:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Ljava/util/function/Function;
    .locals 1

    .line 231
    iget-object v0, p0, Lyp;->u:Ljava/util/function/Function;

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 535
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lyp;->w:Lwk;

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lyp;->q:Ljava/lang/reflect/Type;

    .line 538
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v1

    iput-object v1, p0, Lyp;->w:Lwk;

    .line 541
    :cond_0
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 542
    invoke-virtual/range {v2 .. v7}, Lyp;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 545
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    return-object v1

    .line 550
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->A()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 551
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 553
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v2

    or-long p3, v2, p4

    invoke-virtual {p0, p3, p4}, Lyp;->a(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    .line 555
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result p4

    const/16 p5, 0x22

    if-ne p4, p5, :cond_7

    .line 557
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    .line 558
    iget-object p4, p0, Lyp;->r:Ljava/lang/Class;

    const-class p5, Ljava/lang/String;

    if-ne p4, p5, :cond_4

    .line 559
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 560
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 564
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_5

    .line 565
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object v1

    .line 569
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object p4

    const-class p5, Ljava/lang/String;

    iget-object v0, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-virtual {p4, p5, v0}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 571
    invoke-interface {p4, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 572
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 573
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p3

    .line 576
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const/16 p5, 0x5b

    const/4 v0, 0x0

    if-ne p4, p5, :cond_f

    .line 578
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 592
    iget-object p4, p0, Lyp;->w:Lwk;

    .line 593
    iget-object p5, p0, Lyp;->q:Ljava/lang/reflect/Type;

    .line 594
    iget-object v1, p0, Lyp;->m:Ljava/lang/reflect/Type;

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
    iget-object p2, p0, Lyp;->q:Ljava/lang/reflect/Type;

    if-eq p5, p2, :cond_8

    .line 599
    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p4

    .line 605
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 631
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 633
    iget-object p1, p0, Lyp;->u:Ljava/util/function/Function;

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
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_b
    if-eqz p4, :cond_e

    .line 613
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 614
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

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
    invoke-static {p2}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object p2

    invoke-virtual {p1, p3, v0, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/Collection;ILcom/alibaba/fastjson2/g;)V

    goto :goto_3

    .line 622
    :cond_d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p5

    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 628
    :goto_2
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    :cond_e
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TODO : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 580
    :cond_f
    iget-object p2, p0, Lyp;->r:Ljava/lang/Class;

    const-class p4, Ljava/lang/Object;

    if-eq p2, p4, :cond_10

    iget-object p2, p0, Lyp;->w:Lwk;

    if-nez p2, :cond_11

    :cond_10
    iget-object p2, p0, Lyp;->r:Ljava/lang/Class;

    const-class p4, Ljava/lang/Object;

    if-ne p2, p4, :cond_13

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 581
    :cond_11
    iget-object v1, p0, Lyp;->w:Lwk;

    iget-object v3, p0, Lyp;->q:Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 582
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object p1, p0, Lyp;->u:Ljava/util/function/Function;

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
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->be()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
