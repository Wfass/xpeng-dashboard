.class public Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "EncryptShActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/aftersales/c;


# instance fields
.field private AH:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private DT:Lcom/xiaopeng/xui/app/c;

.field private DZ:Landroid/widget/Button;

.field private Ea:Lcom/xiaopeng/devtools/presenter/aftersales/e;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity$1;-><init>(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Landroid/widget/Button;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DZ:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->AH:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic ac(Z)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/c;->aX(Z)Lcom/xiaopeng/xui/app/c;

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Lcom/xiaopeng/devtools/system/a/b;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->AH:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic cW(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)Lcom/xiaopeng/devtools/presenter/aftersales/e;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->Ea:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    return-object p0
.end method

.method private static synthetic i(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic j(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->Ea:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->ih()V

    .line 104
    return-void
.end method

.method private synthetic lU()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$9KrgbfEahPF6DBjXqb9wBx9hiyg(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->ac(Z)V

    return-void
.end method

.method public static synthetic lambda$M6Vqd0hxIpPTTUwBeaObo-ly6eg(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->lU()V

    return-void
.end method

.method public static synthetic lambda$UnJGzWDIlskrUVm1GVvqmG021z0(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->cW(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$mDSCFk00Q0sShsgR_w1lbENMACk(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->i(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$mrssK2W1ToNpNhpFhNHNgZsevdw(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->j(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method


# virtual methods
.method public ab(Z)V
    .locals 1

    .line 126
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$9KrgbfEahPF6DBjXqb9wBx9hiyg;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$9KrgbfEahPF6DBjXqb9wBx9hiyg;-><init>(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method public cU(Ljava/lang/String;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$UnJGzWDIlskrUVm1GVvqmG021z0;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$UnJGzWDIlskrUVm1GVvqmG021z0;-><init>(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public dismissDialog()V
    .locals 1

    .line 121
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$M6Vqd0hxIpPTTUwBeaObo-ly6eg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$M6Vqd0hxIpPTTUwBeaObo-ly6eg;-><init>(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public fd()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 55
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->setContentView(I)V

    .line 56
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->AH:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 58
    new-instance v0, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 60
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/e;-><init>(Lcom/xiaopeng/devtools/view/aftersales/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->Ea:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->Ea:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->AH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->bV(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public fe()V
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 67
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DZ:Landroid/widget/Button;

    .line 68
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 69
    return-void
.end method

.method public ff()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DZ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->AH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900da

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->Ea:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->ig()V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v0, 0x7f1003fe

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f1000d3

    .line 100
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->dW(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->aV(Z)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f10011d

    .line 102
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$mrssK2W1ToNpNhpFhNHNgZsevdw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$mrssK2W1ToNpNhpFhNHNgZsevdw;-><init>(Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f10009c

    .line 105
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$mDSCFk00Q0sShsgR_w1lbENMACk;->INSTANCE:Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$EncryptShActivity$mDSCFk00Q0sShsgR_w1lbENMACk;

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 107
    nop

    .line 112
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/EncryptShActivity;->Ea:Lcom/xiaopeng/devtools/presenter/aftersales/e;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/e;->onDestroy()V

    .line 92
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 86
    return-void
.end method
