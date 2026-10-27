.class public abstract Lcom/alibaba/fastjson2/al;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Type;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p1}, Laax;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/al;->a:Ljava/lang/reflect/Type;

    .line 62
    invoke-static {p1}, Laax;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/al;->b:Ljava/lang/Class;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/al$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/al;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/al;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/al<",
            "*>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/alibaba/fastjson2/al$1;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/al$1;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 323
    new-instance v0, Labm;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Labm;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Type;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson2/al;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson2/al;->b:Ljava/lang/Class;

    return-object v0
.end method
