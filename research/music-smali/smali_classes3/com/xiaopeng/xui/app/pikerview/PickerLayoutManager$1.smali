.class Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PickerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;->this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;->this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    invoke-static {p1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->access$000(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)Landroidx/recyclerview/widget/LinearSnapHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;->this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;->this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;->this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    invoke-static {p2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->access$100(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 67
    iget-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;->this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    invoke-static {p2}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->access$200(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;)V

    .line 68
    iget-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager$1;->this$0:Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;->access$102(Lcom/xiaopeng/xui/app/pikerview/PickerLayoutManager;I)I

    :cond_0
    return-void
.end method
