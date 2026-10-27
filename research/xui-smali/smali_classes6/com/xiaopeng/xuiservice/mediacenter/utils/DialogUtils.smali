.class public Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaDialogUtils"

.field private static userCheckBox:Lcom/xiaopeng/xui/widget/XCheckBox;

.field private static xuiDialog:Lcom/xiaopeng/xui/app/XDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    .line 21
    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->userCheckBox:Lcom/xiaopeng/xui/widget/XCheckBox;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xui/app/XDialog;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xui/app/XDialog;)Lcom/xiaopeng/xui/app/XDialog;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XDialog;

    .line 18
    sput-object p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    return-object p0
.end method

.method static synthetic access$100()Lcom/xiaopeng/xui/widget/XCheckBox;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->userCheckBox:Lcom/xiaopeng/xui/widget/XCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/widget/XCheckBox;)Lcom/xiaopeng/xui/widget/XCheckBox;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XCheckBox;

    .line 18
    sput-object p0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->userCheckBox:Lcom/xiaopeng/xui/widget/XCheckBox;

    return-object p0
.end method

.method public static dismissSeizeDialog(Z)V
    .locals 3
    .param p0, "confirm"    # Z

    .line 80
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->userCheckBox:Lcom/xiaopeng/xui/widget/XCheckBox;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 82
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_media_no_seize_dialog"

    sget-object v2, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->userCheckBox:Lcom/xiaopeng/xui/widget/XCheckBox;

    .line 83
    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XCheckBox;->isChecked()Z

    move-result v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    .line 87
    :cond_1
    return-void
.end method

.method public static showSeizeDialog(ILcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;)V
    .locals 4
    .param p0, "displayId"    # I
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;

    .line 23
    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils;->xuiDialog:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    const-string v0, "MediaDialogUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show dialog msg displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    if-nez p0, :cond_1

    .line 28
    const v0, 0x7f0e004c

    goto :goto_0

    :cond_1
    const v0, 0x7f0e004f

    .line 29
    .local v0, "msgId":I
    :goto_0
    if-nez p0, :cond_2

    .line 30
    const v1, 0x7f0e004a

    goto :goto_1

    :cond_2
    const v1, 0x7f0e004d

    .line 31
    .local v1, "confirmId":I
    :goto_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;

    invoke-direct {v3, v0, v1, p1, p0}, Lcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$1;-><init>(IILcom/xiaopeng/xuiservice/mediacenter/utils/DialogUtils$OnDialogConfirm;I)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
