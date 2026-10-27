.class public Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "AdasCollectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;
    }
.end annotation


# instance fields
.field private AH:Ljava/lang/String;

.field private Fy:Landroid/widget/TextView;

.field private Tf:Landroid/widget/CheckBox;

.field private Tg:Landroid/widget/Button;

.field private Th:Landroid/widget/Button;

.field private Ti:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;

.field private Tj:Lcom/xiaopeng/devtools/presenter/f/a/b;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/xiaopeng/devtools/presenter/f/a/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/f/a/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tj:Lcom/xiaopeng/devtools/presenter/f/a/b;

    .line 56
    new-instance v0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$1;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/Button;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tg:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/TextView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Fy:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)Landroid/widget/Button;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Th:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 122
    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->setContentView(I)V

    .line 123
    return-void
.end method

.method public fe()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 128
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tf:Landroid/widget/CheckBox;

    .line 129
    const v0, 0x7f090189

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tg:Landroid/widget/Button;

    .line 130
    const v0, 0x7f0903ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Fy:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f09009b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Th:Landroid/widget/Button;

    .line 133
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->AH:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 136
    return-void
.end method

.method public ff()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 153
    new-instance v0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Ti:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Ti:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Th:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tf:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tf:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tg:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 214
    if-eqz p2, :cond_0

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tj:Lcom/xiaopeng/devtools/presenter/f/a/b;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/f/a/b;->fv()V

    goto :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tj:Lcom/xiaopeng/devtools/presenter/f/a/b;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/f/a/b;->ka()V

    .line 219
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09009b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f090189

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Fy:Landroid/widget/TextView;

    const-string v0, "\u6b63\u5728\u62f7\u8d1d\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/system/service/CopyFileService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Ti:Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;->a(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->AH:Ljava/lang/String;

    .line 190
    :cond_1
    const-string v0, "AdasCollectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStoragePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->AH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    const-string v0, "storagePath"

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->AH:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const-string v0, "sourcePath"

    sget-object v2, Lcom/xiaopeng/devtools/presenter/f/a/a;->nw:[Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tg:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    goto :goto_0

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tf:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 199
    if-eqz p1, :cond_3

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tf:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Th:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Th:Landroid/widget/Button;

    const v0, 0x7f1001bc

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tj:Lcom/xiaopeng/devtools/presenter/f/a/b;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/f/a/b;->hF()V

    .line 205
    nop

    .line 210
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 176
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tj:Lcom/xiaopeng/devtools/presenter/f/a/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/f/a/b;->ka()V

    .line 178
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/FileEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/FileEvent;->getStatus()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity$2;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :cond_0
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Tg:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->Fy:Landroid/widget/TextView;

    const-string v0, "\u65e5\u5fd7\u62f7\u8d1d\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    goto :goto_0

    .line 87
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/adas/AdasCollectActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    nop

    .line 98
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

    .line 163
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 171
    return-void
.end method
