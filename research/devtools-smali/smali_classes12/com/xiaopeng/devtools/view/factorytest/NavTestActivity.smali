.class public Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "NavTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;
    }
.end annotation


# static fields
.field private static final nw:[Ljava/lang/String;


# instance fields
.field private AH:Ljava/lang/String;

.field private Fy:Landroid/widget/TextView;

.field private Gb:Landroid/widget/Button;

.field private Gc:Landroid/widget/Button;

.field private Gd:Landroid/widget/Button;

.field private Ge:Landroid/widget/TextView;

.field private Gf:Lcom/xiaopeng/devtools/presenter/factorytest/a/a;

.field private Gg:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "/data/gps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->nw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gd:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Fy:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 102
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->setContentView(I)V

    .line 103
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/a/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/a/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gf:Lcom/xiaopeng/devtools/presenter/factorytest/a/a;

    .line 104
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->AH:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 107
    return-void
.end method

.method public fe()V
    .locals 4

    .line 111
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 112
    const v0, 0x7f0900fd

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gb:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0900ff

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gc:Landroid/widget/Button;

    .line 114
    const v0, 0x7f0900d6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gd:Landroid/widget/Button;

    .line 115
    const v0, 0x7f090406

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Ge:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Ge:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gf:Lcom/xiaopeng/devtools/presenter/factorytest/a/a;

    .line 117
    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/a/a;->gX()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 116
    const v2, 0x7f100189

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f0903ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Fy:Landroid/widget/TextView;

    .line 120
    return-void
.end method

.method public ff()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 125
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gb:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gd:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gg:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gg:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 131
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 148
    const v0, 0x7f0900d6

    if-eq p1, v0, :cond_2

    const v0, 0x7f0900fd

    if-eq p1, v0, :cond_1

    const v0, 0x7f0900ff

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gf:Lcom/xiaopeng/devtools/presenter/factorytest/a/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/a/a;->gU()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gf:Lcom/xiaopeng/devtools/presenter/factorytest/a/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/a/a;->gW()V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gf:Lcom/xiaopeng/devtools/presenter/factorytest/a/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/a/a;->gU()Z

    move-result p1

    if-nez p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gf:Lcom/xiaopeng/devtools/presenter/factorytest/a/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/a/a;->gV()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Fy:Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728\u62f7\u8d1d\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/system/service/CopyFileService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gg:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;->a(Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->AH:Ljava/lang/String;

    .line 167
    :cond_3
    const-string v0, "storagePath"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->AH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v0, "sourcePath"

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->nw:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gd:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 171
    nop

    .line 176
    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 180
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gg:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gg:Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 184
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 185
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Gd:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->Fy:Landroid/widget/TextView;

    const-string v0, "\u62f7\u8d1d\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/NavTestActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    nop

    .line 91
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 143
    return-void
.end method
