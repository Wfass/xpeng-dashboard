.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
.super Landroid/app/Dialog;
.source "SystemLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x50

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final TOP:I = 0x30

.field private static dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;


# instance fields
.field private mCloseView:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mMessageView:Landroid/widget/TextView;

.field private mOnTimeOutListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

.field private mTimeOut:I

.field private mTimeOutCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "xuiservice-XLoadingDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static show(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 55
    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;IZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "screenId"    # I
    .param p3, "cancelable"    # Z
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p5, "timeoutCheck"    # Z
    .param p6, "timeout"    # I
    .param p7, "timeOutListener"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    .line 75
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dismiss()V

    .line 78
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    const v1, 0x7f0f01f1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    .line 79
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-static {v0, p2}, Lcom/xiaopeng/xui/utils/XDialogUtils;->setScreenId(Landroid/app/Dialog;I)V

    .line 80
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 83
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->create()V

    .line 84
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 85
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0, p3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setCancelable(Z)V

    .line 86
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0, p4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 87
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0, p7}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setOnTimeOutListener(Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)V

    .line 88
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0, p5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setTimeOutCheck(Z)V

    .line 89
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0, p6}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setTimeOut(I)V

    .line 90
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show()V

    .line 91
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "timeoutCheck"    # Z
    .param p3, "timeout"    # I
    .param p4, "timeOutListener"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    .line 67
    const/4 v0, 0x0

    move-object v4, v0

    check-cast v4, Landroid/content/DialogInterface$OnCancelListener;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 59
    const/4 v0, 0x0

    move-object v7, v0

    check-cast v7, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "timeoutCheck"    # Z
    .param p5, "timeout"    # I
    .param p6, "timeOutListener"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    .line 71
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;IZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeoutCheck"    # Z
    .param p2, "timeout"    # I
    .param p3, "timeOutListener"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    .line 63
    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZILcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelable"    # Z
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 51
    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;

    .line 146
    const-string v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->log(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c007a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0901d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mMessageView:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0901d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    new-instance v3, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setContentView(Landroid/view/View;)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;->onTimeOut(Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;)V

    .line 155
    :cond_0
    const-string v0, "time out"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->log(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->dismiss()V

    .line 157
    return-void
.end method

.method public setCancelable(Z)V
    .locals 2
    .param p1, "cancelable"    # Z

    .line 114
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public setOnTimeOutListener(Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;)V
    .locals 0
    .param p1, "timeOutListener"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog$OnTimeOutListener;

    .line 120
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 123
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mTimeOut:I

    .line 124
    return-void
.end method

.method public setTimeOutCheck(Z)V
    .locals 1
    .param p1, "timeoutCheck"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mTimeOutCheck:Z

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mTimeOutCheck:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setVertical(I)V
    .locals 1
    .param p1, "yOffset"    # I

    .line 164
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setVertical(II)V

    .line 165
    return-void
.end method

.method public setVertical(II)V
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "yOffset"    # I

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 169
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 171
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 172
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public setVerticalTopDefault()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->setVertical(II)V

    .line 161
    return-void
.end method

.method public show()V
    .locals 3

    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 136
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mTimeOutCheck:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/SystemLoadingDialog;->mTimeOut:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_0
    return-void
.end method
