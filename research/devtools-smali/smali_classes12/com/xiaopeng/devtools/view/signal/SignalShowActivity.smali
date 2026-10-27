.class public Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "SignalShowActivity.java"


# instance fields
.field private Gi:Lcom/kyleduo/switchbutton/SwitchButton;

.field private SA:Landroid/widget/Button;

.field private SB:Lcom/xiaopeng/devtools/system/service/CollectionService;

.field private Sz:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$1;-><init>(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)Lcom/xiaopeng/devtools/system/service/CollectionService;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->SB:Lcom/xiaopeng/devtools/system/service/CollectionService;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;Lcom/xiaopeng/devtools/system/service/CollectionService;)Lcom/xiaopeng/devtools/system/service/CollectionService;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->SB:Lcom/xiaopeng/devtools/system/service/CollectionService;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->Sz:Z

    return p1
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 54
    const v0, 0x7f0c0069

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->setContentView(I)V

    .line 55
    return-void
.end method

.method public fe()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 60
    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->SA:Landroid/widget/Button;

    .line 61
    const v0, 0x7f09037c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kyleduo/switchbutton/SwitchButton;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    .line 62
    return-void
.end method

.method public ff()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->SA:Landroid/widget/Button;

    new-instance v1, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$2;-><init>(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->Gi:Lcom/kyleduo/switchbutton/SwitchButton;

    new-instance v1, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity$3;-><init>(Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;)V

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/system/service/CollectionService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->Sz:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 49
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 100
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 101
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->Sz:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/signal/SignalShowActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 96
    return-void
.end method
