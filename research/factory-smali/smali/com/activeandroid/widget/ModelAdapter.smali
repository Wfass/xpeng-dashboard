.class public Lcom/activeandroid/widget/ModelAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ModelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/activeandroid/Model;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .line 13
    .local p0, "this":Lcom/activeandroid/widget/ModelAdapter;, "Lcom/activeandroid/widget/ModelAdapter<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .line 17
    .local p0, "this":Lcom/activeandroid/widget/ModelAdapter;, "Lcom/activeandroid/widget/ModelAdapter<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lcom/activeandroid/widget/ModelAdapter;, "Lcom/activeandroid/widget/ModelAdapter<TT;>;"
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lcom/activeandroid/widget/ModelAdapter;, "Lcom/activeandroid/widget/ModelAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .line 48
    .local p0, "this":Lcom/activeandroid/widget/ModelAdapter;, "Lcom/activeandroid/widget/ModelAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/activeandroid/widget/ModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/activeandroid/Model;

    .line 50
    .local v0, "item":Lcom/activeandroid/Model;, "TT;"
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 54
    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method public setData(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/activeandroid/widget/ModelAdapter;, "Lcom/activeandroid/widget/ModelAdapter<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Lcom/activeandroid/widget/ModelAdapter;->clear()V

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/activeandroid/Model;

    .line 38
    .local v1, "item":Lcom/activeandroid/Model;, "TT;"
    invoke-virtual {p0, v1}, Lcom/activeandroid/widget/ModelAdapter;->add(Ljava/lang/Object;)V

    .line 39
    .end local v1    # "item":Lcom/activeandroid/Model;, "TT;"
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
