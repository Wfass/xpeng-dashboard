.class public final Lcom/google/common/reflect/f;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/f$c;,
        Lcom/google/common/reflect/f$a;,
        Lcom/google/common/reflect/f$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/reflect/f$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/common/reflect/f$b;

    invoke-direct {v0}, Lcom/google/common/reflect/f$b;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/f;->a:Lcom/google/common/reflect/f$b;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/reflect/f$b;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/reflect/f;->a:Lcom/google/common/reflect/f$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/f$b;Lcom/google/common/reflect/f$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/common/reflect/f;-><init>(Lcom/google/common/reflect/f$b;)V

    return-void
.end method

.method static a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/f;
    .locals 1

    .line 75
    new-instance v0, Lcom/google/common/reflect/f;

    invoke-direct {v0}, Lcom/google/common/reflect/f;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/f$a;->a(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ac;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/reflect/f;->a(Ljava/util/Map;)Lcom/google/common/reflect/f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-static {p0, p1}, Lcom/google/common/reflect/f;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 2

    .line 258
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/f;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 260
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/f;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 262
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 263
    invoke-direct {p0, p1}, Lcom/google/common/reflect/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 264
    check-cast v1, Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/google/common/reflect/i;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 0

    .line 252
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 253
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/f;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/google/common/reflect/i;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 2

    .line 246
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 247
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 248
    new-instance v1, Lcom/google/common/reflect/i$h;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/reflect/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/common/reflect/i$h;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/f;->b(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/reflect/f;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/google/common/reflect/f;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    .line 238
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 239
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 240
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/f;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 270
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 272
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/f$c;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/google/common/reflect/f$1;

    invoke-direct {v0, p0, p2}, Lcom/google/common/reflect/f$1;-><init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 207
    invoke-virtual {v0, p0}, Lcom/google/common/reflect/f$1;->a([Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map;)Lcom/google/common/reflect/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/f$c;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/f;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/google/common/reflect/f;

    iget-object v1, p0, Lcom/google/common/reflect/f;->a:Lcom/google/common/reflect/f$b;

    invoke-virtual {v1, p1}, Lcom/google/common/reflect/f$b;->a(Ljava/util/Map;)Lcom/google/common/reflect/f$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/common/reflect/f;-><init>(Lcom/google/common/reflect/f$b;)V

    return-object v0
.end method

.method public b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 215
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/google/common/reflect/f;->a:Lcom/google/common/reflect/f$b;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/f$b;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 219
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/f;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1

    .line 220
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 221
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/f;->a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 222
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 223
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/f;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    :cond_3
    return-object p1
.end method
