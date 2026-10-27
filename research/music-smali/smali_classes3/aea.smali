.class public Laea;
.super Labq;
.source "FieldWriterObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Labq<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final F:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Laea;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile B:Ljava/lang/Class;

.field final C:Z

.field final D:Z

.field final E:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const-class v0, Laea;

    const-class v1, Ljava/lang/Class;

    const-string v2, "B"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Laea;->F:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    const-wide/high16 p1, 0x2000000000000L

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    .line 47
    :goto_0
    iput-boolean p1, p0, Laea;->C:Z

    .line 49
    const-class p1, Ljava/util/Currency;

    if-ne p8, p1, :cond_1

    .line 50
    iput-object p8, p0, Laea;->B:Ljava/lang/Class;

    .line 51
    sget-object p1, Lafz;->b:Lafz;

    iput-object p1, p0, Laea;->x:Laem;

    .line 54
    :cond_1
    invoke-virtual {p8}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Ljava/util/Collection;

    .line 55
    invoke-virtual {p1, p8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    const-class p1, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq p8, p1, :cond_3

    const-class p1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne p8, p1, :cond_2

    goto :goto_1

    :cond_2
    move p2, p3

    :cond_3
    :goto_1
    iput-boolean p2, p0, Laea;->D:Z

    .line 58
    const-class p1, Ljava/lang/Number;

    invoke-virtual {p1, p8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Laea;->E:Z

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    .line 168
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_7

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_7

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_7

    :cond_2
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_7

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_7

    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_7

    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_7

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Character;

    if-ne p1, p0, :cond_8

    :cond_7
    const/4 p0, 0x1

    goto :goto_0

    :cond_8
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 10

    .line 100
    invoke-static {p2}, Laax;->h(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laea;->a:Ljava/lang/String;

    const-string v6, "$super$"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object p1, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 102
    iget-wide v6, p0, Laea;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab$a;->a()J

    move-result-wide v8

    or-long/2addr v6, v8

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v8

    cmp-long v0, v6, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 103
    :goto_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    iget-object v0, p0, Laea;->b:Ljava/lang/reflect/Type;

    iget-object v2, p0, Laea;->c:Ljava/lang/Class;

    invoke-virtual {p1, v0, v2, v1}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    .line 104
    iget-object v0, p0, Laea;->x:Laem;

    if-nez v0, :cond_1

    .line 105
    sget-object v0, Laea;->F:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 107
    sget-object p2, Laea;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-object p1

    .line 113
    :cond_2
    iget-object v0, p0, Laea;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 114
    iget-object v0, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 115
    iget-wide v6, p0, Laea;->d:J

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/ab$a;->a()J

    move-result-wide v8

    or-long/2addr v6, v8

    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v8

    cmp-long v3, v6, v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 116
    :goto_1
    iget-object v0, v0, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    invoke-virtual {v0, p2, p2, v1}, Lahq;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v5

    .line 119
    :goto_2
    iget-object v1, p0, Laea;->g:Ljava/text/DecimalFormat;

    .line 120
    const-class v2, [Ljava/lang/Float;

    if-ne p2, v2, :cond_6

    if-eqz v1, :cond_5

    .line 122
    new-instance v0, Lafb;

    const-class v2, Ljava/lang/Float;

    invoke-direct {v0, v2, v1}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    goto :goto_3

    .line 124
    :cond_5
    sget-object v0, Lafb;->a:Lafb;

    goto :goto_3

    .line 126
    :cond_6
    const-class v2, [Ljava/lang/Double;

    if-ne p2, v2, :cond_8

    if-eqz v1, :cond_7

    .line 128
    new-instance v0, Lafb;

    const-class v2, Ljava/lang/Double;

    invoke-direct {v0, v2, v1}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    goto :goto_3

    .line 130
    :cond_7
    sget-object v0, Lafb;->b:Lafb;

    goto :goto_3

    .line 132
    :cond_8
    const-class v2, [F

    if-ne p2, v2, :cond_a

    if-eqz v1, :cond_9

    .line 134
    new-instance v0, Lagf;

    invoke-direct {v0, v1}, Lagf;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_3

    .line 136
    :cond_9
    sget-object v0, Lagf;->a:Lagf;

    goto :goto_3

    .line 138
    :cond_a
    const-class v2, [D

    if-ne p2, v2, :cond_c

    if-eqz v1, :cond_b

    .line 140
    new-instance v0, Lagc;

    invoke-direct {v0, v1}, Lagc;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_3

    .line 142
    :cond_b
    sget-object v0, Lagc;->a:Lagc;

    :cond_c
    :goto_3
    if-nez v0, :cond_d

    .line 147
    iget-object v0, p0, Laea;->b:Ljava/lang/reflect/Type;

    iget-object v1, p0, Laea;->c:Ljava/lang/Class;

    iget-object v2, p0, Laea;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5, p2}, Labq;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;)Laem;

    move-result-object v0

    :cond_d
    if-nez v0, :cond_e

    .line 151
    sget-object v0, Laea;->F:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 152
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object p1

    if-eqz v0, :cond_10

    .line 154
    sget-object p2, Laea;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, v5, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 157
    :cond_e
    iget-object p1, p0, Laea;->x:Laem;

    if-nez p1, :cond_f

    .line 158
    sget-object p1, Laea;->F:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 160
    sget-object p1, Laea;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_f
    move-object p1, v0

    :cond_10
    :goto_4
    return-object p1
.end method

.method private c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 4

    .line 179
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object p1, p0, Laea;->c:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Laea;->b:Ljava/lang/reflect/Type;

    invoke-static {p1, p2}, Laha;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laha;

    move-result-object p1

    return-object p1

    .line 183
    :cond_0
    invoke-static {p2}, Laha;->a(Ljava/lang/Class;)Laha;

    move-result-object p1

    return-object p1

    .line 187
    :cond_1
    iget-object v0, p0, Laea;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Laea;->b:Ljava/lang/reflect/Type;

    iget-object v2, p0, Laea;->c:Ljava/lang/Class;

    iget-object v3, p0, Laea;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, p2}, Labq;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;)Laem;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 191
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 1

    .line 199
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object p1, p0, Laea;->c:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Laea;->b:Ljava/lang/reflect/Type;

    invoke-static {p1, p2}, Laha;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laha;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p2}, Laha;->a(Ljava/lang/Class;)Laha;

    move-result-object p1

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object p1

    .line 208
    :goto_0
    sget-object p2, Laea;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 3

    .line 73
    iget-object v0, p0, Laea;->B:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 74
    iget-object v1, p0, Laea;->x:Laem;

    sget-object v2, Lafc$a;->a:Lafc$a;

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    if-eq v0, p2, :cond_3

    .line 77
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_1

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const-class v1, Ljava/util/List;

    if-ne v0, v1, :cond_2

    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_4

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    invoke-static {v0, p2}, Laea;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_6

    .line 86
    iget-object v0, p0, Laea;->x:Laem;

    if-nez v0, :cond_5

    .line 87
    invoke-direct {p0, p1, p2}, Laea;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object p1

    goto :goto_2

    .line 89
    :cond_5
    iget-object p1, p0, Laea;->x:Laem;

    :goto_2
    return-object p1

    .line 93
    :cond_6
    invoke-direct {p0, p1, p2}, Laea;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1

    .line 75
    :cond_7
    :goto_3
    invoke-direct {p0, p1, p2}, Laea;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Enum;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Laea;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 220
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 222
    iget-object v1, p0, Laea;->B:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 223
    iput-object v0, p0, Laea;->B:Ljava/lang/Class;

    .line 224
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    .line 225
    sget-object v2, Laea;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    move-object v2, v1

    goto :goto_1

    .line 227
    :cond_1
    iget-object v1, p0, Laea;->B:Ljava/lang/Class;

    if-ne v1, v0, :cond_2

    .line 228
    iget-object v1, p0, Laea;->x:Laem;

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    .line 237
    iget-object v5, p0, Laea;->a:Ljava/lang/String;

    iget-object v6, p0, Laea;->b:Ljava/lang/reflect/Type;

    iget-wide v7, p0, Laea;->d:J

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v8}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 234
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get value writer error, valueType : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 393
    invoke-virtual {p0, p2}, Laea;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 395
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 399
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 401
    iget-object v1, p0, Laea;->B:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 402
    iput-object v0, p0, Laea;->B:Ljava/lang/Class;

    .line 403
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    .line 404
    sget-object v2, Laea;->z:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_1
    iget-object v1, p0, Laea;->B:Ljava/lang/Class;

    if-ne v1, v0, :cond_2

    .line 407
    iget-object v1, p0, Laea;->x:Laem;

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    .line 416
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lahq;->d(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move v8, v0

    if-eqz v8, :cond_5

    if-ne v7, p2, :cond_4

    const-string p2, ".."

    .line 420
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    return-void

    .line 424
    :cond_4
    iget-object p2, p0, Laea;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v7}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 426
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    return-void

    .line 432
    :cond_5
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz p2, :cond_7

    .line 433
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 434
    iget-object v3, p0, Laea;->a:Ljava/lang/String;

    iget-object v4, p0, Laea;->c:Ljava/lang/Class;

    iget-wide v5, p0, Laea;->d:J

    move-object v0, v1

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Laem;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    .line 436
    :cond_6
    iget-object v3, p0, Laea;->a:Ljava/lang/String;

    iget-object v4, p0, Laea;->c:Ljava/lang/Class;

    iget-wide v5, p0, Laea;->d:J

    move-object v0, v1

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    .line 439
    :cond_7
    iget-object v3, p0, Laea;->a:Ljava/lang/String;

    iget-object v4, p0, Laea;->c:Ljava/lang/Class;

    iget-wide v5, p0, Laea;->d:J

    move-object v0, v1

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    if-eqz v8, :cond_8

    .line 443
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_8
    return-void

    .line 413
    :cond_9
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get value writer error, valueType : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    .line 242
    iget-wide v2, v1, Laea;->d:J

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 244
    iget-boolean v4, v1, Laea;->r:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v4, :cond_0

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v10, v2

    cmp-long v4, v10, v6

    if-eqz v4, :cond_0

    return v5

    .line 250
    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, Laea;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x1

    if-nez v10, :cond_9

    .line 260
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v12, v2

    cmp-long v0, v12, v6

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v12, v2

    cmp-long v0, v12, v6

    if-nez v0, :cond_5

    .line 261
    invoke-virtual/range {p0 .. p1}, Laea;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 262
    iget-boolean v0, v1, Laea;->D:Z

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->s()V

    goto :goto_1

    .line 264
    :cond_1
    iget-boolean v0, v1, Laea;->E:Z

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->t()V

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, v1, Laea;->c:Ljava/lang/Class;

    const-class v2, Ljava/lang/Appendable;

    if-eq v0, v2, :cond_4

    iget-object v0, v1, Laea;->c:Ljava/lang/Class;

    const-class v2, Ljava/lang/StringBuffer;

    if-eq v0, v2, :cond_4

    iget-object v0, v1, Laea;->c:Ljava/lang/Class;

    const-class v2, Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 269
    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->r()V

    :goto_1
    return v11

    .line 275
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v14, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v12, v14

    and-long/2addr v12, v2

    cmp-long v0, v12, v6

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Laea;->E:Z

    if-eqz v0, :cond_6

    .line 276
    invoke-virtual/range {p0 .. p1}, Laea;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 277
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return v11

    .line 279
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v14, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v12, v14

    and-long/2addr v2, v12

    cmp-long v0, v2, v6

    if-eqz v0, :cond_8

    iget-object v0, v1, Laea;->c:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_7

    iget-object v0, v1, Laea;->c:Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v0, v2, :cond_8

    .line 282
    :cond_7
    invoke-virtual/range {p0 .. p1}, Laea;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 283
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson2/ab;->b(Z)V

    return v11

    :cond_8
    return v5

    :cond_9
    if-ne v10, v0, :cond_a

    .line 291
    iget-object v4, v1, Laea;->c:Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    if-ne v4, v8, :cond_a

    iget-object v4, v1, Laea;->i:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_a

    iget-object v4, v1, Laea;->i:Ljava/lang/reflect/Field;

    .line 293
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/Throwable;

    if-ne v4, v8, :cond_a

    return v5

    .line 299
    :cond_a
    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v12, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v12, v2

    cmp-long v4, v12, v6

    if-eqz v4, :cond_b

    instance-of v4, v10, Ljava/io/Serializable;

    if-nez v4, :cond_b

    return v5

    .line 303
    :cond_b
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson2/ab;->c(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    if-ne v10, v0, :cond_c

    .line 306
    invoke-virtual/range {p0 .. p1}, Laea;->a(Lcom/alibaba/fastjson2/ab;)V

    const-string v0, ".."

    .line 307
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    return v11

    .line 311
    :cond_c
    invoke-virtual {v9, v1, v10}, Lcom/alibaba/fastjson2/ab;->a(Labq;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 313
    invoke-virtual/range {p0 .. p1}, Laea;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 314
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    return v11

    .line 320
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 321
    const-class v4, [B

    if-ne v0, v4, :cond_e

    .line 322
    check-cast v10, [B

    invoke-virtual {v1, v9, v10}, Laea;->a(Lcom/alibaba/fastjson2/ab;[B)V

    return v11

    .line 326
    :cond_e
    invoke-virtual {v1, v9, v0}, Laea;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 331
    iget-boolean v0, v1, Laea;->C:Z

    if-eqz v0, :cond_15

    .line 332
    instance-of v0, v10, Ljava/util/Map;

    if-eqz v0, :cond_13

    .line 333
    move-object v0, v10

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 334
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_f

    .line 337
    sget-object v8, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v13, v8, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v13, v2

    cmp-long v8, v13, v6

    if-nez v8, :cond_f

    goto :goto_2

    .line 342
    :cond_f
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->p()V

    if-nez v4, :cond_10

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 347
    :cond_10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 348
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v5

    .line 349
    invoke-interface {v5, v9, v4}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    goto :goto_2

    :cond_11
    if-eqz v12, :cond_12

    .line 354
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_12
    return v11

    .line 359
    :cond_13
    instance-of v0, v4, Laez;

    if-eqz v0, :cond_15

    .line 360
    check-cast v4, Laez;

    .line 361
    iget-object v0, v4, Laez;->s:Ljava/util/List;

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labq;

    .line 363
    invoke-virtual {v2, v9, v10}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    goto :goto_3

    :cond_14
    return v11

    .line 369
    :cond_15
    invoke-virtual/range {p0 .. p1}, Laea;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 370
    iget-boolean v0, v9, Lcom/alibaba/fastjson2/ab;->f:Z

    .line 371
    iget-wide v2, v1, Laea;->d:J

    sget-object v5, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v13, v5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v13

    cmp-long v2, v2, v6

    if-eqz v2, :cond_17

    if-eqz v0, :cond_16

    .line 373
    iget-object v5, v1, Laea;->a:Ljava/lang/String;

    iget-object v6, v1, Laea;->b:Ljava/lang/reflect/Type;

    iget-wide v7, v1, Laea;->d:J

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v10

    invoke-interface/range {v2 .. v8}, Laem;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_4

    .line 375
    :cond_16
    iget-object v5, v1, Laea;->a:Ljava/lang/String;

    iget-object v6, v1, Laea;->b:Ljava/lang/reflect/Type;

    iget-wide v7, v1, Laea;->d:J

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v10

    invoke-interface/range {v2 .. v8}, Laem;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_4

    :cond_17
    if-eqz v0, :cond_18

    .line 379
    iget-object v5, v1, Laea;->a:Ljava/lang/String;

    iget-object v6, v1, Laea;->b:Ljava/lang/reflect/Type;

    iget-wide v7, v1, Laea;->d:J

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v10

    invoke-interface/range {v2 .. v8}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_4

    .line 381
    :cond_18
    iget-object v5, v1, Laea;->a:Ljava/lang/String;

    iget-object v6, v1, Laea;->b:Ljava/lang/reflect/Type;

    iget-wide v7, v1, Laea;->d:J

    move-object v2, v4

    move-object/from16 v3, p1

    move-object v4, v10

    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_4
    if-eqz v12, :cond_19

    .line 386
    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_19
    return v11

    .line 328
    :cond_1a
    new-instance v2, Lcom/alibaba/fastjson2/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get objectWriter error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v5

    .line 255
    :cond_1b
    throw v2
.end method

.method public d()Laem;
    .locals 1

    .line 63
    iget-object v0, p0, Laea;->x:Laem;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Laea;->C:Z

    return v0
.end method
