.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$8;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "RdDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Landroid/content/Context;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$8;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$8;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$8;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->a()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method
