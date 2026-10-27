.class public abstract Lcom/google/common/reflect/TypeToken;
.super Lcom/google/common/reflect/e;
.source "TypeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeToken$b;,
        Lcom/google/common/reflect/TypeToken$a;,
        Lcom/google/common/reflect/TypeToken$c;,
        Lcom/google/common/reflect/TypeToken$ClassSet;,
        Lcom/google/common/reflect/TypeToken$InterfaceSet;,
        Lcom/google/common/reflect/TypeToken$TypeSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/reflect/e<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x327b23b1befe387cL


# instance fields
.field private transient covariantTypeResolver:Lcom/google/common/reflect/f;

.field private transient invariantTypeResolver:Lcom/google/common/reflect/f;

.field private final runtimeType:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 124
    invoke-direct {p0}, Lcom/google/common/reflect/e;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    .line 126
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    const-string v2, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/o;->b(ZLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/google/common/reflect/e;-><init>()V

    .line 165
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/TypeToken$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private a([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 352
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    .line 353
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 355
    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Lcom/google/common/reflect/TypeToken;->b()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/google/common/reflect/TypeToken$a;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/google/common/reflect/TypeToken$a;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private b(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->g()Lcom/google/common/reflect/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/f;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    .line 275
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->covariantTypeResolver:Lcom/google/common/reflect/f;

    iput-object v0, p1, Lcom/google/common/reflect/TypeToken;->covariantTypeResolver:Lcom/google/common/reflect/f;

    .line 276
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->invariantTypeResolver:Lcom/google/common/reflect/f;

    iput-object v0, p1, Lcom/google/common/reflect/TypeToken;->invariantTypeResolver:Lcom/google/common/reflect/f;

    return-object p1
.end method

.method static synthetic b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method private c(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 313
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private f()Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    .line 1090
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$a;

    move-result-object v0

    .line 1091
    new-instance v1, Lcom/google/common/reflect/TypeToken$2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/reflect/TypeToken$2;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$a;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1116
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken$2;->a([Ljava/lang/reflect/Type;)V

    .line 1119
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$a;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/google/common/reflect/f;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->covariantTypeResolver:Lcom/google/common/reflect/f;

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/f;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->covariantTypeResolver:Lcom/google/common/reflect/f;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bk;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method final c()Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 296
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->c(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 300
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->c(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method final d()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/reflect/TypeToken<",
            "-TT;>;>;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_0

    .line 336
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->a([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_1

    .line 339
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->a([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 341
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 345
    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    .line 346
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$a;->c(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>.TypeSet;"
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeSet;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 824
    instance-of v0, p1, Lcom/google/common/reflect/TypeToken;

    if-eqz v0, :cond_0

    .line 825
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    .line 826
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    iget-object p1, p1, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->runtimeType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/i;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
