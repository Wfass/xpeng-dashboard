.class public abstract Lcom/xiaopeng/musicradio/commonui/adapter/i;
.super Lcom/xiaopeng/musicradio/commonui/adapter/g;
.source "RvShallowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lcom/xiaopeng/musicradio/commonui/adapter/a;",
        "T:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/adapter/g<",
        "TK;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/g;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TK;>;)",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/adapter/a;

    .line 23
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/commonui/adapter/a;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/adapter/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
