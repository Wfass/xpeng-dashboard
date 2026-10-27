.class Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;
.super Ljava/lang/Object;
.source "NrConcentrationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->delayInitList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "NrConcentrationFragment"

    const-string v1, "delayInitList end : ====="

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$002(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;)Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$000(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/WrapContentLinearLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$202(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;Ljava/util/List;)Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$302(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;Lcom/xiaopeng/musicradio/widget/recyclerview/e;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 89
    new-instance v0, Lbjy;

    invoke-direct {v0}, Lbjy;-><init>()V

    .line 90
    new-instance v1, Lbjx;

    invoke-direct {v1}, Lbjx;-><init>()V

    .line 91
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$400(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$400(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$300(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v3

    const-class v4, Lbka;

    invoke-virtual {v3, v4, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$300(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v0

    const-class v3, Lbjz;

    invoke-virtual {v0, v3, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$200(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lbka;

    invoke-direct {v1}, Lbka;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$200(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lbjz;

    invoke-direct {v1}, Lbjz;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$300(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$300(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$200(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$500(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->al(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiLayoutLoadable(Z)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    sget-object v1, Lbxx;->SCROLLBYY:Lbxx;

    invoke-virtual {v1}, Lbxx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiAction(Ljava/lang/String;)V

    .line 105
    sget v0, Lbuc$e;->content_top_spacing:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v1

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-direct {v3, v2, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrConcentrationFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method
