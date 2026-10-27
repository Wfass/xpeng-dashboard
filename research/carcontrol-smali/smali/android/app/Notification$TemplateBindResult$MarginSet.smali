.class Landroid/app/Notification$TemplateBindResult$MarginSet;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$TemplateBindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarginSet"
.end annotation


# instance fields
.field private mValueIfGone:F

.field private mValueIfVisible:F

.field final synthetic this$0:Landroid/app/Notification$TemplateBindResult;


# direct methods
.method private constructor <init>(Landroid/app/Notification$TemplateBindResult;)V
    .locals 0

    .line 12676
    iput-object p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$1;)V
    .locals 0

    .line 12676
    invoke-direct {p0, p1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/widget/RemoteViews;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12686
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    return-void
.end method

.method public applyToView(Landroid/widget/RemoteViews;IF)V
    .locals 4

    .line 12691
    invoke-virtual {p0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->getDpValue()F

    move-result v0

    add-float/2addr v0, p3

    const v1, 0x1020434

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    const-string/jumbo v3, "setTopLineExtraMarginEndDp"

    .line 12693
    invoke-virtual {p1, v1, v3, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_1

    :cond_0
    const v1, 0x1020558

    const/4 v3, 0x5

    if-eq p2, v1, :cond_2

    const v1, 0x1020279

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 12711
    :cond_1
    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    goto :goto_1

    .line 12696
    :cond_2
    :goto_0
    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 12703
    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    const-string/jumbo v1, "setImageEndMarginDp"

    invoke-virtual {p1, p2, v1, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 12704
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v0, v0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    const-string/jumbo v1, "setHasImage"

    invoke-virtual {p1, p2, v1, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 12708
    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 12714
    :goto_1
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v0, v0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v0, :cond_3

    const v0, 0x1020554

    .line 12715
    iget v1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    add-float/2addr v1, p3

    .line 12716
    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v1

    .line 12715
    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/RemoteViews;->setIntTag(III)V

    const v0, 0x1020553

    .line 12718
    iget v1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    add-float/2addr v1, p3

    .line 12719
    invoke-static {v1, v2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result p3

    .line 12718
    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setIntTag(III)V

    :cond_3
    return-void

    .line 12697
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Programming error: `text` and `big_text` use ImageFloatingTextView which can either show a margin or not; thus mValueIfGone must be 0, but it was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDpValue()F
    .locals 1

    .line 12725
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v0, v0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    :goto_0
    return v0
.end method

.method public setValues(FF)V
    .locals 0

    .line 12681
    iput p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    .line 12682
    iput p2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    return-void
.end method
