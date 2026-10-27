.class public Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;
.super Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;
.source "TrailerModePanel.java"


# instance fields
.field private faultIcon:Landroid/graphics/drawable/Drawable;

.field private mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mTrailerHookCloseDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mTrailerHookItem:Lcom/xiaopeng/xui/widget/XListItem;

.field private mTrailerHookOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mTrailerHookTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTrailerModeItem:Lcom/xiaopeng/xui/widget/XListItem;

.field private mTrailerModeOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mTtmFaultDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private ttmStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;-><init>()V

    return-void
.end method

.method private showTrailHookCloseDialog()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookCloseDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1103ee

    .line 209
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f1103ef

    .line 210
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11005e

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110061

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$ERXBhxcnT-lI_YiPvr3ybT1lPzA;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$ERXBhxcnT-lI_YiPvr3ybT1lPzA;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookCloseDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x800

    .line 216
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookCloseDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookCloseDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    const-string v3, "TrailerHookCloseConfirmDialog"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookCloseDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_1
    return-void
.end method

.method private showTrailHookOpenConfirmDialog()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1103f9

    .line 192
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f1103f2

    .line 193
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11005e

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110061

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$Lori9OYctwlC1TyzguXGJ94dav8;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$Lori9OYctwlC1TyzguXGJ94dav8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    .line 195
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x800

    .line 198
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    const-string v3, "TrailerHookOpenConfirmDialog"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_1
    return-void
.end method

.method private showTrailerModeOpenConfirmDialog()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1103ff

    .line 227
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110401

    .line 228
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11005e

    const/4 v2, 0x0

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110062

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$e1lQeIZzHTgFERe8fHGMCh3AVnY;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$e1lQeIZzHTgFERe8fHGMCh3AVnY;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x800

    .line 254
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    const-string v3, "TrailerModeOpenConfirmDialog"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeOpenConfirmDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_1
    return-void
.end method

.method private showTtmFaultDialog()V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTtmFaultDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1103f8

    .line 265
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f1103f7

    .line 266
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f11005e

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    const v1, 0x7f110069

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$xKvxgB-VePgzHmj6921YHDi9h5k;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$xKvxgB-VePgzHmj6921YHDi9h5k;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTtmFaultDialog:Lcom/xiaopeng/xui/app/XDialog;

    const/16 v1, 0x800

    .line 278
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTtmFaultDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTtmFaultDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    const-string v3, "TrailerHookFaultDialog"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTtmFaultDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_1
    return-void
.end method

