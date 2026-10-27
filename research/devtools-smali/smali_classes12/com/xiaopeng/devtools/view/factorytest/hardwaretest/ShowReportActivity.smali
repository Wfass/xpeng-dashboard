.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "ShowReportActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h;


# instance fields
.field private Hv:Landroid/widget/TextView;

.field private sE:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;->Hv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public fd()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 29
    const v0, 0x7f0c0068

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;->setContentView(I)V

    .line 30
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/h;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;->sE:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;

    .line 31
    return-void
.end method

.method public fe()V
    .locals 1

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 36
    const v0, 0x7f09033e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;->Hv:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public ff()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 48
    return-void
.end method

.method public lJ()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/ShowReportActivity;->sE:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g;->fV()V

    .line 43
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 53
    return-void
.end method
