.class public Lcom/xiaopeng/devtools/view/ActionBarActivity;
.super Lcom/xiaopeng/devtools/view/AppBaseActivity;
.source "ActionBarActivity.java"


# instance fields
.field protected Cr:Lcom/xiaopeng/devtools/view/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$pJw2pNwvijRReTrfNzWP8-loTFo(Lcom/xiaopeng/devtools/view/ActionBarActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->f(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 0

    .line 21
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fd()V

    .line 22
    return-void
.end method

.method public fe()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fe()V

    .line 27
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/ActionBar;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBarActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    .line 28
    return-void
.end method

.method public ff()V
    .locals 0

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->ff()V

    .line 38
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->lJ()V

    .line 33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->onResume()V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ActionBarActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    new-instance v1, Lcom/xiaopeng/devtools/view/-$$Lambda$ActionBarActivity$pJw2pNwvijRReTrfNzWP8-loTFo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/-$$Lambda$ActionBarActivity$pJw2pNwvijRReTrfNzWP8-loTFo;-><init>(Lcom/xiaopeng/devtools/view/ActionBarActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setOnBackListener(Lcom/xiaopeng/devtools/view/ActionBar$a;)V

    .line 44
    return-void
.end method
