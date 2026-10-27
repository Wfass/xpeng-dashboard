.class public Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;
.super Lcom/xiaopeng/devtools/view/ToolBarActivity;
.source "PreEnvActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Sc:Landroid/widget/TextView;

.field private Sd:Landroid/widget/Button;

.field private Se:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;-><init>()V

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 39
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/b;->oZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Sc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Sc:Landroid/widget/TextView;

    const v1, 0x7f1003d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Sc:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Sc:Landroid/widget/TextView;

    const v1, 0x7f1003d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    :goto_0
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fd()V

    .line 21
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->setContentView(I)V

    .line 22
    return-void
.end method

.method public fe()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fe()V

    .line 27
    const v0, 0x7f090418

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Sc:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Sd:Landroid/widget/Button;

    .line 29
    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Se:Landroid/widget/Button;

    .line 30
    return-void
.end method

.method public ff()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->ff()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Sd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->Se:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->lJ()V

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->updateView()V

    .line 36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 59
    const v0, 0x7f0900b4

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900b8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/c;->pc()V

    .line 62
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->updateView()V

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/a/c;->pd()V

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/pre_env/PreEnvActivity;->updateView()V

    .line 69
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onDestroy()V

    .line 74
    return-void
.end method
