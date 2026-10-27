.class public Laqb;
.super Ljava/lang/Object;
.source "LoginFlowDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Laqa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqb$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Laqe;

.field private c:Lcom/xiaopeng/xui/app/XDialog;

.field private d:Landroid/graphics/Bitmap;

.field private e:Laqc;

.field private f:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

.field private g:Lcom/xiaopeng/musicradio/utils/y$a;


# direct methods
.method private synthetic b(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Laqb;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 3

    const/high16 v0, 0x43700000    # 240.0f

    .line 148
    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XuiUtils;->dip2px(F)I

    move-result v0

    iget-object v1, p0, Laqb;->d:Landroid/graphics/Bitmap;

    const/high16 v2, -0x1000000

    invoke-static {p1, v0, v2, v1}, Lapu;->a(Ljava/lang/String;IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 149
    new-instance v0, L-$$Lambda$aqb$mD2vZ6xorOfKZ5Y0oW_66Dh7Izg;

    invoke-direct {v0, p0, p1}, L-$$Lambda$aqb$mD2vZ6xorOfKZ5Y0oW_66Dh7Izg;-><init>(Laqb;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()V
    .locals 2

    .line 307
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/y;->a()Lcom/xiaopeng/musicradio/utils/y;

    move-result-object v0

    iget-object v1, p0, Laqb;->g:Lcom/xiaopeng/musicradio/utils/y$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/y;->a(Lcom/xiaopeng/musicradio/utils/y$a;)V

    return-void
.end method

.method public static synthetic lambda$mD2vZ6xorOfKZ5Y0oW_66Dh7Izg(Laqb;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Laqb;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic lambda$vbozFJjtq3XCEbawpXty0f7JFb8(Laqb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Laqb;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "LoginFlowDialog"

    const-string v1, "onCloseDialog"

    .line 295
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginConfirmFailed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginFlowDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x23

    .line 260
    invoke-virtual {p0, p1}, Laqb;->b(I)V

    return-void
.end method

.method public varargs a(I[Ljava/lang/String;)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHttpResponseEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Laqb;->c()V

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {p0}, Laqb;->g()V

    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {p0}, Laqb;->f()V

    goto :goto_1

    .line 232
    :cond_3
    array-length p1, p2

    if-lez p1, :cond_4

    const/4 p1, 0x0

    aget-object p1, p2, p1

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 233
    :goto_0
    invoke-virtual {p0, p1}, Laqb;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "LoginFlowDialog"

    const-string v1, "showQrLoginDialog"

    .line 155
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Laqb;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Lapw;->a()Lapw;

    move-result-object v0

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_change_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapw;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_change:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Lapw;->a()Lapw;

    move-result-object v0

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->text_qrcode_login_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapw;->a(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_begin:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 166
    :goto_0
    invoke-virtual {p0}, Laqb;->b()V

    .line 167
    iget-object v0, p0, Laqb;->e:Laqc;

    invoke-virtual {v0, p1}, Laqc;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginConfirmSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoginFlowDialog"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 113
    iget-object v0, p0, Laqb;->b:Laqe;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Laqe;->a(Laqa;)V

    .line 116
    :cond_0
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    const/4 v0, 0x1

    .line 117
    invoke-static {v0}, Laqd;->a(Z)V

    .line 118
    invoke-direct {p0}, Laqb;->i()V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFragmentEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x25

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Laqb;->e()V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Laqb;->f()V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0}, Laqb;->d()V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 147
    new-instance v0, L-$$Lambda$aqb$vbozFJjtq3XCEbawpXty0f7JFb8;

    invoke-direct {v0, p0, p1}, L-$$Lambda$aqb$vbozFJjtq3XCEbawpXty0f7JFb8;-><init>(Laqb;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "LoginFlowDialog"

    const-string v1, "showAccountSameDialog"

    .line 127
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_login_same:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 132
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_btn_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laqb;->f:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 133
    iget-object v0, p0, Laqb;->e:Laqc;

    invoke-virtual {v0}, Laqc;->a()V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQRCodeEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {p0}, Laqb;->g()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "LoginFlowDialog"

    const-string v1, "showRequestQrDialog"

    .line 138
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_begin:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 140
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_btn_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Laqb;->f:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 141
    invoke-virtual {p0}, Laqb;->b()V

    .line 142
    iget-object v0, p0, Laqb;->e:Laqc;

    invoke-virtual {v0}, Laqc;->b()V

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "LoginFlowDialog"

    const-string v1, "showQrLoggingDialog"

    .line 172
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_logging:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 174
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_btn_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Laqb;->f:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 175
    invoke-virtual {p0}, Laqb;->b()V

    .line 176
    iget-object v0, p0, Laqb;->e:Laqc;

    invoke-virtual {v0}, Laqc;->c()V

    return-void
.end method

.method public f()V
    .locals 3

    const-string v0, "LoginFlowDialog"

    const-string v1, "showQrLoginFailDialog"

    .line 181
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_network:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 186
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_btn_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Laqb;->f:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 187
    invoke-virtual {p0}, Laqb;->b()V

    .line 188
    iget-object v0, p0, Laqb;->e:Laqc;

    invoke-virtual {v0}, Laqc;->d()V

    return-void
.end method

.method public g()V
    .locals 3

    const-string v0, "LoginFlowDialog"

    const-string v1, "showQrLoginOvertimeDialog"

    .line 193
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_title_overtime:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    .line 198
    iget-object v0, p0, Laqb;->c:Lcom/xiaopeng/xui/app/XDialog;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->label_login_dialog_btn_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Laqb;->f:Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 199
    invoke-virtual {p0}, Laqb;->b()V

    .line 200
    iget-object v0, p0, Laqb;->e:Laqc;

    invoke-virtual {v0}, Laqc;->e()V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 224
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object v0

    invoke-virtual {v0}, Lbeb;->e()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqb;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFlowDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    if-ne p1, v0, :cond_0

    .line 80
    invoke-virtual {p0}, Laqb;->d()V

    :cond_0
    return-void
.end method
