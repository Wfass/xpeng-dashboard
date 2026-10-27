.class public Lcom/xiaopeng/xui/app/XLoadingDialog;
.super Landroid/app/Dialog;
.source "XLoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x50

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final TOP:I = 0x30


# instance fields
.field private mCloseView:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mMessageView:Landroid/widget/TextView;

.field private mOnTimeOutListener:Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

.field private mTimeOut:I

.field private mTimeOutCheck:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XLoadingDialog;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "xpui-XLoadingDialog"

    .line 248
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static show(Landroid/content/Context;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 124
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 94
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 2

    .line 142
    new-instance v0, Lcom/xiaopeng/xui/app/XLoadingDialog;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog_Loading:I

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 143
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->create()V

    .line 144
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setCancelable(Z)V

    .line 146
    invoke-virtual {v0, p3}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 147
    invoke-virtual {v0, p6}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setOnTimeOutListener(Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)V

    .line 148
    invoke-virtual {v0, p4}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setTimeOutCheck(Z)V

    .line 149
    invoke-virtual {v0, p5}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setTimeOut(I)V

    .line 150
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show()V

    return-object v0
.end method

.method public static show(Landroid/content/Context;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 1

    .line 109
    sget v0, Lcom/xiaopeng/xpui/R$string;->x_loading_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 1

    .line 68
    sget v0, Lcom/xiaopeng/xpui/R$string;->x_loading_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "dismiss"

    .line 213
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 157
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_loading_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 158
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_loading_dialog_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mMessageView:Landroid/widget/TextView;

    .line 159
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_loading_dialog_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    .line 160
    new-instance v2, Lcom/xiaopeng/xui/app/XLoadingDialog$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/app/XLoadingDialog$1;-><init>(Lcom/xiaopeng/xui/app/XLoadingDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setContentView(Landroid/view/View;)V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;->onTimeOut(Lcom/xiaopeng/xui/app/XLoadingDialog;)V

    :cond_0
    const-string v0, "time out"

    .line 222
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->log(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->dismiss()V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 177
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnTimeOutListener(Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mTimeOut:I

    return-void
.end method

.method public setTimeOutCheck(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mTimeOutCheck:Z

    if-nez p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setVertical(I)V
    .locals 1

    const/16 v0, 0x30

    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setVertical(II)V

    return-void
.end method

.method public setVertical(II)V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 241
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 242
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setVerticalTopDefault()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_loading_dialog_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setVertical(II)V

    return-void
.end method

.method public show()V
    .locals 3

    .line 203
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 204
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mTimeOutCheck:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mTimeOut:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
