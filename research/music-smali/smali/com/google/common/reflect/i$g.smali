.class final Lcom/google/common/reflect/i$g;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ac<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/common/reflect/i$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/reflect/i$f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 361
    invoke-static {}, Lcom/google/common/collect/ac;->b()Lcom/google/common/collect/ac$a;

    move-result-object v0

    .line 362
    const-class v1, Lcom/google/common/reflect/i$f;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 363
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/google/common/reflect/i$f;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 365
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :catch_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/google/common/collect/ac$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ac$a;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ac$a;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/i$g;->a:Lcom/google/common/collect/ac;

    return-void
.end method

.method constructor <init>(Lcom/google/common/reflect/i$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/i$f<",
            "*>;)V"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/google/common/reflect/i$g;->b:Lcom/google/common/reflect/i$f;

    return-void
.end method

.method static synthetic a(Lcom/google/common/reflect/i$g;)Lcom/google/common/reflect/i$f;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/google/common/reflect/i$g;->b:Lcom/google/common/reflect/i$f;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 385
    sget-object p2, Lcom/google/common/reflect/i$g;->a:Lcom/google/common/collect/ac;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/ac;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    if-eqz p2, :cond_0

    .line 390
    :try_start_0
    iget-object p1, p0, Lcom/google/common/reflect/i$g;->b:Lcom/google/common/reflect/i$f;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 392
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 387
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
