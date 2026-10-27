.class public abstract Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "LluSettingBaseDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LluSettingBaseDialog"


# instance fields
.field private mAutoVolumeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field private mAutoWindowSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

.field protected mContext:Landroid/content/Context;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dialogViewStyle"
        }
    .end annotation

    .line 32
    sget p2, Lcom/xiaopeng/lludancemanager/R$style;->XDialogView_Large:I

    invoke-static {}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->Builder()Lcom/xiaopeng/xui/app/XDialog$Parameters;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog$Parameters;->setFullScreen(Z)Lcom/xiaopeng/xui/app/XDialog$Parameters;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/XDialog$Parameters;)V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->initView(Landroid/content/Context;)V

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->initCustomDialog(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->setListener()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->getLayout(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mRootView:Landroid/view/View;

    .line 55
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_auto_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->x_list_action_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoVolumeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mRootView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_double_confirm_dialog_auto_window:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->x_list_action_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XSwitch;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoWindowSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method


# virtual methods
.method public getAutoVolumeSwitch()Lcom/xiaopeng/xui/widget/XSwitch;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoVolumeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    return-object v0
.end method

.method public getAutoWindowSwitch()Lcom/xiaopeng/xui/widget/XSwitch;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoWindowSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    return-object v0
.end method

.method abstract getLayout(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method protected initCustomDialog(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoVolumeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLluAutoVolume()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoWindowSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getLluAutoWindow()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoVolumeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-ne p1, v0, :cond_0

    .line 64
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLluAutoVolume(Z)V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoVolumeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->setChecked(Z)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoWindowSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    if-ne p1, v0, :cond_1

    .line 67
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setLluAutoWindow(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoWindowSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluSettingBaseDialog;->mAutoVolumeSwitch:Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
