.class public Landroid/app/Notification$CallStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStyle"
.end annotation


# static fields
.field public static final CALL_TYPE_INCOMING:I = 0x1

.field public static final CALL_TYPE_ONGOING:I = 0x2

.field public static final CALL_TYPE_SCREENING:I = 0x3

.field private static final KEY_ACTION_PRIORITY:Ljava/lang/String; = "key_action_priority"


# instance fields
.field private mAnswerButtonColor:Ljava/lang/Integer;

.field private mAnswerIntent:Landroid/app/PendingIntent;

.field private mCallType:I

.field private mDeclineButtonColor:Ljava/lang/Integer;

.field private mDeclineIntent:Landroid/app/PendingIntent;

.field private mHangUpIntent:Landroid/app/PendingIntent;

.field private mIsVideo:Z

.field private mPerson:Landroid/app/Person;

.field private mVerificationIcon:Landroid/graphics/drawable/Icon;

.field private mVerificationText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9743
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    return-void
.end method

.method private constructor <init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1

    .line 9818
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    if-eqz p2, :cond_0

    .line 9819
    invoke-virtual {p2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9822
    iput p1, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    .line 9823
    iput-object p2, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 9824
    iput-object p5, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 9825
    iput-object p4, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 9826
    iput-object p3, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    return-void

    .line 9820
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "person must have a non-empty a name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 8

    .line 10102
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const v3, 0x10205c6

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 10103
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 10104
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10105
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 10104
    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 10106
    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10107
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v5, 0x10405cb

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v5, v4

    goto :goto_0

    .line 10111
    :cond_0
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v0, 0x1

    move v5, v0

    move-object v0, v1

    .line 10113
    :goto_0
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const v7, 0x10205c7

    if-nez v6, :cond_1

    .line 10114
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 10115
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0, p1, v7, p2}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 10116
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 10119
    :cond_1
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object v1, v0

    move v5, v4

    .line 10122
    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v0, 0x10205c5

    if-eqz v5, :cond_2

    .line 10124
    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10125
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p1, v0, p2}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_2

    .line 10127
    :cond_2
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    return-void
.end method

