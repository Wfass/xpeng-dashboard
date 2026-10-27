.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "RecordActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;


# static fields
.field private static final Lx:[Ljava/lang/String;


# instance fields
.field private AH:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private Fy:Landroid/widget/TextView;

.field private Lr:Landroid/widget/Button;

.field private Ls:Landroid/widget/Button;

.field private Lt:Landroid/widget/Button;

.field private Lu:Landroid/widget/Button;

.field private Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

.field private Lw:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/record/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lx:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lr:Landroid/widget/Button;

    .line 38
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Ls:Landroid/widget/Button;

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lt:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lu:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    .line 42
    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    .line 50
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->AH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Fy:Landroid/widget/TextView;

    return-object p0
.end method

.method private dI()V
    .locals 2

    .line 109
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/b;-><init>(Landroid/content/Context;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    .line 110
    return-void
.end method


# virtual methods
.method public dl(I)V
    .locals 2

    .line 207
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lr:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Ls:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lt:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lu:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 216
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lr:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Ls:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lt:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;->gM()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lu:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    goto :goto_0

    .line 209
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lr:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Ls:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lt:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lu:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    nop

    .line 228
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fd()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 99
    const v0, 0x7f0c0064

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->setContentView(I)V

    .line 100
    const v0, 0x7f100340

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->setTarget(Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->AH:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->dI()V

    .line 106
    return-void
.end method

.method public fe()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 115
    const v0, 0x7f0900ee

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lr:Landroid/widget/Button;

    .line 116
    const v0, 0x7f0900ef

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Ls:Landroid/widget/Button;

    .line 117
    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lt:Landroid/widget/Button;

    .line 118
    const v0, 0x7f0900f0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lu:Landroid/widget/Button;

    .line 119
    const v0, 0x7f0900d7

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    .line 121
    const v0, 0x7f0903ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Fy:Landroid/widget/TextView;

    .line 122
    return-void
.end method

.method public ff()V
    .locals 2

    .line 138
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lr:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Ls:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v0, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 147
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->dl(I)V

    .line 134
    return-void
.end method

.method public mt()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 233
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public mu()V
    .locals 2

    .line 238
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 239
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09012c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public mv()V
    .locals 0

    .line 244
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 245
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 160
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 178
    :pswitch_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->dl(I)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;->stopPlay()V

    .line 180
    goto/16 :goto_0

    .line 168
    :pswitch_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->dl(I)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;->stopRecord()V

    .line 170
    goto :goto_0

    .line 163
    :pswitch_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->dl(I)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;->startRecord()V

    .line 165
    goto :goto_0

    .line 173
    :pswitch_3
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->dl(I)V

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;->play()V

    .line 175
    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/utils/u;->lD()Z

    move-result p1

    if-nez p1, :cond_1

    .line 184
    return-void

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f1000ec

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 187
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/system/service/CopyFileService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->AH:Ljava/lang/String;

    .line 191
    :cond_2
    const-string v0, "RecordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->AH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const-string v0, "storagePath"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->AH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v0, "sourcePath"

    sget-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lx:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    const-string p1, "copy record diagnosis media"

    const-string v0, "triggered"

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    nop

    .line 203
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900ed
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lv:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i/a;->releaseAll()V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 253
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 254
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 255
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f1000e3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 84
    goto :goto_0

    .line 77
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Lw:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f1000e4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    nop

    .line 89
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 152
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    const-string v0, "mic diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/record/RecordActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method
