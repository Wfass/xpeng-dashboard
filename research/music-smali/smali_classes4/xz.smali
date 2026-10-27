.class public final Lxz;
.super Lzw;
.source "ObjectReaderImplFromInt.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lzw<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/function/IntFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/IntFunction;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lzw;-><init>(Ljava/lang/Class;)V

    .line 14
    iput-object p2, p0, Lxz;->a:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lzw;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_0
    iget-object p2, p0, Lxz;->a:Ljava/util/function/IntFunction;

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p1

    .line 23
    invoke-interface {p2, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d_()Ljava/lang/Class;
    .locals 1

    .line 8
    invoke-super {p0}, Lzw;->d_()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    iget-object p2, p0, Lxz;->a:Ljava/util/function/IntFunction;

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p1

    .line 34
    invoke-interface {p2, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
