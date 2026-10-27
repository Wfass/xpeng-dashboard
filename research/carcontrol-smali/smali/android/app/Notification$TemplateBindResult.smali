.class Landroid/app/Notification$TemplateBindResult;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateBindResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$TemplateBindResult$MarginSet;
    }
.end annotation


# instance fields
.field public final mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field public final mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

.field mRightIconHeightDp:F

.field mRightIconVisible:Z

.field mRightIconWidthDp:F

.field public final mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 12633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12644
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$1;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 12652
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$1;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    .line 12659
    new-instance v0, Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$1;)V

    iput-object v0, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$1;)V
    .locals 0

    .line 12633
    invoke-direct {p0}, Landroid/app/Notification$TemplateBindResult;-><init>()V

    return-void
.end method


# virtual methods
.method public setRightIconState(ZFFFF)V
    .locals 0

    .line 12663
    iput-boolean p1, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    .line 12664
    iput p2, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    .line 12665
    iput p3, p0, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    .line 12666
    iget-object p1, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 12667
    iget-object p1, p0, Landroid/app/Notification$TemplateBindResult;->mHeadingFullMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    add-float/2addr p4, p5

    invoke-virtual {p1, p5, p4}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    .line 12668
    iget-object p1, p0, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    invoke-virtual {p1, p2, p4}, Landroid/app/Notification$TemplateBindResult$MarginSet;->setValues(FF)V

    return-void
.end method
