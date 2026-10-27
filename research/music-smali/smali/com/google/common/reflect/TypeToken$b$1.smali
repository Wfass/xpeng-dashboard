.class final Lcom/google/common/reflect/TypeToken$b$1;
.super Lcom/google/common/reflect/TypeToken$b;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken$b<",
        "Lcom/google/common/reflect/TypeToken<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1303
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken$b;-><init>(Lcom/google/common/reflect/TypeToken$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1306
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->b()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method synthetic b(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 1303
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$b$1;->a(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;>;"
        }
    .end annotation

    .line 1311
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method c(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;)",
            "Lcom/google/common/reflect/TypeToken<",
            "*>;"
        }
    .end annotation

    .line 1317
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->c()Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method

.method synthetic c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1303
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$b$1;->b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1303
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken$b$1;->c(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    return-object p1
.end method
