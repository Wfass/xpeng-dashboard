.class public Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;
.super Ljava/lang/Object;
.source "FaultFilterChain.java"

# interfaces
.implements Lcom/xiaopeng/speech/vui/filter/IFilter;


# instance fields
.field public mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/vui/filter/IFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->mFilters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/xiaopeng/speech/vui/filter/IFilter;)Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public doFilter(Lbye;)Lbye;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/filter/FaultFilterChain;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/filter/IFilter;

    .line 19
    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/vui/filter/IFilter;->doFilter(Lbye;)Lbye;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method
