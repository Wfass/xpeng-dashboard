.class public Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "StorageMemoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/aftersales/cdu/b;


# instance fields
.field private Fk:Lcom/xiaopeng/devtools/presenter/aftersales/f;

.field private Fl:Landroid/widget/TextView;

.field private Fm:Landroid/widget/TextView;

.field private Fn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic dh(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fl:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$5HNWbiif4_gE0uEs-DIpewKZVRA(Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->dh(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$ApzgsmBIRvu0D4bRSmxuLWdAg2w(Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->mi()V

    return-void
.end method

.method private synthetic mi()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fm:Landroid/widget/TextView;

    const v1, 0x7f10028f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fk:Lcom/xiaopeng/devtools/presenter/aftersales/f;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/f;->io()V

    .line 82
    return-void
.end method


# virtual methods
.method public dg(Ljava/lang/String;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$StorageMemoryActivity$5HNWbiif4_gE0uEs-DIpewKZVRA;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$StorageMemoryActivity$5HNWbiif4_gE0uEs-DIpewKZVRA;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public fd()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 22
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->setContentView(I)V

    .line 23
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/f;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/f;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fk:Lcom/xiaopeng/devtools/presenter/aftersales/f;

    .line 24
    return-void
.end method

.method public fe()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 29
    const v0, 0x7f0902db

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fl:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0901db

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fm:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fn:Landroid/widget/Button;

    .line 32
    return-void
.end method

.method public ff()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 37
    return-void
.end method

.method public mh()V
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$StorageMemoryActivity$ApzgsmBIRvu0D4bRSmxuLWdAg2w;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/-$$Lambda$StorageMemoryActivity$ApzgsmBIRvu0D4bRSmxuLWdAg2w;-><init>(Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900a5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fl:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fm:Landroid/widget/TextView;

    const v1, 0x7f100290

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fm:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fk:Lcom/xiaopeng/devtools/presenter/aftersales/f;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/f;->ip()V

    .line 62
    :goto_0
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onClick(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 68
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/cdu/StorageMemoryActivity;->Fk:Lcom/xiaopeng/devtools/presenter/aftersales/f;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/f;->io()V

    .line 49
    return-void
.end method
