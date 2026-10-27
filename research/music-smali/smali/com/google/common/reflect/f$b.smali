.class Lcom/google/common/reflect/f$b;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ac<",
            "Lcom/google/common/reflect/f$c;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-static {}, Lcom/google/common/collect/ac;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/f$b;->a:Lcom/google/common/collect/ac;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ac;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ac<",
            "Lcom/google/common/reflect/f$c;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/google/common/reflect/f$b;->a:Lcom/google/common/collect/ac;

    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map;)Lcom/google/common/reflect/f$b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/common/reflect/f$c;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/f$b;"
        }
    .end annotation

    .line 290
    invoke-static {}, Lcom/google/common/collect/ac;->b()Lcom/google/common/collect/ac$a;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/google/common/reflect/f$b;->a:Lcom/google/common/collect/ac;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ac$a;->a(Ljava/util/Map;)Lcom/google/common/collect/ac$a;

    .line 292
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/reflect/f$c;

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 295
    invoke-virtual {v2, v1}, Lcom/google/common/reflect/f$c;->b(Ljava/lang/reflect/Type;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "Type variable %s bound to itself"

    invoke-static {v3, v4, v2}, Lcom/google/common/base/o;->a(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 296
    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ac$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ac$a;

    goto :goto_0

    .line 298
    :cond_0
    new-instance p1, Lcom/google/common/reflect/f$b;

    invoke-virtual {v0}, Lcom/google/common/collect/ac$a;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/common/reflect/f$b;-><init>(Lcom/google/common/collect/ac;)V

    return-object p1
.end method

.method final a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/google/common/reflect/f$b$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/reflect/f$b$1;-><init>(Lcom/google/common/reflect/f$b;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/f$b;)V

    .line 313
    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/f$b;->a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/f$b;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/f$b;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/google/common/reflect/f$b;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/common/reflect/f$b;->a:Lcom/google/common/collect/ac;

    new-instance v1, Lcom/google/common/reflect/f$c;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/f$c;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ac;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 327
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 328
    array-length v2, v0

    if-nez v2, :cond_0

    return-object p1

    .line 331
    :cond_0
    new-instance v2, Lcom/google/common/reflect/f;

    invoke-direct {v2, p2, v1}, Lcom/google/common/reflect/f;-><init>(Lcom/google/common/reflect/f$b;Lcom/google/common/reflect/f$1;)V

    invoke-static {v2, v0}, Lcom/google/common/reflect/f;->a(Lcom/google/common/reflect/f;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p2

    .line 360
    sget-boolean v1, Lcom/google/common/reflect/i$d;->a:Z

    if-eqz v1, :cond_1

    .line 361
    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 365
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-static {v0, p1, p2}, Lcom/google/common/reflect/i;->a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    return-object p1

    .line 368
    :cond_2
    new-instance p1, Lcom/google/common/reflect/f;

    invoke-direct {p1, p2, v1}, Lcom/google/common/reflect/f;-><init>(Lcom/google/common/reflect/f$b;Lcom/google/common/reflect/f$1;)V

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/f;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method
