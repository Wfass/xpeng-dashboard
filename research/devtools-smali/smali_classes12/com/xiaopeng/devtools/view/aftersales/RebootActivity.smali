.class public Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "RebootActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Cu:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private static synthetic k(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic l(Lcom/xiaopeng/xui/app/c;I)V
    .locals 2

    .line 71
    const-string p1, "reboot system"

    const-string p2, "triggered"

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const p1, 0x7f100394

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->ee(I)V

    .line 74
    new-instance p1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RebootActivity$YjVVvN7zkdtvTvNTUgNrBtjKW1A;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RebootActivity$YjVVvN7zkdtvTvNTUgNrBtjKW1A;-><init>(Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;)V

    const/4 p2, 0x0

    const-wide/16 v0, 0xbb8

    invoke-static {p2, p1, v0, v1}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 77
    return-void
.end method

.method public static synthetic lambda$86N1M8q8_6P7WpcEfHKBA5cVmbw(Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->l(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$Pzvhj7G5RPDJh5mpKYjMaJsyaNM(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->k(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$YjVVvN7zkdtvTvNTUgNrBtjKW1A(Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->me()V

    return-void
.end method

.method private md()V
    .locals 3

    .line 68
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1003fe

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 69
    const v1, 0x7f100284

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 70
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RebootActivity$86N1M8q8_6P7WpcEfHKBA5cVmbw;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RebootActivity$86N1M8q8_6P7WpcEfHKBA5cVmbw;-><init>(Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 78
    const v1, 0x7f10009c

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RebootActivity$Pzvhj7G5RPDJh5mpKYjMaJsyaNM;->INSTANCE:Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$RebootActivity$Pzvhj7G5RPDJh5mpKYjMaJsyaNM;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 80
    return-void
.end method

.method private synthetic me()V
    .locals 1

    .line 75
    const-string v0, "RebootActivity"

    invoke-static {p0, v0}, Lcom/xiaopeng/devtools/utils/m;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 23
    const v0, 0x7f0c0063

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->setContentView(I)V

    .line 24
    return-void
.end method

.method public fe()V
    .locals 2

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 29
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->Cu:Landroid/widget/Button;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->Cu:Landroid/widget/Button;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 31
    return-void
.end method

.method public ff()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->Cu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
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

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900ec

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/RebootActivity;->md()V

    .line 60
    nop

    .line 65
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 53
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 47
    return-void
.end method
