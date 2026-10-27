.class public Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "DriveAllTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Tc:Landroid/widget/Button;

.field private Td:Landroid/widget/Button;

.field private Te:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/Class;)V
    .locals 1

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 30
    const v0, 0x7f0c00ab

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->setContentView(I)V

    .line 31
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->Tc:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->Td:Landroid/widget/Button;

    .line 33
    const v0, 0x7f0900c2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->Te:Landroid/widget/Button;

    .line 34
    return-void
.end method

.method public fe()V
    .locals 0

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 39
    return-void
.end method

.method public ff()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->Tc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->Td:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->Te:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 43
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900c2

    if-eq p1, v0, :cond_2

    const v0, 0x7f0900c6

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900d8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const-class p1, Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/SmartDriveActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->d(Ljava/lang/Class;)V

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    const-class p1, Lcom/xiaopeng/devtools/view/smartdrive/bcan/BCanCollectActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->d(Ljava/lang/Class;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    const-class p1, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/smartdrive/DriveAllTestActivity;->d(Ljava/lang/Class;)V

    .line 81
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 64
    return-void
.end method
