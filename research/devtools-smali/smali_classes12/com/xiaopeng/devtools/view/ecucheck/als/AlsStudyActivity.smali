.class public Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AlsStudyActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/ecucheck/als/a;


# instance fields
.field private FO:Landroid/widget/TextView;

.field private FP:Lcom/xiaopeng/devtools/presenter/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->FO:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public cj(I)V
    .locals 1

    .line 48
    new-instance v0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity$1;-><init>(Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public fd()V
    .locals 1

    .line 17
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 18
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->setContentView(I)V

    .line 19
    new-instance v0, Lcom/xiaopeng/devtools/presenter/a/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/a/a;-><init>(Lcom/xiaopeng/devtools/view/ecucheck/als/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->FP:Lcom/xiaopeng/devtools/presenter/a/a;

    .line 20
    return-void
.end method

.method public fe()V
    .locals 1

    .line 24
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 25
    const v0, 0x7f0903e1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->FO:Landroid/widget/TextView;

    .line 26
    return-void
.end method

.method public ff()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->FP:Lcom/xiaopeng/devtools/presenter/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/a/a;->it()V

    .line 38
    return-void
.end method

.method public lJ()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->FP:Lcom/xiaopeng/devtools/presenter/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/a/a;->init()V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/ecucheck/als/AlsStudyActivity;->FP:Lcom/xiaopeng/devtools/presenter/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/a/a;->onDestroy()V

    .line 44
    return-void
.end method
