.class public Lcom/xiaopeng/carcontrol/helper/ClickHelper;
.super Ljava/lang/Object;
.source "ClickHelper.java"


# static fields
.field private static final DEFAULT_VIEW_ID:I = 0x1

.field private static final NORMAL_CLICK_INTERVAL:J = 0x1f4L

.field private static mLastClickTime:J = 0x0L

.field private static mLastClickedViewId:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastClick()Z
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x1f4

    .line 13
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJ)Z

    move-result v0

    return v0
.end method

.method public static isFastClick(IIJZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clickedViewId",
            "interceptViewId",
            "duration",
            "resetTime"
        }
    .end annotation

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    sget v2, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickedViewId:I

    const/4 v3, 0x0

    if-eq p0, v2, :cond_0

    if-ne p1, v2, :cond_1

    .line 48
    :cond_0
    sget-wide v4, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickTime:J

    sub-long v4, v0, v4

    cmp-long p1, v4, p2

    if-gtz p1, :cond_1

    const/4 v3, 0x1

    .line 52
    :cond_1
    sput p0, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickedViewId:I

    if-nez p4, :cond_2

    .line 53
    sget-wide p0, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickTime:J

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_2

    if-nez v3, :cond_3

    .line 54
    :cond_2
    sput-wide v0, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickTime:J

    :cond_3
    return v3
.end method

.method public static isFastClick(IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewId",
            "duration"
        }
    .end annotation

    const/4 v0, 0x1

    .line 21
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJZ)Z

    move-result p0

    return p0
.end method

.method public static isFastClick(IJZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewId",
            "duration",
            "resetTime"
        }
    .end annotation

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 31
    sget v2, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickedViewId:I

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    .line 32
    sget-wide v4, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickTime:J

    sub-long v4, v0, v4

    cmp-long p1, v4, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    move v3, p1

    .line 37
    :cond_0
    sput p0, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickedViewId:I

    if-nez p3, :cond_1

    .line 38
    sget-wide p0, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickTime:J

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_1

    if-nez v3, :cond_2

    .line 39
    :cond_1
    sput-wide v0, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickTime:J

    :cond_2
    return v3
.end method

.method public static isFastClick(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    const/4 v0, 0x1

    .line 17
    invoke-static {v0, p0, p1}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJ)Z

    move-result p0

    return p0
.end method

.method public static isFastClick(JZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "resetTime"
        }
    .end annotation

    const/4 v0, 0x1

    .line 25
    invoke-static {v0, p0, p1, p2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJZ)Z

    move-result p0

    return p0
.end method

.method public static setDefaultViewIdCurrentTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentTime"
        }
    .end annotation

    .line 60
    sput-wide p0, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->mLastClickTime:J

    return-void
.end method
