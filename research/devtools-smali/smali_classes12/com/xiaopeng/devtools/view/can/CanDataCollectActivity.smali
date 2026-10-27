.class public Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "CanDataCollectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private AH:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private DT:Lcom/xiaopeng/xui/app/c;

.field private Fo:Landroid/widget/CheckBox;

.field private Fp:Landroid/widget/CheckBox;

.field private Fq:Landroid/widget/CheckBox;

.field private Fr:Landroid/widget/CheckBox;

.field private Fs:Landroid/widget/CheckBox;

.field private Ft:Landroid/widget/CheckBox;

.field private Fu:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity$1;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)Lcom/xiaopeng/devtools/system/a/b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->AH:Ljava/lang/String;

    return-object p1
.end method

.method private am(Z)V
    .locals 1

    .line 212
    new-instance v0, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$SyaQBHBcqhtcX4iNGME11uJG2kw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$SyaQBHBcqhtcX4iNGME11uJG2kw;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Z)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method private an(Z)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fo:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fp:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fq:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fr:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fs:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Ft:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 251
    return-void
.end method

.method private synthetic ao(Z)V
    .locals 1

    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    const v0, 0x7f1002cd

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    const v0, 0x7f1002df

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 218
    :goto_0
    return-void
.end method

.method private synthetic b(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rC:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->c(IZ)V

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    .line 163
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    return-void
.end method

.method private synthetic c(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rB:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->c(IZ)V

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    .line 159
    return-void
.end method

.method private synthetic d(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rA:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->c(IZ)V

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    .line 155
    return-void
.end method

.method private synthetic e(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rz:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->c(IZ)V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    .line 151
    return-void
.end method

.method private synthetic f(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ry:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->c(IZ)V

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    .line 147
    return-void
.end method

.method private synthetic g(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rx:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->c(IZ)V

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    .line 143
    return-void
.end method

.method public static synthetic lambda$-OUmqsmGbjB2s-bLzr_TcaKT3g8(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->f(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$Cch2HjwCT8Q9_54YqGS8VGtvg4g(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->d(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$EzpnZAFB_s3wc10nC8Xr04bcRZo(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->b(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$JbU9-Hw8qNgPnx9uNl8pewUbhAI(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mn()V

    return-void
.end method

.method public static synthetic lambda$PQXiYilGWjQ-XStgJhWO2Wb7P9k(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->g(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$SyaQBHBcqhtcX4iNGME11uJG2kw(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ao(Z)V

    return-void
.end method

.method public static synthetic lambda$aUgcHWFTs7-5zzz-EZNw4YUAMt8(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->p(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$mvDyXDtWWsZhukOxwd2FmrIH6gI(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->e(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$tkICQrBwcg1YW7RYaWaqL1_CL5I(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mm()V

    return-void
.end method

.method public static synthetic lambda$wnKhbLVGXVPABCFQ2sPGZ_ctNws(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->c(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private mj()V
    .locals 1

    .line 205
    new-instance v0, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$tkICQrBwcg1YW7RYaWaqL1_CL5I;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$tkICQrBwcg1YW7RYaWaqL1_CL5I;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method private mk()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->an(Z)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 227
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->an(Z)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    .line 230
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/c;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v2, 0x7f1003fe

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v1

    .line 234
    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const v1, 0x7f10011d

    .line 235
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$aUgcHWFTs7-5zzz-EZNw4YUAMt8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$aUgcHWFTs7-5zzz-EZNw4YUAMt8;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    const-string v1, ""

    .line 238
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 242
    :cond_2
    :goto_0
    return-void
.end method

.method private ml()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fq()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->AH:Ljava/lang/String;

    .line 255
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 256
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 254
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    return-void
.end method

.method private synthetic mm()V
    .locals 3

    .line 206
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001cb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    const v1, 0x7f1000bb

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 208
    return-void
.end method

.method private synthetic mn()V
    .locals 6

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->am(Z)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 181
    :cond_0
    const-string v1, "collect candata"

    const-string v2, "triggered"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fs()V

    .line 184
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->am(Z)V

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->AH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->AH:Ljava/lang/String;

    .line 188
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->AH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "canData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 190
    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/g;->cC(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rq:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 191
    const-string v2, "CanDataCollectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startServiceAsUser storagePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bT(I)V

    .line 193
    const-string v2, "storagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mj()V

    .line 199
    :goto_0
    return-void
.end method

.method private synthetic p(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fs()V

    .line 237
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 95
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->setContentView(I)V

    .line 96
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    .line 97
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->AH:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 99
    new-instance v0, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 101
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 102
    return-void
.end method

.method public fe()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 107
    const v0, 0x7f0901f8

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fo:Landroid/widget/CheckBox;

    .line 108
    const v0, 0x7f090198

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fp:Landroid/widget/CheckBox;

    .line 109
    const v0, 0x7f090087

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fq:Landroid/widget/CheckBox;

    .line 110
    const v0, 0x7f090155

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fr:Landroid/widget/CheckBox;

    .line 111
    const v0, 0x7f0901b0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fs:Landroid/widget/CheckBox;

    .line 112
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Ft:Landroid/widget/CheckBox;

    .line 113
    const v0, 0x7f09009d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    .line 114
    return-void
.end method

.method public ff()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fo:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$PQXiYilGWjQ-XStgJhWO2Wb7P9k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$PQXiYilGWjQ-XStgJhWO2Wb7P9k;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fp:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$-OUmqsmGbjB2s-bLzr_TcaKT3g8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$-OUmqsmGbjB2s-bLzr_TcaKT3g8;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fq:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$mvDyXDtWWsZhukOxwd2FmrIH6gI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$mvDyXDtWWsZhukOxwd2FmrIH6gI;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fr:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$Cch2HjwCT8Q9_54YqGS8VGtvg4g;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$Cch2HjwCT8Q9_54YqGS8VGtvg4g;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fs:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$wnKhbLVGXVPABCFQ2sPGZ_ctNws;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$wnKhbLVGXVPABCFQ2sPGZ_ctNws;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Ft:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$EzpnZAFB_s3wc10nC8Xr04bcRZo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$EzpnZAFB_s3wc10nC8Xr04bcRZo;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fu:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public lJ()V
    .locals 4

    .line 118
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fo:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v2, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rx:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bU(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fp:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v2, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ry:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bU(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fq:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v2, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rz:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bU(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fr:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v2, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rA:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bU(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fs:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v2, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rB:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bU(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Ft:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->vg:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    sget-object v2, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rC:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->bU(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fo:Landroid/widget/CheckBox;

    const-string v1, "ICAN"

    invoke-static {v1}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fp:Landroid/widget/CheckBox;

    const-string v1, "DCAN"

    invoke-static {v1}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fq:Landroid/widget/CheckBox;

    const-string v1, "BCAN"

    invoke-static {v1}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fr:Landroid/widget/CheckBox;

    const-string v1, "CCAN"

    invoke-static {v1}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Fs:Landroid/widget/CheckBox;

    const-string v1, "ECAN"

    invoke-static {v1}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->Ft:Landroid/widget/CheckBox;

    const-string v1, "ADCAN"

    invoke-static {v1}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v3

    nop

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->ml()V

    .line 134
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mk()V

    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09009d

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/utils/u;->lD()Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    return-void

    .line 175
    :cond_1
    new-instance p1, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$JbU9-Hw8qNgPnx9uNl8pewUbhAI;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/can/-$$Lambda$CanDataCollectActivity$JbU9-Hw8qNgPnx9uNl8pewUbhAI;-><init>(Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;)V

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 202
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 261
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 262
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    const-string p1, "CanDataCollectActivity"

    const-string v0, "POST_CAN_COLLECT_STATUS_CHANGED"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/can/CanDataCollectActivity;->mk()V

    .line 80
    nop

    .line 84
    :goto_0
    return-void
.end method
