.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "CameraTestActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private Jp:Landroid/widget/Button;

.field private Jq:Landroid/widget/Button;

.field private Jr:Landroid/widget/Button;

.field private Js:Landroid/widget/Button;

.field private Jt:Landroid/widget/Button;

.field private Ju:Landroid/widget/Button;

.field private Jv:Landroid/widget/TextView;

.field private Jw:Landroid/view/SurfaceView;

.field private Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

.field private Jy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jy:I

    return-void
.end method

.method private cW(I)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Ju:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CameraTestActivity$dsHBULMNFFknUW2BPuQWbtsfBH4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CameraTestActivity$dsHBULMNFFknUW2BPuQWbtsfBH4;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method private synthetic cX(I)V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->stopRecording()V

    .line 159
    :cond_0
    const/4 v0, 0x1

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->cd(I)V

    .line 163
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->go()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    const/4 v0, 0x0

    .line 169
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->f(IZ)V

    .line 170
    return-void
.end method

.method private synthetic d(ZI)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    const v1, 0x7f100098

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 176
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Ju:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 180
    :cond_0
    const p1, 0x7f100097

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 182
    :goto_0
    const/4 p1, 0x0

    const v1, 0x7f1000f3

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 193
    :pswitch_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jv:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0x7f100326

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 190
    :pswitch_1
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jv:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0x7f100325

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    goto :goto_1

    .line 187
    :pswitch_2
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jv:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0x7f100324

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    goto :goto_1

    .line 184
    :pswitch_3
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jv:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0x7f100323

    invoke-virtual {p0, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    nop

    .line 196
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f(IZ)V
    .locals 1

    .line 174
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CameraTestActivity$j9ZVdqlHgAV_X_lnsfToYXiSsBs;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CameraTestActivity$j9ZVdqlHgAV_X_lnsfToYXiSsBs;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;ZI)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public static synthetic lambda$dsHBULMNFFknUW2BPuQWbtsfBH4(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->cX(I)V

    return-void
.end method

.method public static synthetic lambda$j9ZVdqlHgAV_X_lnsfToYXiSsBs(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->d(ZI)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 59
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->setContentView(I)V

    .line 60
    const v0, 0x7f100321

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->setTarget(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public fe()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 66
    const v0, 0x7f0900c9

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jp:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0900ca

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jq:Landroid/widget/Button;

    .line 68
    const v0, 0x7f0900cb

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jr:Landroid/widget/Button;

    .line 69
    const v0, 0x7f0900cc

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Js:Landroid/widget/Button;

    .line 70
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    .line 71
    const v0, 0x7f090101

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Ju:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0903ee

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jv:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jw:Landroid/view/SurfaceView;

    .line 74
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jw:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jw:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    return-void
.end method

.method public ff()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jq:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jr:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Js:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Ju:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 81
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Ju:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public mt()V
    .locals 2

    .line 136
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09010e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 137
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mt()V

    .line 138
    return-void
.end method

.method public mu()V
    .locals 2

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09010e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 143
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mu()V

    .line 144
    return-void
.end method

.method public mv()V
    .locals 0

    .line 148
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->mv()V

    .line 149
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onClick(Landroid/view/View;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090101

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gr()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    const-string p1, "CameraTestActivity"

    const-string v0, "stop Record"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->stopRecording()V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    const v0, 0x7f100098

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gq()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    const-string p1, "CameraTestActivity"

    const-string v0, "start record"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jt:Landroid/widget/Button;

    const v0, 0x7f100099

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 113
    :pswitch_1
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->cW(I)V

    .line 114
    goto :goto_0

    .line 110
    :pswitch_2
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->cW(I)V

    .line 111
    goto :goto_0

    .line 107
    :pswitch_3
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->cW(I)V

    .line 108
    goto :goto_0

    .line 104
    :pswitch_4
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->cW(I)V

    .line 105
    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gu()V

    .line 132
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900c9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 225
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 227
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onPause()V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gt()V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 54
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 43
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 44
    const-string v0, "camera diagnosis"

    const-string v1, "triggered"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 214
    const-string p1, "CameraTestActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , width = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , height = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 201
    const-string p1, "CameraTestActivity"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->getNumberOfCameras()I

    move-result p1

    .line 203
    const-string v0, "CameraTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    if-lez p1, :cond_0

    .line 205
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jy:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->cW(I)V

    goto :goto_0

    .line 207
    :cond_0
    const-string p1, "CameraTestActivity"

    const-string v0, "surfaceCreated but not found camera"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    const p1, 0x7f100220

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 210
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 219
    const-string p1, "CameraTestActivity"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 221
    return-void
.end method
