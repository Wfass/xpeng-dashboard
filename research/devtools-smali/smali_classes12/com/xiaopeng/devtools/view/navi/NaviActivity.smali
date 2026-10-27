.class public Lcom/xiaopeng/devtools/view/navi/NaviActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "NaviActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/navi/a;


# instance fields
.field private Rn:Landroid/widget/TextView;

.field private Ro:Landroid/widget/Button;

.field private Rp:Lcom/xiaopeng/devtools/presenter/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$LhODTk6q6x-V9r_pV_urMJBCSpg(Lcom/xiaopeng/devtools/view/navi/NaviActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->nJ()V

    return-void
.end method

.method private synthetic nJ()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->Rn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->Rp:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/d/a;->jI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 22
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->setContentView(I)V

    .line 23
    new-instance v0, Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/d/a;-><init>(Lcom/xiaopeng/devtools/view/navi/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->Rp:Lcom/xiaopeng/devtools/presenter/d/a;

    .line 24
    return-void
.end method

.method public fe()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 29
    const v0, 0x7f09042e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->Rn:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->Ro:Landroid/widget/Button;

    .line 31
    return-void
.end method

.method public ff()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->Ro:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->nI()V

    .line 37
    return-void
.end method

.method public nI()V
    .locals 1

    .line 68
    new-instance v0, Lcom/xiaopeng/devtools/view/navi/-$$Lambda$NaviActivity$LhODTk6q6x-V9r_pV_urMJBCSpg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/navi/-$$Lambda$NaviActivity$LhODTk6q6x-V9r_pV_urMJBCSpg;-><init>(Lcom/xiaopeng/devtools/view/navi/NaviActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 54
    const v0, 0x7f0900aa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/navi/NaviActivity;->Rp:Lcom/xiaopeng/devtools/presenter/d/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/d/a;->jH()V

    .line 59
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 48
    return-void
.end method
