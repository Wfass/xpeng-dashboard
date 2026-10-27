.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "MobileNetWorkTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;


# instance fields
.field private Iu:Landroid/widget/TextView;

.field private KA:Landroid/widget/TextView;

.field private KC:Landroid/widget/TextView;

.field private KD:Landroid/widget/TextView;

.field private KE:Landroid/widget/TextView;

.field private KF:Landroid/widget/TextView;

.field private KG:Landroid/widget/TextView;

.field private KH:Landroid/widget/EditText;

.field private Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

.field private Kx:Landroid/widget/Button;

.field private Ky:Landroid/widget/Button;

.field private Kz:Landroid/widget/TextView;

.field private info:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KG:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->info:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 1

    .line 165
    if-eqz p2, :cond_0

    .line 166
    const p2, 0x7f100349

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060012

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 169
    :cond_0
    const p2, 0x7f100333

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1060016

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;Landroid/widget/TextView;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private synthetic ax(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KF:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Landroid/widget/TextView;Z)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->info:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Iu:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic lambda$VvRdrHbb1vGxzXrz3vI9hobfDhs(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->ax(Z)V

    return-void
.end method

.method private mN()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    const-string v1, "47.99.202.252"

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->bx(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Ky:Landroid/widget/Button;

    const v1, 0x7f100352

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Ky:Landroid/widget/Button;

    const v1, 0x7f100317

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 252
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KA:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxApn;->getRssi()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method

.method public aw(Z)V
    .locals 1

    .line 243
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/-$$Lambda$MobileNetWorkTestActivity$VvRdrHbb1vGxzXrz3vI9hobfDhs;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/-$$Lambda$MobileNetWorkTestActivity$VvRdrHbb1vGxzXrz3vI9hobfDhs;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public cm(I)V
    .locals 1

    .line 229
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kz:Landroid/widget/TextView;

    const v0, 0x7f1002c2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 232
    :cond_0
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kz:Landroid/widget/TextView;

    const v0, 0x7f100227

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 233
    nop

    .line 239
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fd()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 101
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->setContentView(I)V

    .line 102
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;-><init>(Landroid/os/Handler;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->onInit()V

    .line 104
    const v0, 0x7f100318

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->setTarget(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public fe()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 110
    const v0, 0x7f090298

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kz:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f090296

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KA:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f09028b

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KC:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f09028e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kx:Landroid/widget/Button;

    .line 114
    const v0, 0x7f090290

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Ky:Landroid/widget/Button;

    .line 115
    const v0, 0x7f0902e8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Iu:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0902f1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KE:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0902f0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KF:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f09028d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KG:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KG:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 120
    const v0, 0x7f090294

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KD:Landroid/widget/TextView;

    .line 121
    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KH:Landroid/widget/EditText;

    .line 122
    return-void
.end method

.method public ff()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kx:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Ky:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 126
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->fU()Z

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KC:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 129
    const v1, 0x7f10020b

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KD:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f100215

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KE:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 133
    const v0, 0x7f100217

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->mN()V

    .line 135
    return-void
.end method

.method public mt()V
    .locals 2

    .line 200
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 201
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 202
    return-void
.end method

.method public mu()V
    .locals 2

    .line 206
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 207
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 208
    return-void
.end method

.method public mv()V
    .locals 0

    .line 212
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 213
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 176
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09028e

    if-eq p1, v0, :cond_4

    const v0, 0x7f090290

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Ky:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 183
    const v0, 0x7f100317

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f100352

    if-eqz v1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Ky:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KH:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 187
    :cond_1
    const-string p1, "8"

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    const-string v1, "47.99.202.252"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->p(Ljava/lang/String;I)V

    .line 190
    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    const-string v1, "47.99.202.252"

    invoke-interface {p1, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->bw(Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Ky:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 179
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    invoke-interface {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->fT()V

    .line 180
    nop

    .line 196
    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->fS()V

    .line 218
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 219
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 220
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/CommonEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/CommonEvent;->getState()I

    move-result v0

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/CommonEvent;->getMsg()Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string v0, "MobileNetWork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP_PING_EVENT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KG:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ttl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->KE:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Landroid/widget/TextView;Z)V

    .line 80
    const p1, 0x7f100217

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->mN()V

    .line 85
    nop

    .line 90
    :cond_2
    :goto_0
    return-void
.end method

.method public onResult(Landroid/view/View;)V
    .locals 0

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 162
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->getSimStatusAsync()V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->fT()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->Kw:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;->iR()V

    .line 151
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 152
    const-string v0, "lte diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    return-void
.end method
