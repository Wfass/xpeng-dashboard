.class public Lcom/xiaopeng/devtools/view/ToolBarActivity;
.super Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;
.source "ToolBarActivity.java"


# instance fields
.field private Cr:Lcom/xiaopeng/devtools/view/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$dB93CZbqcEIiBp5RL2PzeOrLUGc(Lcom/xiaopeng/devtools/view/ToolBarActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->g(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->fd()V

    .line 23
    return-void
.end method

.method public fe()V
    .locals 1

    .line 27
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->fe()V

    .line 28
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/ActionBar;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/ToolBarActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    .line 29
    return-void
.end method

.method public ff()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->ff()V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ToolBarActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    new-instance v1, Lcom/xiaopeng/devtools/view/-$$Lambda$ToolBarActivity$dB93CZbqcEIiBp5RL2PzeOrLUGc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/-$$Lambda$ToolBarActivity$dB93CZbqcEIiBp5RL2PzeOrLUGc;-><init>(Lcom/xiaopeng/devtools/view/ToolBarActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setOnBackListener(Lcom/xiaopeng/devtools/view/ActionBar$a;)V

    .line 40
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->lJ()V

    .line 34
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/FactoryTestBaseActivity;->onResume()V

    .line 45
    return-void
.end method
