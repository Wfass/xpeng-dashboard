.class Lcom/android/car/ui/recyclerview/j$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DefaultScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/ui/recyclerview/j;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/j;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/j$2;->a:Lcom/android/car/ui/recyclerview/j;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 329
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j$2;->a:Lcom/android/car/ui/recyclerview/j;

    invoke-static {p2}, Lcom/android/car/ui/recyclerview/j;->b(Lcom/android/car/ui/recyclerview/j;)V

    .line 330
    iget-object p2, p0, Lcom/android/car/ui/recyclerview/j$2;->a:Lcom/android/car/ui/recyclerview/j;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/car/ui/recyclerview/j;->a(Lcom/android/car/ui/recyclerview/j;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
