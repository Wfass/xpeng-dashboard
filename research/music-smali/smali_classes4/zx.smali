.class public Lzx;
.super Ljava/lang/Object;
.source "ObjectReaderProvider.java"

# interfaces
.implements Lsk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzx$a;,
        Lzx$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ClassLoader;

.field public static final b:Z

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static e:Lcom/alibaba/fastjson2/u$a;

.field static f:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static g:Z

.field static h:Lzx$b;


# instance fields
.field final i:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lwk;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Lwk;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lwk;",
            ">;>;"
        }
    .end annotation
.end field

.field final l:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lwk;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lzx$a;

.field final o:Lxa;

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsm;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/function/Function;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:[J

.field private s:Lcom/alibaba/fastjson2/u$a;

.field private t:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-class v0, Lcom/alibaba/fastjson2/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lzx;->a:Ljava/lang/ClassLoader;

    const-string v0, "fastjson2.parser.deny"

    .line 59
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {v0}, Lcom/alibaba/fastjson2/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, ","

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lzx;->c:[Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    sput-object v1, Lzx;->c:[Ljava/lang/String;

    :goto_0
    const-string v1, "fastjson2.autoTypeAccept"

    .line 71
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 73
    invoke-static {v1}, Lcom/alibaba/fastjson2/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    .line 75
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzx;->d:[Ljava/lang/String;

    goto :goto_1

    .line 78
    :cond_3
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lzx;->d:[Ljava/lang/String;

    :goto_1
    const-string v0, "fastjson2.autoTypeBeforeHandler"

    .line 83
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    :cond_4
    invoke-static {v0}, Lcom/alibaba/fastjson2/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const/4 v0, 0x1

    if-eqz v1, :cond_7

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 93
    invoke-static {v1}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 96
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/u$a;

    sput-object v1, Lzx;->e:Lcom/alibaba/fastjson2/u$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 98
    :catch_0
    sput-boolean v0, Lzx;->g:Z

    :cond_7
    :goto_2
    const-string v1, "fastjson2.autoTypeHandler"

    .line 106
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 107
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 108
    :cond_8
    invoke-static {v1}, Lcom/alibaba/fastjson2/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_9
    if-eqz v2, :cond_a

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_a
    if-eqz v2, :cond_b

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 116
    invoke-static {v2}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 119
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    sput-object v1, Lzx;->f:Ljava/util/function/Consumer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 121
    :catch_1
    sput-boolean v0, Lzx;->g:Z

    :cond_b
    :goto_3
    const-string v0, "fastjson.parser.safeMode"

    .line 129
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 130
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 131
    :cond_c
    invoke-static {v0}, Lcom/alibaba/fastjson2/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    const-string v0, "fastjson2.parser.safeMode"

    if-eqz v1, :cond_e

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 135
    :cond_e
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    if-eqz v1, :cond_10

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 138
    :cond_10
    invoke-static {v0}, Lcom/alibaba/fastjson2/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    if-eqz v1, :cond_12

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_12
    const-string v0, "true"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lzx;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzx;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 150
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzx;->j:Ljava/util/concurrent/ConcurrentMap;

    .line 151
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzx;->k:Ljava/util/concurrent/ConcurrentMap;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzx;->l:Ljava/util/concurrent/ConcurrentMap;

    .line 153
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    .line 155
    new-instance v0, Lzx$a;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lzx$a;-><init>(I)V

    iput-object v0, p0, Lzx;->n:Lzx$a;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzx;->q:Ljava/util/concurrent/ConcurrentMap;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzx;->p:Ljava/util/List;

    .line 164
    sget-object v0, Lzx;->e:Lcom/alibaba/fastjson2/u$a;

    iput-object v0, p0, Lzx;->s:Lcom/alibaba/fastjson2/u$a;

    .line 165
    sget-object v0, Lzx;->f:Ljava/util/function/Consumer;

    iput-object v0, p0, Lzx;->t:Ljava/util/function/Consumer;

    .line 169
    sget-object v0, Lzx;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 170
    new-array v0, v2, [J

    goto :goto_1

    .line 172
    :cond_0
    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [J

    move v3, v1

    .line 173
    :goto_0
    sget-object v4, Lzx;->d:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 174
    aget-object v4, v4, v3

    invoke-static {v4}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_1
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v2

    const-wide v4, -0x575556d6bb90031cL    # -8.660931078614971E-113

    aput-wide v4, v0, v3

    .line 180
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 181
    iput-object v0, p0, Lzx;->r:[J

    .line 183
    iget-object v0, p0, Lzx;->l:Ljava/util/concurrent/ConcurrentMap;

    sget-wide v3, Lwh;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lwh;->a:Lwh;

    invoke-interface {v0, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lzx;->l:Ljava/util/concurrent/ConcurrentMap;

    const-wide v3, -0x4318000b8f6218c8L    # -2.6645156755451724E-15

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lzm;->a:Lzm;

    invoke-interface {v0, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lzx;->l:Ljava/util/concurrent/ConcurrentMap;

    const-class v3, Ljava/util/HashMap;

    invoke-static {v3}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sget-object v4, Lyw;->k:Lyw;

    invoke-interface {v0, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 426
    sget-object v3, Lcom/alibaba/fastjson2/d;->b:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x422aac39

    if-eq v5, v6, :cond_4

    const v6, 0x17a7b

    if-eq v5, v6, :cond_3

    const v6, 0x40afd6bd

    if-eq v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const-string v5, "reflect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_3
    const-string v1, "asm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    const-string v1, "lambda"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v4

    :goto_3
    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_7

    .line 434
    :try_start_0
    sget-boolean v1, Labf;->r:Z

    if-nez v1, :cond_6

    sget-boolean v1, Labf;->s:Z

    if-nez v1, :cond_6

    .line 435
    sget-object v0, Lxb;->f:Lxb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    if-nez v0, :cond_8

    .line 441
    sget-object v0, Lxa;->b:Lxa;

    goto :goto_4

    .line 429
    :cond_7
    sget-object v0, Lxa;->b:Lxa;

    .line 445
    :cond_8
    :goto_4
    iput-object v0, p0, Lzx;->o:Lxa;

    .line 447
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    new-instance v1, Lwy;

    invoke-direct {v1, p0}, Lwy;-><init>(Lzx;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {p0}, Lzx;->c()V

    return-void
.end method

.method private a(ZLjava/lang/reflect/Type;Lwk;)Lwk;
    .locals 0

    if-eqz p1, :cond_0

    .line 867
    iget-object p1, p0, Lzx;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwk;

    goto :goto_0

    .line 868
    :cond_0
    iget-object p1, p0, Lzx;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwk;

    :goto_0
    return-object p1
.end method

.method private b(Ljava/lang/reflect/Type;Z)Lwk;
    .locals 10

    .line 752
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsm;

    .line 753
    invoke-interface {v2, p0, p1}, Lsm;->getObjectReader(Lzx;Ljava/lang/reflect/Type;)Lwk;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 756
    iget-object p2, p0, Lzx;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwk;

    goto :goto_0

    .line 757
    :cond_1
    iget-object p2, p0, Lzx;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwk;

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    return-object p1

    .line 766
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 767
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 768
    array-length v4, v0

    if-lez v4, :cond_5

    .line 769
    aget-object v0, v0, v3

    .line 770
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_5

    .line 771
    invoke-virtual {p0, v0, p2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 773
    invoke-direct {p0, p2, p1, v0}, Lzx;->a(ZLjava/lang/reflect/Type;Lwk;)Lwk;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    return-object p1

    .line 783
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_b

    .line 784
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 785
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 786
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 787
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_b

    .line 788
    check-cast v6, Ljava/lang/Class;

    move-object v7, v6

    .line 791
    :goto_3
    const-class v8, Ljava/lang/Object;

    const/4 v9, 0x1

    if-eq v7, v8, :cond_7

    .line 792
    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_6

    move v7, v9

    goto :goto_4

    .line 791
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    goto :goto_3

    :cond_7
    move v7, v3

    .line 797
    :goto_4
    array-length v8, v0

    if-eqz v8, :cond_8

    if-nez v7, :cond_a

    .line 798
    :cond_8
    invoke-virtual {p0, v6, p2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 800
    invoke-direct {p0, p2, p1, v7}, Lzx;->a(ZLjava/lang/reflect/Type;Lwk;)Lwk;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    move-object p1, v7

    :goto_5
    return-object p1

    .line 807
    :cond_a
    array-length v0, v0

    if-ne v0, v9, :cond_b

    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 808
    invoke-static {p1, v6, v4, v5}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    return-object p1

    .line 813
    :cond_b
    invoke-static {p1}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez p2, :cond_c

    const-string v7, "com.google.common.collect.ArrayListMultimap"

    .line 817
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 818
    invoke-static {v1, v0, v4, v5}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object v2

    :cond_c
    if-nez v2, :cond_10

    .line 824
    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 825
    array-length v4, v1

    move v5, v3

    :goto_6
    if-ge v3, v4, :cond_d

    aget-object v5, v1, v3

    .line 826
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    .line 827
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.alibaba.fastjson2.annotation.JSONCompiled"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_10

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_FASTJOSNReader"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-nez v3, :cond_e

    .line 833
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :cond_e
    if-nez v3, :cond_f

    .line 836
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 840
    :cond_f
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 841
    const-class v3, Lwk;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 842
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    :catch_0
    :cond_10
    if-nez v2, :cond_11

    .line 853
    invoke-virtual {p0}, Lzx;->b()Lxa;

    move-result-object v1

    .line 854
    invoke-virtual {v1, v0, p1, p2, p0}, Lxa;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;ZLzx;)Lwk;

    move-result-object v2

    .line 857
    :cond_11
    invoke-direct {p0, p2, p1, v2}, Lzx;->a(ZLjava/lang/reflect/Type;Lwk;)Lwk;

    move-result-object p1

    if-eqz p1, :cond_12

    goto :goto_7

    :cond_12
    move-object p1, v2

    :goto_7
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 231
    iget-object v0, p0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;
    .locals 1

    .line 464
    iget-object v0, p0, Lzx;->q:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 468
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 2

    .line 472
    iget-object v0, p0, Lzx;->q:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lzx;->q:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lzx;->q:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 477
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    return-object p1
.end method

.method public a(J)Lwk;
    .locals 4

    .line 481
    sget-object v0, Lzx;->h:Lzx$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 483
    iget-wide v2, v0, Lzx$b;->a:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 484
    iget-object p1, v0, Lzx$b;->b:Lwk;

    return-object p1

    .line 486
    :cond_0
    iget v2, v0, Lzx$b;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lzx$b;->c:I

    const/16 v0, 0x10

    if-le v2, v0, :cond_1

    .line 487
    sput-object v1, Lzx;->h:Lzx$b;

    .line 492
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 494
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 495
    sget-object v3, Lzx;->a:Ljava/lang/ClassLoader;

    if-eq v2, v3, :cond_2

    .line 496
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 497
    iget-object v3, p0, Lzx;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_2

    .line 499
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwk;

    :cond_2
    if-nez v1, :cond_3

    .line 504
    iget-object v1, p0, Lzx;->l:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lwk;

    :cond_3
    if-eqz v1, :cond_4

    .line 507
    sget-object v0, Lzx;->h:Lzx$b;

    if-nez v0, :cond_4

    .line 508
    new-instance v0, Lzx$b;

    invoke-direct {v0, p1, p2, v1}, Lzx$b;-><init>(JLwk;)V

    sput-object v0, Lzx;->h:Lzx$b;

    :cond_4
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Lwk;"
        }
    .end annotation

    .line 515
    invoke-virtual {p0, p1, p2, p3, p4}, Lzx;->b(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 519
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p3, v1

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 520
    :goto_0
    invoke-virtual {p0, v0, p3}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p3

    if-eq v0, p2, :cond_2

    .line 523
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lzx;->a(JLwk;)V

    :cond_2
    return-object p3
.end method

.method public a(Ljava/lang/reflect/Type;)Lwk;
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p0, p1, v0}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Lwk;)Lwk;
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lzx;->a(Ljava/lang/reflect/Type;Lwk;Z)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Lwk;Z)Lwk;
    .locals 0

    if-eqz p3, :cond_0

    .line 273
    iget-object p3, p0, Lzx;->j:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lzx;->i:Ljava/util/concurrent/ConcurrentMap;

    :goto_0
    if-nez p2, :cond_1

    .line 275
    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwk;

    return-object p1

    .line 278
    :cond_1
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwk;

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Z)Lwk;
    .locals 4

    if-nez p1, :cond_0

    .line 729
    const-class p1, Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 733
    iget-object v0, p0, Lzx;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lzx;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;

    :goto_0
    if-nez v0, :cond_3

    .line 736
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_3

    .line 737
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 738
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v0, 0x0

    .line 739
    aget-object v0, v1, v0

    if-eqz p2, :cond_2

    .line 740
    iget-object v1, p0, Lzx;->j:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lzx;->i:Ljava/util/concurrent/ConcurrentMap;

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwk;

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    .line 746
    :cond_4
    invoke-direct {p0, p1, p2}, Lzx;->b(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 235
    iget-object v0, p0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public a(JLwk;)V
    .locals 4

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    const-class v1, Lcom/alibaba/fastjson2/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 192
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 193
    iget-object v1, p0, Lzx;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lzx;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Lzx;->k:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    iget-object v0, p0, Lzx;->l:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u$a;)V
    .locals 0

    .line 880
    iput-object p1, p0, Lzx;->s:Lcom/alibaba/fastjson2/u$a;

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    if-nez p2, :cond_0

    .line 240
    iget-object p2, p0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lzx;->m:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_0
    iget-object p2, p0, Lzx;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p2, p0, Lzx;->j:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 208
    iget-object p1, p0, Lzx;->r:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    .line 209
    iget-object p1, p0, Lzx;->r:[J

    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    .line 210
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-wide v0, v2, v3

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 213
    iput-object v2, p0, Lzx;->r:[J

    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lzx;->t:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 533
    :cond_0
    iget-object p2, p0, Lzx;->n:Lzx$a;

    monitor-enter p2

    .line 534
    :try_start_0
    iget-object v0, p0, Lzx;->n:Lzx$a;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, v1}, Lzx$a;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lqe;Ljava/lang/Class;)V
    .locals 2

    .line 669
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm;

    .line 670
    invoke-interface {v1, p1, p2}, Lsm;->a(Lqe;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V
    .locals 8

    .line 687
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm;

    .line 688
    invoke-interface {v1}, Lsm;->a()Lsl;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 690
    invoke-interface/range {v2 .. v7}, Lsl;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 675
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm;

    .line 676
    invoke-interface {v1, p1, p2, p3}, Lsm;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 899
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm;

    .line 900
    invoke-interface {v1}, Lsm;->a()Lsl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    invoke-interface {v1, p1, p2, p3}, Lsl;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_0

    .line 907
    :cond_1
    iget-object v0, p1, Lqg;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lqg;->g:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 908
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "set"

    .line 909
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 910
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 911
    invoke-static {p2, p3}, Laax;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 913
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iput-object p2, p1, Lqg;->g:[Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;ILjava/lang/reflect/Parameter;)V
    .locals 8

    .line 701
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm;

    .line 702
    invoke-interface {v1}, Lsm;->a()Lsl;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 704
    invoke-interface/range {v2 .. v7}, Lsl;->a(Lqg;Ljava/lang/Class;Ljava/lang/reflect/Method;ILjava/lang/reflect/Parameter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lsm;)Z
    .locals 4

    .line 313
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 314
    iget-object v3, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {p1, p0}, Lsm;->a(Lzx;)V

    .line 321
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    const/4 v5, 0x0

    if-eqz v1, :cond_19

    .line 539
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_7

    .line 543
    :cond_0
    iget-object v6, v0, Lzx;->s:Lcom/alibaba/fastjson2/u$a;

    if-eqz v6, :cond_1

    .line 544
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/alibaba/fastjson2/u$a;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 546
    invoke-virtual {v0, v1, v6}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v6

    .line 551
    :cond_1
    sget-boolean v6, Lzx;->b:Z

    if-eqz v6, :cond_2

    return-object v5

    .line 555
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc0

    const-string v8, "autoType is not support. "

    if-ge v6, v7, :cond_18

    const/4 v7, 0x0

    .line 560
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5b

    const/4 v11, 0x1

    if-ne v9, v10, :cond_3

    .line 561
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 562
    invoke-virtual {v0, v9, v5, v3, v4}, Lzx;->b(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    :cond_3
    if-eqz v2, :cond_4

    .line 565
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 566
    invoke-virtual/range {p0 .. p2}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v2

    .line 570
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v9, v9, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v9, v3

    const-wide/16 v12, 0x0

    cmp-long v9, v9, v12

    if-eqz v9, :cond_5

    goto :goto_0

    :cond_5
    move v11, v7

    :goto_0
    const-wide v14, 0x100000001b3L

    const/16 v10, 0x24

    const-wide v16, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const-string v7, " -> "

    const-string v9, "type not match. "

    if-eqz v11, :cond_a

    move-wide/from16 v18, v16

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_a

    .line 576
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_6

    move/from16 v20, v6

    const/16 v13, 0x2e

    goto :goto_2

    :cond_6
    move/from16 v20, v6

    :goto_2
    int-to-long v5, v13

    xor-long v5, v18, v5

    mul-long/2addr v5, v14

    .line 582
    iget-object v13, v0, Lzx;->r:[J

    invoke-static {v13, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v13

    if-ltz v13, :cond_9

    .line 583
    invoke-static/range {p1 .. p1}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    if-eqz v13, :cond_9

    if-eqz v2, :cond_8

    .line 585
    invoke-virtual {v2, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 586
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    :cond_8
    :goto_3
    invoke-virtual {v0, v1, v13}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v13

    :cond_9
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v18, v5

    move/from16 v6, v20

    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    move/from16 v20, v6

    if-nez v11, :cond_f

    move/from16 v5, v20

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_f

    .line 599
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_b

    const/16 v12, 0x2e

    :cond_b
    int-to-long v12, v12

    xor-long v12, v16, v12

    mul-long/2addr v12, v14

    .line 607
    iget-object v10, v0, Lzx;->r:[J

    invoke-static {v10, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    if-ltz v10, :cond_e

    .line 608
    invoke-static/range {p1 .. p1}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_5

    .line 611
    :cond_c
    new-instance v3, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v3

    .line 614
    :cond_d
    :goto_5
    invoke-virtual {v0, v1, v3}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v3

    :cond_e
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v16, v12

    const/16 v10, 0x24

    goto :goto_4

    :cond_f
    if-nez v11, :cond_10

    const/4 v5, 0x0

    return-object v5

    .line 624
    :cond_10
    invoke-static/range {p1 .. p1}, Labo;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_13

    if-eqz v2, :cond_12

    .line 627
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_12

    const-class v3, Ljava/util/HashMap;

    if-eq v5, v3, :cond_12

    .line 630
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_6

    .line 632
    :cond_11
    new-instance v3, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v3

    .line 635
    :cond_12
    :goto_6
    invoke-virtual {v0, v1, v5}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v5

    .line 639
    :cond_13
    invoke-static/range {p1 .. p1}, Labo;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 642
    const-class v6, Ljava/lang/ClassLoader;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static {v5}, Labf;->a(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_16

    if-eqz v2, :cond_17

    .line 647
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 648
    invoke-virtual {v0, v1, v5}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v5

    .line 651
    :cond_14
    sget-object v5, Lcom/alibaba/fastjson2/u$d;->IgnoreAutoTypeNotMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_15

    return-object v2

    .line 655
    :cond_15
    new-instance v3, Lcom/alibaba/fastjson2/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_16
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    .line 660
    :cond_17
    invoke-virtual {v0, v1, v5}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v5

    .line 557
    :cond_18
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_19
    :goto_7
    move-object v1, v5

    return-object v1
.end method

.method public b()Lxa;
    .locals 1

    .line 417
    invoke-static {}, Lcom/alibaba/fastjson2/d;->f()Lxa;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 421
    :cond_0
    iget-object v0, p0, Lzx;->o:Lxa;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method c()V
    .locals 2

    .line 458
    iget-object v0, p0, Lzx;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsm;

    .line 459
    invoke-interface {v1, p0}, Lsm;->a(Lzx;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Lcom/alibaba/fastjson2/u$a;
    .locals 1

    .line 872
    iget-object v0, p0, Lzx;->s:Lcom/alibaba/fastjson2/u$a;

    return-object v0
.end method
