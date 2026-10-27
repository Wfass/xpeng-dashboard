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
.field final synthetic acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->c(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/listenner/a;->rc()V

    .line 162
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->e(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qR()V

    .line 169
    :cond_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->e(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qR()V

    .line 176
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 182
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->c(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/a;->rc()V

    .line 185
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->c(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/a;->rc()V

    .line 199
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->c(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/VuiRecyclerView$2;->acc:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->d(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)Lcom/xiaopeng/xui/vui/listenner/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/listenner/a;->rc()V

    .line 192
    :cond_0
    return-void
.end method
