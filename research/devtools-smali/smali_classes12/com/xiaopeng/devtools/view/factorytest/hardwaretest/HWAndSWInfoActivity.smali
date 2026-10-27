.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;
.super Lcom/xiaopeng/devtools/view/ToolBarActivity;
.source "HWAndSWInfoActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;


# instance fields
.field private Hg:Landroid/widget/TextView;

.field private Hh:Landroid/widget/TextView;

.field private Hi:Landroid/widget/TextView;

.field private Hj:Landroid/widget/TextView;

.field private Hk:Landroid/widget/TextView;

.field private Hl:Landroid/widget/TextView;

.field private Hm:Landroid/widget/ImageView;

.field private Hn:Landroid/widget/ImageView;

.field private Ho:Landroid/widget/ImageView;

.field private Hp:Landroid/widget/TextView;

.field private Hq:Landroid/widget/TextView;

.field private Hr:I

.field private Hs:I

.field private Ht:I

.field private Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;-><init>()V

    .line 31
    const/16 v0, 0xfa

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hr:I

    .line 32
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hs:I

    .line 33
    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Ht:I

    return-void
.end method

.method private mx()V
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hl:Landroid/widget/TextView;

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->fR()V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hg:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->fO()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100378

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hh:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->fP()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f1003ba

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hi:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getMcuVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f10037e

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hp:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    invoke-interface {v2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->getVehicleId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f1003d7

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hl:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hm:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    return-void
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Ho:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    return-void
.end method

.method public fd()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fd()V

    .line 41
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->setContentView(I)V

    .line 42
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    invoke-interface {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->init(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public fe()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fe()V

    .line 49
    const v0, 0x7f0903f9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hj:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0903fa

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hk:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f090408

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hg:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f09041c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hh:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f09040e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hi:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f090215

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hm:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f090216

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hn:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f09042f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hp:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0903e8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hq:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f090214

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Ho:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f090419

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hl:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method public ff()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->ff()V

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public lJ()V
    .locals 5

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->lJ()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Ht:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->cb(I)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hs:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->ca(I)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hr:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->cc(I)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hj:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    .line 69
    invoke-interface {v3}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->fQ()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 68
    const v3, 0x7f100364

    invoke-virtual {p0, v3, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hk:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v0, 0x7f100164

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    aput-object v0, v1, v4

    .line 71
    const v0, 0x7f100365

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->mx()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/HWAndSWInfoActivity;->Hu:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;->onDestroy()V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/HWAndSWInfoEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/HWAndSWInfoEvent;->getState()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    sget-object p1, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    const v0, 0x7f1001a2

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/d/a;->b(Landroid/content/Context;I)V

    .line 94
    goto :goto_0

    .line 96
    :pswitch_1
    sget-object p1, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    const v0, 0x7f1001a3

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/d/a;->b(Landroid/content/Context;I)V

    .line 97
    nop

    .line 101
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
