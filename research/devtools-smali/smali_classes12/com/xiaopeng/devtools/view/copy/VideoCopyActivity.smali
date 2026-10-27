.class public Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "VideoCopyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private AH:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private FA:Ljava/lang/Thread;

.field Fw:Ljava/lang/Double;

.field private Fx:Landroid/widget/Button;

.field private Fy:Landroid/widget/TextView;

.field private Fz:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fw:Ljava/lang/Double;

    .line 44
    new-instance v0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$1;-><init>(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity$2;-><init>(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->FA:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/Button;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fy:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 107
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->setContentView(I)V

    .line 108
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09018e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f1000e8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->FA:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->FA:Ljava/lang/Thread;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/system/service/ZipFileService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->AH:Ljava/lang/String;

    .line 124
    :cond_2
    const-string v0, "VideoCopyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->AH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const-string v0, "storagePath"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->AH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v0, "sourcePath"

    sget-object v1, Lcom/xiaopeng/devtools/a;->ny:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const p1, 0x7f090410

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fz:Landroid/widget/TextView;

    .line 87
    const p1, 0x7f0903eb

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fy:Landroid/widget/TextView;

    .line 88
    const p1, 0x7f09018e

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    .line 90
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->AH:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 92
    new-instance p1, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, v0}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->AH:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 152
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 156
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f100149

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 77
    goto :goto_0

    .line 70
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fx:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/copy/VideoCopyActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f100156

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 72
    nop

    .line 81
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
