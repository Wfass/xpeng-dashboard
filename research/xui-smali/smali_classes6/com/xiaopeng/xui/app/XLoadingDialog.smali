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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/app/XLoadingDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/app/XLoadingDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 248
    const-string/jumbo v0, "xpui-XLoadingDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static show(Landroid/content/Context;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "timeoutCheck"    # Z
    .param p3, "timeout"    # I
    .param p4, "timeOutListener"    # Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    .line 124
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 94
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p4, "timeoutCheck"    # Z
    .param p5, "timeout"    # I
    .param p6, "timeOutListener"    # Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    .line 142
    new-instance v0, Lcom/xiaopeng/xui/app/XLoadingDialog;

    sget v1, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog_Loading:I

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 143
    .local v0, "dialog":Lcom/xiaopeng/xui/app/XLoadingDialog;
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

    .line 151
    return-object v0
.end method

.method public static show(Landroid/content/Context;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeoutCheck"    # Z
    .param p2, "timeout"    # I
    .param p3, "timeOutListener"    # Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    .line 109
    sget v0, Lcom/xiaopeng/xpui/R$string;->x_loading_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZILcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancelable"    # Z
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 68
    sget v0, Lcom/xiaopeng/xpui/R$string;->x_loading_dialog_message:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xui/app/XLoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/xiaopeng/xui/app/XLoadingDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 212
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    const-string v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 157
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_loading_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "v":Landroid/view/View;
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_loading_dialog_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mMessageView:Landroid/widget/TextView;

    .line 159
    sget v2, Lcom/xiaopeng/xpui/R$id;->x_loading_dialog_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    .line 160
    iget-object v2, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    new-instance v3, Lcom/xiaopeng/xui/app/XLoadingDialog$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/app/XLoadingDialog$1;-><init>(Lcom/xiaopeng/xui/app/XLoadingDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setContentView(Landroid/view/View;)V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method

.method public run()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;->onTimeOut(Lcom/xiaopeng/xui/app/XLoadingDialog;)V

    .line 222
    :cond_0
    const-string v0, "time out"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->log(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->dismiss()V

    .line 224
    return-void
.end method

.method public setCancelable(Z)V
    .locals 2
    .param p1, "cancelable"    # Z

    .line 177
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mCloseView:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setOnTimeOutListener(Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;)V
    .locals 0
    .param p1, "timeOutListener"    # Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mOnTimeOutListener:Lcom/xiaopeng/xui/app/XLoadingDialog$OnTimeOutListener;

    .line 183
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0
    .param p1, "timeout"    # I

    .line 191
    iput p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mTimeOut:I

    .line 192
    return-void
.end method

.method public setTimeOutCheck(Z)V
    .locals 1
    .param p1, "timeoutCheck"    # Z

    .line 195
    iput-boolean p1, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mTimeOutCheck:Z

    .line 196
    iget-boolean v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mTimeOutCheck:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XLoadingDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    return-void
.end method

.method public setVertical(I)V
    .locals 1
    .param p1, "yOffset"    # I

    .line 234
    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/app/XLoadingDialog;->setVertical(II)V

    .line 235
    return-void
.end method

.method public setVertical(II)V
    .locals 2
    .param p1, "gravity"    # I
    .param p2, "yOffset"    # I

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 239
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 241
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 242
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 243
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 245
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
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

    .line 231
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

    .line 208
    :cond_0
    return-void
.end method
