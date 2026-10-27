.class public Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "XpilotExamDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;
    }
.end annotation


# static fields
.field private static final EXAM_URL_EXPIRED_TIME:I = 0x927c0

.field private static final QR_CODE_MARGIN:I = 0x1

.field private static final QR_CODE_SIZE:I = 0x140

.field private static final TAG:Ljava/lang/String; = "XpilotExamDialog"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDismissResId:I

.field private mErrorIcon:Landroid/widget/ImageView;

.field private mExamQrBitmap:Landroid/graphics/Bitmap;

.field private final mExamUrlExpireTask:Ljava/lang/Runnable;

.field private mIsExamMode:Z

.field private mListener:Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;

.field private mLoading:Lcom/xiaopeng/xui/widget/XLoading;

.field private mQrContent:Landroid/widget/ImageView;

.field private mRetryIcon:Landroid/widget/ImageView;

.field private mTaskId:J

.field private mTvContent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;)V

    .line 44
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->laa_exam_dismiss_dialog_tips:I

    iput v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mDismissResId:I

    const-wide/16 v0, 0x2

    .line 45
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mTaskId:J

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mIsExamMode:Z

    .line 54
    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$q_5Cs92ahS3sYtxogPg4bBrF4mo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$q_5Cs92ahS3sYtxogPg4bBrF4mo;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;)V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mExamUrlExpireTask:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mContext:Landroid/content/Context;

    const/16 v1, 0x800

    .line 61
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 63
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$layout;->dialog_exam_qr:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->bindView(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$RZkh5YcBEVikzDuB088vKBaNNIE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$RZkh5YcBEVikzDuB088vKBaNNIE;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->dialog_ngp_exam_qr_confirm:I

    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$bZ9sebJ7uZNiBh4jKUxE9B2zhVY;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$bZ9sebJ7uZNiBh4jKUxE9B2zhVY;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->setPositiveButton(ILcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    return-void
.end method

.method private bindView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 106
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->xl_qr_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mLoading:Lcom/xiaopeng/xui/widget/XLoading;

    .line 107
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->iv_qr_exam:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    .line 108
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->iv_qr_error:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mErrorIcon:Landroid/widget/ImageView;

    .line 109
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->iv_qr_refresh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mRetryIcon:Landroid/widget/ImageView;

    .line 110
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$id;->tv_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mTvContent:Landroid/widget/TextView;

    return-void
.end method

.method private showExamDialog()V
    .locals 3

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mIsExamMode:Z

    .line 235
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mContext:Landroid/content/Context;

    const-string v2, "XpilotExamDialogDialog"

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->show()V

    return-void
.end method

.method private showStudyDialog()V
    .locals 3

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mIsExamMode:Z

    .line 245
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mContext:Landroid/content/Context;

    const-string v2, "XpilotStudyDialogDialog"

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->show()V

    return-void
.end method

.method private toastDismissTips()V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mIsExamMode:Z

    if-nez v0, :cond_0

    const-string v0, "XpilotExamDialog"

    const-string v1, "Not exam mode,needn\'t toast!"

    .line 99
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mDismissResId:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method private updateDismissTips(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "passExam"
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 218
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ngp_exam_pass:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->ngp_exam_dismiss_dialog_tips:I

    :goto_0
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mDismissResId:I

    goto :goto_7

    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    goto :goto_5

    :cond_2
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x7

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    .line 224
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->apa_exam_pass:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->apa_exam_dismiss_dialog_tips:I

    :goto_1
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mDismissResId:I

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x6

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    if-eqz p3, :cond_6

    .line 226
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->cngp_exam_pass:I

    goto :goto_2

    :cond_6
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->cngp_exam_dismiss_dialog_tips:I

    :goto_2
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mDismissResId:I

    goto :goto_7

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    .line 222
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->mem_exam_pass:I

    goto :goto_4

    :cond_8
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->mem_exam_dismiss_dialog_tips:I

    :goto_4
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mDismissResId:I

    goto :goto_7

    :cond_9
    :goto_5
    if-eqz p3, :cond_a

    .line 220
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->laa_exam_pass:I

    goto :goto_6

    :cond_a
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->laa_exam_dismiss_dialog_tips:I

    :goto_6
    iput p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mDismissResId:I

    :cond_b
    :goto_7
    return-void
.end method


# virtual methods
.method public autoCloseDialog(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mIsExamMode:Z

    if-nez v0, :cond_0

    const-string p1, "XpilotExamDialog"

    const-string p2, "Not exam mode,ignore the auto close event\uff01"

    .line 86
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->updateDismissTips(JZ)V

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$new$0$XpilotExamDialog()V
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mTaskId:J

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->updateErrorState(J)V

    return-void
.end method

.method public synthetic lambda$new$1$XpilotExamDialog(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mExamQrBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/QrCodeUtils;->releaseQrBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->toastDismissTips()V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mExamUrlExpireTask:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;->dismissDialog()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$2$XpilotExamDialog(Lcom/xiaopeng/xui/app/XDialog;I)V
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

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$updateErrorState$3$XpilotExamDialog(JLandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "taskId",
            "v"
        }
    .end annotation

    .line 198
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;

    if-eqz p3, :cond_0

    .line 199
    invoke-interface {p3, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;->retry(J)V

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setExamDialogListener(Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mListener:Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog$ExamDialogListener;

    return-void
.end method

.method public showLoading(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 133
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mTaskId:J

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->updateDismissTips(JZ)V

    .line 135
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->dialog_ngp_exam_qr_title:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mLoading:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mTvContent:Landroid/widget/TextView;

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->dialog_ngp_exam_qr_tips:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->showExamDialog()V

    return-void
.end method

.method public showStudyDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "studyUrl",
            "title",
            "content"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show study dialog. url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpilotExamDialog"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    const/16 p2, 0x140

    const/4 v0, 0x1

    .line 121
    invoke-static {p1, p2, p2, v0}, Lcom/xiaopeng/carcontrol/util/QrCodeUtils;->createQRImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mExamQrBitmap:Landroid/graphics/Bitmap;

    .line 122
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mTvContent:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->showStudyDialog()V

    return-void
.end method

.method public updateErrorState(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskId"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->isShowing()Z

    move-result v0

    const-string v1, "XpilotExamDialog"

    if-nez v0, :cond_0

    const-string p1, "Dialog is dismiss,ignore the error."

    .line 186
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mIsExamMode:Z

    if-nez v0, :cond_1

    const-string p1, "Dialog not exam mode,ignore the error."

    .line 190
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mErrorIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mRetryIcon:Landroid/widget/ImageView;

    new-instance v2, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$eJ4wx2lrF9CGzzJAWWJpDndkFhc;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$XpilotExamDialog$eJ4wx2lrF9CGzzJAWWJpDndkFhc;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;J)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    invoke-direct {p0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->updateDismissTips(JZ)V

    return-void
.end method

.method public updateExamUrl(Ljava/lang/String;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "examUrl",
            "taskId"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->isShowing()Z

    move-result v0

    const-string v1, "XpilotExamDialog"

    if-nez v0, :cond_0

    const-string p1, "Dialog is dismiss,ignore the examUrl."

    .line 152
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mIsExamMode:Z

    if-nez v0, :cond_1

    const-string p1, "Dialog not exam mode,ignore the examUrl."

    .line 156
    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mExamUrlExpireTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mExamUrlExpireTask:Ljava/lang/Runnable;

    const-wide/32 v1, 0x927c0

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mLoading:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mErrorIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x140

    .line 167
    invoke-static {p1, v0, v0, v3}, Lcom/xiaopeng/carcontrol/util/QrCodeUtils;->createQRImage(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mExamQrBitmap:Landroid/graphics/Bitmap;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->mQrContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    invoke-direct {p0, p2, p3, v2}, Lcom/xiaopeng/carcontrol/view/dialog/XpilotExamDialog;->updateDismissTips(JZ)V

    return-void
.end method
