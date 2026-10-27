.class public Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "ImageDispActivity.java"


# instance fields
.field Go:Landroid/support/v7/widget/RecyclerView;

.field private PB:Lcom/xiaopeng/devtools/view/hwcheck/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->PB:Lcom/xiaopeng/devtools/view/hwcheck/a;

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 27
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->setContentView(I)V

    .line 28
    return-void
.end method

.method public fe()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 43
    const v0, 0x7f09030c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->Go:Landroid/support/v7/widget/RecyclerView;

    .line 44
    return-void
.end method

.method public ff()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 59
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 49
    new-instance v0, Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/hwcheck/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->PB:Lcom/xiaopeng/devtools/view/hwcheck/a;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->Go:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->Go:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->PB:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->PB:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/hwcheck/a;->dI()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/hwcheck/ImageDispActivity;->PB:Lcom/xiaopeng/devtools/view/hwcheck/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/hwcheck/a;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 33
    return-void
.end method
