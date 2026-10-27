.class Lcom/android/car/ui/recyclerview/n$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewAdapterAdapterV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/n;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/n;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/n;->a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 55
    invoke-interface {v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/n;->a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 62
    invoke-interface {v1, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/n;->a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 70
    invoke-interface {v1, p1, p2, p3}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/n;->a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 77
    invoke-interface {v1, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeInserted(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/n;->a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, p1, v2

    add-int v4, p2, v2

    .line 92
    invoke-interface {v1, v3, v4}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemMoved(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/n;->a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 84
    invoke-interface {v1, p1, p2}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onItemRangeRemoved(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStateRestorationPolicyChanged()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/car/ui/recyclerview/n$1;->a:Lcom/android/car/ui/recyclerview/n;

    invoke-static {v0}, Lcom/android/car/ui/recyclerview/n;->a(Lcom/android/car/ui/recyclerview/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;

    .line 100
    invoke-interface {v1}, Lcom/android/car/ui/plugin/oemapis/recyclerview/AdapterDataObserverOEMV1;->onStateRestorationPolicyChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
