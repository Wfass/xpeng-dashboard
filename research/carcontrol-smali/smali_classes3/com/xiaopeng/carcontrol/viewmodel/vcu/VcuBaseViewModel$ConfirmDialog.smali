.class public Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;
.super Ljava/lang/Object;
.source "VcuBaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmDialog"
.end annotation


# instance fields
.field private mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mDismissReason:I

.field private mIsGuiLaunch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 424
    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDismissReason:I

    .line 425
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mIsGuiLaunch:Z

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method private createConfirmDialog(IILjava/util/function/Consumer;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "message",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/xiaopeng/xui/app/XDialog;"
        }
    .end annotation

    .line 432
    new-instance p3, Lcom/xiaopeng/xui/app/XDialog;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const/16 p2, 0xbc0

    .line 433
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sp_dialog_confirm:I

    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ConfirmDialog$Fug-OcLwX3eJAqK574t9TaMGqrw;

    invoke-direct {p3, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ConfirmDialog$Fug-OcLwX3eJAqK574t9TaMGqrw;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;)V

    .line 434
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    new-instance p3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ConfirmDialog$-tX_RyfO0zEY36CigDM4-6XCbDk;

    invoke-direct {p3, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ConfirmDialog$-tX_RyfO0zEY36CigDM4-6XCbDk;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;)V

    .line 440
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    const/4 p2, 0x0

    .line 446
    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setCancelable(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setCanceledOnTouchOutside(Z)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ConfirmDialog$zWrU8flpQsAq7_GhwbSK9Qg2sSo;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$VcuBaseViewModel$ConfirmDialog$zWrU8flpQsAq7_GhwbSK9Qg2sSo;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public build(IILjava/util/function/Consumer;)Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "message",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;"
        }
    .end annotation

    .line 428
    iput-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mCallback:Ljava/util/function/Consumer;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->createConfirmDialog(IILjava/util/function/Consumer;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method public cancelClick()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->x_dialog_button2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public confirmClick()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$id;->x_dialog_button1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    const/4 v0, 0x0

    .line 462
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    :cond_0
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/xui/app/XDialog;->initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$createConfirmDialog$0$VcuBaseViewModel$ConfirmDialog(Lcom/xiaopeng/xui/app/XDialog;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialog",
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    .line 435
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDismissReason:I

    .line 436
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mCallback:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 437
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$createConfirmDialog$1$VcuBaseViewModel$ConfirmDialog(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    const/4 p1, 0x1

    .line 441
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDismissReason:I

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mCallback:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 443
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$createConfirmDialog$2$VcuBaseViewModel$ConfirmDialog(Landroid/content/DialogInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 447
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "confirm dialog dismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDismissReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGuiLaunch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mIsGuiLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mIsGuiLaunch:Z

    if-nez p1, :cond_1

    .line 449
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object p1

    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDismissReason:I

    if-nez v0, :cond_0

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->drive_mode_sp_dialog_confirm:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->btn_cancel:I

    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->sendText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setGuiLaunch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isGuiLaunch"
        }
    .end annotation

    .line 487
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mIsGuiLaunch:Z

    return-void
.end method

.method public show()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    :cond_0
    return-void
.end method

.method public updateCallBack(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuBaseViewModel$ConfirmDialog;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method
