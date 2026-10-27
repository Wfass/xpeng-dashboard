.class public abstract Lcom/xiaopeng/devtools/view/AppBaseActivity;
.super Landroid/app/Activity;
.source "AppBaseActivity.java"


# instance fields
.field protected theme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/view/AppBaseActivity;->theme:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 1

    .line 111
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method protected a(Ljava/lang/Class;I)V
    .locals 1

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string p1, "theme"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachBaseContext, default locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/l;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachBaseContext, set locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/xiaopeng/commonfunc/utils/l;->a(Landroid/content/res/Resources;Ljava/util/Locale;)Landroid/content/res/Resources;

    .line 74
    :cond_0
    return-void
.end method

.method protected b(Landroid/content/Intent;I)V
    .locals 1

    .line 116
    const-string v0, "theme"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 1

    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/Class;)V
    .locals 1

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const/high16 p1, 0x14000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public fd()V
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "theme"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/AppBaseActivity;->theme:I

    .line 39
    return-void
.end method

.method public fe()V
    .locals 0

    .line 42
    return-void
.end method

.method public ff()V
    .locals 0

    .line 48
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 45
    return-void
.end method

.method public lK()V
    .locals 0

    .line 35
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->lK()V

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fd()V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->fe()V

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->lJ()V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/AppBaseActivity;->ff()V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 63
    return-void
.end method

.method protected recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 122
    iget v0, p0, Lcom/xiaopeng/devtools/view/AppBaseActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method