.method private updateTrailerHookStatus(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ttmStatus",
            "trailerMode",
            "showTips"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ttmStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "trailerMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_7

    .line 290
    sget-object v0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$TrailerHitchStatus:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f1103f9

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1103fc

    .line 312
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookTitle(Ljava/lang/String;Z)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setEnabled(Z)V

    if-eqz p3, :cond_5

    .line 316
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->showTtmFaultDialog()V

    goto :goto_0

    :cond_1
    const p3, 0x7f1103f5

    .line 307
    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookTitle(Ljava/lang/String;Z)V

    .line 308
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 309
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const p3, 0x7f1103f0

    .line 302
    invoke-static {p3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookTitle(Ljava/lang/String;Z)V

    .line 303
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 304
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setEnabled(Z)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookTitle(Ljava/lang/String;Z)V

    .line 298
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 299
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setEnabled(Z)V

    goto :goto_0

    .line 292
    :cond_4
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookTitle(Ljava/lang/String;Z)V

    .line 293
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 294
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p3, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->setEnabled(Z)V

    .line 322
    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method private updateTrailerHookTitle(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "ttmFault"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const p2, 0x7f08028f

    .line 329
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->faultIcon:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x1e

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p2, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->faultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1, p1, v1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawablePadding(I)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, p1, p1, p1, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d0069

    return v0
.end method

.method protected getPanelHeight()I
    .locals 1

    const v0, 0x7f0701c4

    return v0
.end method

.method protected getPanelWidth()I
    .locals 1

    const v0, 0x7f0701c5

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "TrailerHookDialog"

    return-object v0
.end method

.method public synthetic lambda$onInitView$0$TrailerModePanel(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->ttmStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getCdcuTrailerModeStatus()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookStatus(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;ZZ)V

    return-void
.end method

.method public synthetic lambda$onInitView$1$TrailerModePanel(Landroid/view/View;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 121
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSystemError()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const p2, 0x7f1103fe

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->vuiFeedbackClick(ILandroid/view/View;)V

    .line 123
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->ttmStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Fault:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne p1, v1, :cond_3

    .line 127
    invoke-static {}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->hide()V

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->showTtmFaultDialog()V

    return v0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq p1, v1, :cond_4

    .line 132
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const p2, 0x7f1103fd

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->vuiFeedbackClick(ILandroid/view/View;)V

    .line 133
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    :cond_4
    if-eqz p2, :cond_6

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmDenormalizeStatus()Z

    move-result p1

    if-nez p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const p2, 0x7f1103ed

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->vuiFeedbackClick(ILandroid/view/View;)V

    .line 139
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    .line 142
    :cond_5
    invoke-static {}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->hide()V

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->showTrailHookOpenConfirmDialog()V

    goto :goto_1

    .line 145
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmLampConnectStatus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const p2, 0x7f1103f6

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->vuiFeedbackClick(ILandroid/view/View;)V

    .line 147
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    .line 150
    :cond_7
    invoke-static {}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->hide()V

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->showTrailHookCloseDialog()V

    :goto_1
    return v0
.end method

.method public synthetic lambda$onInitView$2$TrailerModePanel(Landroid/view/View;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->isVuiAction(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 161
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTsmFaultStatus()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsFaultStatus()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 167
    invoke-static {}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->hide()V

    .line 168
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->showTrailerModeOpenConfirmDialog()V

    return v0

    .line 171
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne p1, p2, :cond_4

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setTrailerModeStatus(Z)V

    return v1

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const p2, 0x7f1103fd

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->vuiFeedbackClick(ILandroid/view/View;)V

    .line 176
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0

    .line 162
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const p2, 0x7f1103fe

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->vuiFeedbackClick(ILandroid/view/View;)V

    .line 163
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v0
.end method

.method public synthetic lambda$onInitView$3$TrailerModePanel(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    return-void
.end method

.method public synthetic lambda$onInitView$4$TrailerModePanel(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isErr"
        }
    .end annotation

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getCdcuTrailerModeStatus()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookStatus(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;ZZ)V

    return-void
.end method

.method public synthetic lambda$showTrailHookCloseDialog$6$TrailerModePanel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setTtmSwitchStatusForUI(Z)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setTrailerModeStatus(Z)V

    return-void
.end method

.method public synthetic lambda$showTrailHookOpenConfirmDialog$5$TrailerModePanel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 196
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setTtmSwitchStatusForUI(Z)V

    return-void
.end method

.method public synthetic lambda$showTrailerModeOpenConfirmDialog$7$TrailerModePanel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsEngineerMode()Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    move-result-object p1

    .line 232
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq p2, v0, :cond_0

    .line 233
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1103fd

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_2

    .line 234
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object p2

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;->Open:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    if-eq p2, v0, :cond_1

    .line 235
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1103fa

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto/16 :goto_2

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspFault()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsFaultStatus()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTsmFaultStatus()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 238
    :cond_2
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->MAINTENANCE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    if-ne p2, p1, :cond_3

    .line 239
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1103f4

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_2

    .line 240
    :cond_3
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->CAMPING:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    if-ne p2, p1, :cond_4

    .line 241
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1103f3

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_2

    .line 242
    :cond_4
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;->TRANSPORT:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsEngineerMode;

    if-ne p2, p1, :cond_5

    .line 243
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f110119

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_2

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsLockModeStatus()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsHoistModeSwitchStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    .line 247
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getNewDriveArchXPedalMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 248
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f110402

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 250
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setTrailerModeStatus(Z)V

    .line 251
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_2

    .line 245
    :cond_8
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f110118

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_2

    .line 237
    :cond_9
    :goto_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1103fe

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$showTtmFaultDialog$8$TrailerModePanel(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "xDialog",
            "i"
        }
    .end annotation

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq p1, p2, :cond_0

    .line 270
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const p2, 0x7f1103fd

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmLampConnectStatus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 272
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    const p2, 0x7f1103f6

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->resetTtmSwitchStatus()V

    :goto_0
    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 3

    const v0, 0x7f0a0374

    .line 98
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookItem:Lcom/xiaopeng/xui/widget/XListItem;

    const v1, 0x7f0a03f8

    .line 99
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 100
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addCanVoiceControlProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const v2, 0x7f1103f9

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiLabel(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookItem:Lcom/xiaopeng/xui/widget/XListItem;

    const v2, 0x7f0a0403

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a0375

    .line 107
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XListItem;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeItem:Lcom/xiaopeng/xui/widget/XListItem;

    .line 108
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 109
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addCanVoiceControlProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    const v1, 0x7f1103ff

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setVuiLabel(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerHitchStatus()Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->ttmStatus:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getCdcuTrailerModeStatus()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->updateTrailerHookStatus(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;ZZ)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSwitchData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$9n_pFRvX5TBuF7tdbgzwWIvc0cI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$9n_pFRvX5TBuF7tdbgzwWIvc0cI;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerHookSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$vVbMFvDKr4TUDbmk3rSHTGiRlRE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$vVbMFvDKr4TUDbmk3rSHTGiRlRE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mTrailerModeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$KX13ocPRlvGx8T-VnJhwXe8nQyc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$KX13ocPRlvGx8T-VnJhwXe8nQyc;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$eUE2ZE_-EM0u8zSV9xPtUlIwYP8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$eUE2ZE_-EM0u8zSV9xPtUlIwYP8;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTtmSysErrData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$X4MUnuzZSQQbbvBSJS5Hv_KBfiM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$X4MUnuzZSQQbbvBSJS5Hv_KBfiM;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 86
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mChassisViewModel:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 87
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 0

    .line 92
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/AbstractControlPanel;->onRegisterLiveData()V

    return-void
.end method
