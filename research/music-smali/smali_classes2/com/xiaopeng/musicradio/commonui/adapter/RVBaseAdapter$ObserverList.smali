.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;
.super Ljava/util/ArrayList;
.source "RVBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObserverList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        ">;"
    }
.end annotation


# instance fields
.field private mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 342
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    return-void
.end method


# virtual methods
.method public add(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)Z
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 339
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->add(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public remove(I)Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(I)Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->remove(I)Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    move-result-object p1

    return-object p1
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$ObserverList;->mObserver:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
