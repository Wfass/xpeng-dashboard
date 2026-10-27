.class public Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "EcuVersionActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/systeminfo/a;


# instance fields
.field private TI:Landroid/widget/TextView;

.field private TJ:Lcom/xiaopeng/devtools/presenter/g/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dx(Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->TI:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->TI:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method

.method public fd()V
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 24
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->setContentView(I)V

    .line 25
    return-void
.end method

.method public fe()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 30
    const v0, 0x7f0903fc

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->TI:Landroid/widget/TextView;

    .line 31
    new-instance v0, Lcom/xiaopeng/devtools/presenter/g/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/g/a;-><init>(Lcom/xiaopeng/devtools/view/systeminfo/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->TJ:Lcom/xiaopeng/devtools/presenter/g/b;

    .line 32
    return-void
.end method

.method public ff()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 45
    return-void
.end method

.method public lJ()V
    .locals 5

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/systeminfo/EcuVersionActivity;->TJ:Lcom/xiaopeng/devtools/presenter/g/b;

    const/4 v3, 0x2

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-interface {v2, v3}, Lcom/xiaopeng/devtools/presenter/g/b;->b([[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 57
    return-void
.end method
