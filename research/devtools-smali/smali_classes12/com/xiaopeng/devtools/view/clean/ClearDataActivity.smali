.class public Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "ClearDataActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Cv:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$5kMMF-FyJluqwwYGLHzxaWYIKRw(Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->mp()V

    return-void
.end method

.method public static synthetic lambda$TMwLzgDm1qvSbagJnslTR0LV9cc(Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->q(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method private mo()V
    .locals 3

    .line 67
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 68
    const v1, 0x7f10028c

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 69
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/clean/-$$Lambda$ClearDataActivity$TMwLzgDm1qvSbagJnslTR0LV9cc;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/clean/-$$Lambda$ClearDataActivity$TMwLzgDm1qvSbagJnslTR0LV9cc;-><init>(Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 79
    const v1, 0x7f10009c

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 81
    return-void
.end method

.method private synthetic mp()V
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method private synthetic q(Lcom/xiaopeng/xui/app/c;I)V
    .locals 2

    .line 70
    const-string p1, "reset system"

    const-string p2, "triggered"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const p1, 0x7f100398

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->ee(I)V

    .line 73
    new-instance p1, Lcom/xiaopeng/devtools/view/clean/-$$Lambda$ClearDataActivity$5kMMF-FyJluqwwYGLHzxaWYIKRw;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/clean/-$$Lambda$ClearDataActivity$5kMMF-FyJluqwwYGLHzxaWYIKRw;-><init>(Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;)V

    const/4 p2, 0x0

    const-wide/16 v0, 0xbb8

    invoke-static {p2, p1, v0, v1}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 78
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 22
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->setContentView(I)V

    .line 23
    return-void
.end method

.method public fe()V
    .locals 2

    .line 27
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 28
    const v0, 0x7f0900f1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->Cv:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->Cv:Landroid/widget/Button;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 30
    return-void
.end method

.method public ff()V
    .locals 1

    .line 39
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->Cv:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 35
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;->mo()V

    .line 59
    nop

    .line 64
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 46
    return-void
.end method
