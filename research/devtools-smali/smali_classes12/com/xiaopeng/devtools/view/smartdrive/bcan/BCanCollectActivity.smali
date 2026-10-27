.class public Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "BCanCollectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Tl:Landroid/widget/Button;

.field private Tm:Landroid/widget/Button;

.field private Tn:Landroid/widget/Button;

.field private To:Landroid/widget/Button;

.field private Tp:Landroid/view/View;

.field private Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private dw(I)V
    .locals 3

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    sget-object v1, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->fc()Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    move-result-object v1

    const-string v2, "com.xiaopeng.data.collector"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->sendData(ILandroid/os/Bundle;[Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 32
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->setContentView(I)V

    .line 33
    return-void
.end method

.method public fe()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 38
    const v0, 0x7f0900fc

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    .line 39
    const v0, 0x7f0900d5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tm:Landroid/widget/Button;

    .line 40
    const v0, 0x7f090145

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tn:Landroid/widget/Button;

    .line 41
    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->To:Landroid/widget/Button;

    .line 42
    const v0, 0x7f090235

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tp:Landroid/view/View;

    .line 43
    const v0, 0x7f09041a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    .line 44
    return-void
.end method

.method public ff()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->To:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tp:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->d(Landroid/view/View;I)V

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900cf

    const v2, 0x7f1002cc

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    const v1, 0x7f0900d5

    const v5, 0x7f1002db

    const/4 v6, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x7f0900fc

    if-eq v0, v1, :cond_1

    const p1, 0x7f090145

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 119
    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->dw(I)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tp:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->d(Landroid/view/View;I)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->nP()V

    .line 124
    goto :goto_1

    .line 84
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 85
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 86
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 88
    invoke-direct {p0, v6}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->dw(I)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tp:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->d(Landroid/view/View;I)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->nO()V

    goto :goto_0

    .line 92
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tp:Landroid/view/View;

    invoke-virtual {p0, p1, v6}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->d(Landroid/view/View;I)V

    .line 94
    invoke-direct {p0, v4}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->dw(I)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->nQ()V

    .line 97
    :goto_0
    goto :goto_1

    .line 101
    :cond_3
    invoke-direct {p0, v6}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->dw(I)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tp:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->d(Landroid/view/View;I)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->nO()V

    .line 106
    goto :goto_1

    .line 110
    :cond_4
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->dw(I)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tl:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tp:Landroid/view/View;

    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->d(Landroid/view/View;I)V

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->nP()V

    .line 115
    nop

    .line 130
    :cond_5
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 76
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->dw(I)V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;->Tq:Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->nP()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 71
    return-void
.end method