.method private fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 10177
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "android.title"

    .line 10179
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "android.text"

    .line 10181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    .line 10182
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 7

    .line 9760
    new-instance v6, Landroid/app/Notification$CallStyle;

    const-string v0, "declineIntent is required"

    .line 9762
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/app/PendingIntent;

    const-string p1, "answerIntent is required"

    .line 9763
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static forOngoingCall(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 7

    .line 9780
    new-instance v6, Landroid/app/Notification$CallStyle;

    const-string v0, "hangUpIntent is required"

    .line 9781
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v6
.end method

.method public static forScreeningCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .locals 7

    .line 9802
    new-instance v6, Landroid/app/Notification$CallStyle;

    const-string v0, "hangUpIntent is required"

    .line 9803
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/PendingIntent;

    const-string p1, "answerIntent is required"

    .line 9805
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v6
.end method

.method private getDefaultText()Ljava/lang/String;
    .locals 2

    .line 10133
    iget v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 10139
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10137
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10135
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10401bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 9993
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_action_priority"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;
    .locals 2

    if-eqz p3, :cond_0

    .line 9978
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$5100(Landroid/app/Notification$Builder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9979
    :cond_0
    iget-object p3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p3}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 9981
    :cond_1
    new-instance p4, Landroid/app/Notification$Action$Builder;

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9982
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3800(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    .line 9983
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x12

    .line 9982
    invoke-virtual {v0, p2, v1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-direct {p4, p1, p2, p5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 9985
    invoke-virtual {p4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 9986
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const/4 p3, 0x1

    const-string p4, "key_action_priority"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method private makeAnswerAction()Landroid/app/Notification$Action;
    .locals 6

    .line 9967
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 9968
    :cond_0
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    if-eqz v0, :cond_1

    const v1, 0x1080352

    goto :goto_0

    :cond_1
    const v1, 0x1080351

    :goto_0
    if-eqz v0, :cond_2

    const v0, 0x10401bc

    goto :goto_1

    :cond_2
    const v0, 0x10401bb

    :goto_1
    move v2, v0

    .line 9970
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    const v4, 0x10600af

    move-object v0, p0

    .line 9967
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private makeCallLayout(I)Landroid/widget/RemoteViews;
    .locals 8

    .line 10049
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 10050
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 10051
    iget-object v4, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 10052
    :goto_1
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const-string v7, "android.text"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/app/Notification$Builder;->access$3200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_2

    .line 10054
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v3

    .line 10058
    :cond_2
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v6, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v6}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 10059
    invoke-virtual {v6, p1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10060
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10061
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10062
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10063
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10064
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    const v2, 0x10202e3

    .line 10065
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->titleViewId(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10066
    invoke-virtual {p1, v4}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10067
    invoke-virtual {p1, v3}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 10068
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$3200(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 10069
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$3502(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 10072
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v2, 0x10900b2

    invoke-static {v0, v2, p1, v5}, Landroid/app/Notification$Builder;->access$5000(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_2

    .line 10075
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v2, 0x10900ad

    invoke-static {v0, v2, p1, v5}, Landroid/app/Notification$Builder;->access$2800(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 10080
    :goto_2
    iget-boolean v2, p1, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-nez v2, :cond_4

    .line 10081
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v3, 0x1020258

    invoke-static {v2, v0, v3, p1}, Landroid/app/Notification$Builder;->access$3400(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 10082
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10084
    :cond_4
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$CallStyle;->bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 10087
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10088
    invoke-static {v1, p1}, Landroid/app/Notification$Builder;->access$4500(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    const v2, 0x102053b

    const-string/jumbo v3, "setLayoutColor"

    .line 10087
    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 10089
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10090
    invoke-static {v1, p1}, Landroid/app/Notification$Builder;->access$4600(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    const-string/jumbo v1, "setNotificationBackgroundColor"

    .line 10089
    invoke-virtual {v0, v2, v1, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 10091
    iget-object p1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10092
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    const-string/jumbo v1, "setLargeIcon"

    .line 10091
    invoke-virtual {v0, v2, v1, p1}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 10093
    iget-object p1, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10094
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "setData"

    .line 10093
    invoke-virtual {v0, v2, v1, p1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private makeNegativeAction()Landroid/app/Notification$Action;
    .locals 12

    .line 9952
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_0

    const v7, 0x1080353

    const v8, 0x10401be

    .line 9953
    iget-object v9, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v10, 0x10600b0

    iget-object v11, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0

    :cond_0
    const v1, 0x1080353

    const v2, 0x10401bd

    .line 9958
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v4, 0x10600b0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2

    .line 10148
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 10149
    iget v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    const-string v1, "android.callType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10150
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    const-string v1, "android.callIsVideo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10151
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const-string v1, "android.callPerson"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10152
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    const-string v1, "android.verificationIcon"

    .line 10153
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10155
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const-string v1, "android.verificationText"

    .line 10156
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10158
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const-string v1, "android.answerIntent"

    .line 10159
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10161
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    const-string v1, "android.declineIntent"

    .line 10162
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10164
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    const-string v1, "android.hangUpIntent"

    .line 10165
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10167
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 10168
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.answerColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10170
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 10171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.declineColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10173
    :cond_6
    invoke-direct {p0, p1}, Landroid/app/Notification$CallStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 10219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 10222
    :cond_0
    check-cast p1, Landroid/app/Notification$CallStyle;

    .line 10223
    iget v1, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    iget-object v2, p1, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 10224
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 10225
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    .line 9884
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    .line 9886
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$3502(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 9887
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/Notification$Action;

    iput-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 9888
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method public displayCustomViewInline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getActionsListWithSystemActions()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 10005
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeNegativeAction()Landroid/app/Notification$Action;

    move-result-object v0

    .line 10006
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeAnswerAction()Landroid/app/Notification$Action;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 10015
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v2, :cond_2

    .line 10017
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 10022
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 10023
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->access$3500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$Action;

    .line 10024
    invoke-virtual {v5}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 10026
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10027
    :cond_4
    invoke-direct {p0, v5}, Landroid/app/Notification$CallStyle;->isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 10031
    :cond_5
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ne v3, v4, :cond_3

    .line 10036
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_6
    if-lt v3, v4, :cond_7

    .line 10043
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v1
.end method

.method public hasSummaryInHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 9947
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    .line 9932
    sget p1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, p1}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    .line 9940
    sget p1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, p1}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public purgeResources()V
    .locals 1

    .line 9906
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 9907
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 9908
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    :cond_0
    return-void
.end method

.method public reduceImageSizes(Landroid/content/Context;)V
    .locals 1

    .line 9917
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 9918
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    .line 9919
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 9920
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1050211

    goto :goto_0

    :cond_0
    const v0, 0x1050210

    .line 9919
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 9923
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    :cond_1
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 3

    .line 10191
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    const-string v0, "android.callType"

    .line 10192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    const-string v0, "android.callIsVideo"

    .line 10193
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    const-string v0, "android.callPerson"

    .line 10194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const-string v0, "android.verificationIcon"

    .line 10195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    const-string v0, "android.verificationText"

    .line 10196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    const-string v0, "android.answerIntent"

    .line 10197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    const-string v0, "android.declineIntent"

    .line 10198
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    const-string v0, "android.hangUpIntent"

    .line 10199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    const-string v0, "android.answerColor"

    .line 10200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    const-string v0, "android.declineColor"

    .line 10202
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    return-void
.end method

.method public setAnswerButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 9866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDeclineButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 9877
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setIsVideo(Z)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 9835
    iput-boolean p1, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    return-object p0
.end method

.method public setVerificationIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 9845
    iput-object p1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setVerificationText(Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;
    .locals 0

    .line 9855
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    return-object p0
.end method
