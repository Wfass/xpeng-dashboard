.class Lbty$3;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "VuiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbty;


# direct methods
.method constructor <init>(Lbty;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lbty$3;->a:Lbty;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 174
    iget-object v0, p0, Lbty$3;->a:Lbty;

    invoke-static {v0}, Lbty;->c(Lbty;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbty$3;->a:Lbty;

    invoke-static {v0}, Lbty;->d(Lbty;)Lbtz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lbty$3;->a:Lbty;

    invoke-static {v0}, Lbty;->d(Lbty;)Lbtz;

    move-result-object v0

    invoke-virtual {v0}, Lbtz;->a()V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 181
    iget-object v0, p0, Lbty$3;->a:Lbty;

    invoke-static {v0}, Lbty;->e(Lbty;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemRangeChanged\uff1apositionStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",itemCount:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VuiRecyclerView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 184
    iget-object p1, p0, Lbty$3;->a:Lbty;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lbty;->b(I)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lbty$3;->a:Lbty;

    const/16 p2, 0x320

    invoke-virtual {p1, p2}, Lbty;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lbty$3;->a:Lbty;

    invoke-static {v0}, Lbty;->e(Lbty;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemRangeChanged\uff1apositionStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",itemCount:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",payload:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "VuiRecyclerView"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 197
    iget-object p1, p0, Lbty$3;->a:Lbty;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lbty;->b(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lbty$3;->a:Lbty;

    const/16 p2, 0x320

    invoke-virtual {p1, p2}, Lbty;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 208
    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->c(Lbty;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->d(Lbty;)Lbtz;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->d(Lbty;)Lbtz;

    move-result-object p1

    invoke-virtual {p1}, Lbtz;->a()V

    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 222
    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->c(Lbty;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->d(Lbty;)Lbtz;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->d(Lbty;)Lbtz;

    move-result-object p1

    invoke-virtual {p1}, Lbtz;->a()V

    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 215
    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->c(Lbty;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->d(Lbty;)Lbtz;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lbty$3;->a:Lbty;

    invoke-static {p1}, Lbty;->d(Lbty;)Lbtz;

    move-result-object p1

    invoke-virtual {p1}, Lbtz;->a()V

    :cond_0
    return-void
.end method
