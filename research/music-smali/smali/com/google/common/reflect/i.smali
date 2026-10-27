.class final Lcom/google/common/reflect/i;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/i$d;,
        Lcom/google/common/reflect/i$c;,
        Lcom/google/common/reflect/i$h;,
        Lcom/google/common/reflect/i$f;,
        Lcom/google/common/reflect/i$g;,
        Lcom/google/common/reflect/i$e;,
        Lcom/google/common/reflect/i$b;,
        Lcom/google/common/reflect/i$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/common/base/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/google/common/reflect/i$1;

    invoke-direct {v0}, Lcom/google/common/reflect/i$1;-><init>()V

    sput-object v0, Lcom/google/common/reflect/i;->a:Lcom/google/common/base/h;

    const-string v0, ", "

    .line 65
    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/String;)Lcom/google/common/base/i;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/i;->b(Ljava/lang/String;)Lcom/google/common/base/i;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/i;->b:Lcom/google/common/base/i;

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/h;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/common/reflect/i;->a:Lcom/google/common/base/h;

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 538
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/common/reflect/i;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method static varargs a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/common/reflect/i$e;

    sget-object v1, Lcom/google/common/reflect/i$a;->a:Lcom/google/common/reflect/i$a;

    .line 102
    invoke-virtual {v1, p0}, Lcom/google/common/reflect/i$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/common/reflect/i$e;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 91
    invoke-static {p1, p2}, Lcom/google/common/reflect/i;->a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Owner type for unenclosed %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/o;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance v0, Lcom/google/common/reflect/i$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/i$e;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    .line 69
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 70
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 71
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 72
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "Wildcard cannot have more than one lower bounds."

    invoke-static {v1, v4}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    .line 73
    array-length v1, v0

    if-ne v1, v3, :cond_1

    .line 74
    aget-object p0, v0, v2

    invoke-static {p0}, Lcom/google/common/reflect/i;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/i;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    .line 76
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 77
    array-length v0, p0

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const-string v0, "Wildcard should have only one upper bound."

    invoke-static {v3, v0}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    .line 78
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/common/reflect/i;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/reflect/i;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    .line 81
    :cond_3
    sget-object v0, Lcom/google/common/reflect/i$c;->a:Lcom/google/common/reflect/i$c;

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/i$c;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/common/reflect/i;->b([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static varargs a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "TD;>;"
        }
    .end annotation

    .line 150
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, p2, v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/i;->b(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/reflect/i;->b([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/common/reflect/i;->b(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Lcom/google/common/base/i;
    .locals 1

    .line 54
    sget-object v0, Lcom/google/common/reflect/i;->b:Lcom/google/common/base/i;

    return-object v0
.end method

.method private static b(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 521
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/q;->a(Ljava/lang/Object;)Lcom/google/common/base/p;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->c(Ljava/lang/Iterable;Lcom/google/common/base/p;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method private static b([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 209
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 210
    invoke-static {v2}, Lcom/google/common/reflect/i;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 214
    instance-of p0, v2, Ljava/lang/Class;

    if-eqz p0, :cond_0

    .line 215
    move-object p0, v2

    check-cast p0, Ljava/lang/Class;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 220
    :cond_0
    invoke-static {v2}, Lcom/google/common/reflect/i;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable<",
            "TD;>;"
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/google/common/reflect/i$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/reflect/i$f;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    .line 331
    const-class p0, Ljava/lang/reflect/TypeVariable;

    new-instance p1, Lcom/google/common/reflect/i$g;

    invoke-direct {p1, v0}, Lcom/google/common/reflect/i$g;-><init>(Lcom/google/common/reflect/i$f;)V

    .line 332
    invoke-static {p0, p1}, Lcom/google/common/reflect/d;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    return-object p0
.end method

.method static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4

    .line 157
    new-instance v0, Lcom/google/common/reflect/i$h;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    aput-object p0, v3, v1

    invoke-direct {v0, v2, v3}, Lcom/google/common/reflect/i$h;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static b([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 5

    .line 525
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 526
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 527
    check-cast v2, Ljava/lang/Class;

    .line 528
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Primitive type \'%s\' used as %s"

    invoke-static {v3, v4, v2, p1}, Lcom/google/common/base/o;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 517
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    return-object p0
.end method

.method static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4

    .line 163
    new-instance v0, Lcom/google/common/reflect/i$h;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-array p0, v1, [Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    aput-object v1, p0, v3

    invoke-direct {v0, v2, p0}, Lcom/google/common/reflect/i$h;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static d(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 172
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4

    .line 177
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 179
    new-instance v1, Lcom/google/common/reflect/i$2;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/i$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 199
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/i$2;->a([Ljava/lang/reflect/Type;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method
