.class Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "VuiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/VuiRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$200(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->setUpdateNum()V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$400(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->updateVuiScene()V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$400(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->updateVuiScene()V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$200(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->setUpdateNum()V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$200(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->setUpdateNum()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$200(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->this$0:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->access$300(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewGlobalLayoutListener;->setUpdateNum()V

    :cond_0
    return-void
.end method
