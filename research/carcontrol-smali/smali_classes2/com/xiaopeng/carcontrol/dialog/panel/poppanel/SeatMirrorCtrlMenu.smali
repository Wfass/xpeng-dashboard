.class public Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;
.super Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;
.source "SeatMirrorCtrlMenu.java"


# static fields
.field private static final MEMORY_NEW_COUNT_MAX:I = 0xa


# instance fields
.field private groupName:Ljava/lang/String;

.field private isLogin:Z

.field private isPreLogin:Z

.field private mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field mCarSpeedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

.field mCreateSyncGroupObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

.field private mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;-><init>()V

    .line 242
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$cpM-pGH52GhEgh2IdIM0Nha8Q4g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$cpM-pGH52GhEgh2IdIM0Nha8Q4g;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCarSpeedObserver:Landroidx/lifecycle/Observer;

    .line 251
    new-instance v0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$L68LWEuKK2VFct9_OOajNBwGNSU;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$L68LWEuKK2VFct9_OOajNBwGNSU;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCreateSyncGroupObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method private checkChairMovable(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVuiAction"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 219
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f1103a1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->vuiFeedback(ILandroid/view/View;)V

    :cond_0
    return v1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvDoorOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11039e

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    if-eqz p1, :cond_2

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->vuiFeedback(ILandroid/view/View;)V

    :cond_2
    return v1

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvSeatOccupied()Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const v2, 0x7f11039f

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    if-eqz p1, :cond_4

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, v2, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->vuiFeedback(ILandroid/view/View;)V

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getDropdownMenuGroupId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d005b

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, "SeatPopPanelMenuDialog"

    return-object v0
.end method

.method protected isEqulPreStatus()Z
    .locals 2

    .line 308
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isPreLogin:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$5$SeatMirrorCtrlMenu(Ljava/lang/Float;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "curSpeed"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$new$6$SeatMirrorCtrlMenu(Ljava/lang/Integer;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, -0x1

    const v1, 0x7f110320

    const v2, 0x7f11006c

    const v3, 0x7f11031f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto/16 :goto_2

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XButton;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f1102c7

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 289
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatDrvRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 278
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 281
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v0, 0x7f1102c8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    goto/16 :goto_2

    .line 260
    :cond_4
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isPreLogin:Z

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 266
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-boolean v6, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz v6, :cond_5

    move v0, v4

    :cond_5
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 268
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz p1, :cond_6

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 271
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    .line 273
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 274
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_7
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 293
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    aput-object v3, v0, v4

    .line 294
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 295
    :cond_9
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    :goto_1
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 297
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 298
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v5}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 299
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public synthetic lambda$onInitView$0$SeatMirrorCtrlMenu(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->dismiss()V

    return-void
.end method

.method public synthetic lambda$onInitView$1$SeatMirrorCtrlMenu(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatPosIdx()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const v0, 0x7f110335

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->memoryDrvSeatData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatDrvRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onInitView$2$SeatMirrorCtrlMenu(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x0

    .line 98
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->checkChairMovable(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 101
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const v1, 0x7f110329

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatPosIdx()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->restoreDrvSeatPos()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSeatDrvRestoreSuccess()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$onInitView$3$SeatMirrorCtrlMenu(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentHabitSum()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " habitSum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XButton;->isPerformVuiAction()Z

    move-result v0

    const v2, 0x7f110319

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    .line 121
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p1

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 128
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    const v1, 0x7f110318

    .line 129
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestCreateNewSyncGroup()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$onInitView$4$SeatMirrorCtrlMenu(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    const-string v1, ""

    .line 142
    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    .line 144
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object p1

    const-string v0, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    const/16 v1, 0xbc0

    .line 145
    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->dismiss()V

    return-void
.end method

.method protected needInitVm()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onInitView()V
    .locals 3

    .line 72
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInitView()V

    const v0, 0x7f0a00e3

    .line 73
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

    const v0, 0x7f0a018f

    .line 74
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$8VKPyhvyAvZLUfNiJR6Yi8DVfeg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$8VKPyhvyAvZLUfNiJR6Yi8DVfeg;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035e

    .line 77
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    const v0, 0x7f0a0360

    .line 78
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    const v0, 0x7f0a02e8

    .line 80
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 81
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    const v0, 0x7f0a02e1

    .line 82
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 83
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    const v0, 0x7f0a02d4

    .line 84
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$pXQ4GzWp6W-007DTzcDU0hPOO1E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$pXQ4GzWp6W-007DTzcDU0hPOO1E;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$XV4BWt4IDAFSj_EyrZYmglyMZsg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$XV4BWt4IDAFSj_EyrZYmglyMZsg;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02bf

    .line 112
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    .line 113
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v2, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$O0r7BnGugcvDCn7-LBTlQQClICE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$O0r7BnGugcvDCn7-LBTlQQClICE;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a023b

    .line 136
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    .line 138
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 139
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    .line 140
    new-instance v1, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$xxhWck2YWRwSK5wQlbxOzxvG5C0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/-$$Lambda$SeatMirrorCtrlMenu$xxhWck2YWRwSK5wQlbxOzxvG5C0;-><init>(Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onInitViewModel()V
    .locals 2

    .line 55
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 57
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/account/IAccountViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    .line 154
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getHitVuiElement()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getId()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a02e1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 155
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->checkChairMovable(Z)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 157
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRefresh()V
    .locals 5

    .line 175
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->onRefresh()V

    .line 176
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isPreLogin:Z

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->checkLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveBtn:Lcom/xiaopeng/xui/widget/XButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mResetBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mDoneTv:Lcom/xiaopeng/xui/widget/XButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz v4, :cond_1

    move v3, v1

    :cond_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCloseBtnBg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setEnabled(Z)V

    .line 187
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCurrentSyncGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mSaveAsNewBtn:Lcom/xiaopeng/xui/widget/XButton;

    const v3, 0x7f11006c

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isLogin:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f110320

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->groupName:Ljava/lang/String;

    aput-object v4, v2, v1

    .line 194
    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const v1, 0x7f11031f

    .line 195
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    :goto_2
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->requestFocus()Z

    return-void
.end method

.method protected onRegisterLiveData()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCarSpeedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCreateSyncGroupData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCreateSyncGroupObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onShowTimeUpdate(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x44c

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mTimeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_1

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const p2, 0x7f11035e

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected unRegisterLiveData()V
    .locals 2

    .line 168
    invoke-super {p0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/AbstractPopPanelMenu;->unRegisterLiveData()V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeedData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCarSpeedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mAccountVm:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->getCreateSyncGroupData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/poppanel/SeatMirrorCtrlMenu;->mCreateSyncGroupObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
