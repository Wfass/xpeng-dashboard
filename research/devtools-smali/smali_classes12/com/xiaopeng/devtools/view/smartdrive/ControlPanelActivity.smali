.class public Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;
.super Landroid/app/Activity;
.source "ControlPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/smartdrive/b;


# instance fields
.field private Ta:Landroid/widget/Button;

.field private Tb:Landroid/widget/Button;

.field private uF:Lcom/xiaopeng/devtools/presenter/f/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cl(Ljava/lang/String;)V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->finish()V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 43
    const v0, 0x7f090187

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902d5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->uF:Lcom/xiaopeng/devtools/presenter/f/d;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/f/d;->hD()V

    goto :goto_0

    .line 45
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/view/smartdrive/CanTestActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->finish()V

    .line 48
    nop

    .line 54
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->requestWindowFeature(I)Z

    .line 28
    const p1, 0x7f0c0033

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->setContentView(I)V

    .line 30
    new-instance p1, Lcom/xiaopeng/devtools/presenter/f/b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/presenter/f/b;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/b;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->uF:Lcom/xiaopeng/devtools/presenter/f/d;

    .line 32
    const p1, 0x7f090187

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->Ta:Landroid/widget/Button;

    .line 33
    const p1, 0x7f0902d5

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->Tb:Landroid/widget/Button;

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->Ta:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/ControlPanelActivity;->Tb:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method
