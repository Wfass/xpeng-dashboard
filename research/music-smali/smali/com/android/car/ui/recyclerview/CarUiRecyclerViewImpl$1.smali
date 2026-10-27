.class Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CarUiRecyclerViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 132
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    invoke-static {p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->access$100(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;

    .line 133
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    .line 134
    invoke-static {p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->access$200(I)I

    move-result v2

    .line 133
    invoke-interface {v0, v1, v2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;->a(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 140
    iget-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    invoke-static {p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;->access$100(Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;

    .line 141
    iget-object v1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl$1;->a:Lcom/android/car/ui/recyclerview/CarUiRecyclerViewImpl;

    invoke-interface {v0, v1, p2, p3}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$c;->a(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
