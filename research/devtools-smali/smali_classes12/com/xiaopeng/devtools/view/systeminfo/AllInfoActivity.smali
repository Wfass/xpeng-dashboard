.class public Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AllInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TA:Landroid/widget/Button;

.field private TB:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 1

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 23
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->setContentView(I)V

    .line 24
    return-void
.end method

.method public fe()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 29
    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->TA:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->TB:Landroid/widget/Button;

    .line 31
    return-void
.end method

.method public ff()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->TA:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->TB:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 35
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d9

    if-eq p1, v0, :cond_1

    const v0, 0x7f090100

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    const-class p1, Lcom/xiaopeng/devtools/view/systeminfo/SystemInfoActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->d(Ljava/lang/Class;)V

    .line 55
    goto :goto_0

    .line 58
    :cond_1
    const-class p1, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/AllInfoActivity;->d(Ljava/lang/Class;)V

    .line 59
    nop

    .line 64
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 48
    return-void
.end method
