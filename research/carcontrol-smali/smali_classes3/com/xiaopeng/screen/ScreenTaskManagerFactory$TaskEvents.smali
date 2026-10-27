.class public Lcom/xiaopeng/screen/ScreenTaskManagerFactory$TaskEvents;
.super Ljava/lang/Object;
.source "ScreenTaskManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskEvents"
.end annotation


# static fields
.field public static final ID_ACTIVITY_CHANGED:I = 0x3

.field public static final ID_PACKAGE_CHANGED:I = 0x403

.field public static final ID_SCREEN_APP_MIRROR_STARTED:I = 0x614

.field public static final ID_SCREEN_APP_MIRROR_STOPPED:I = 0x615

.field public static final ID_SCREEN_AREA_CHANGED:I = 0x606

.field public static final ID_SCREEN_AREA_ID_CHANGED:I = 0x60f

.field public static final ID_SCREEN_AREA_TYPE_CHANGED:I = 0x60e

.field public static final ID_SCREEN_EXCHANGE_MOVEWINDOW_STARTED:I = 0x616

.field public static final ID_SCREEN_EXCHANGE_MOVEWINDOW_STOPPED:I = 0x617

.field public static final ID_SCREEN_EXCHANGE_STARTED:I = 0x612

.field public static final ID_SCREEN_EXCHANGE_STOPPED:I = 0x613

.field public static final ID_SCREEN_MOVE_STARTED:I = 0x603

.field public static final ID_SCREEN_MOVE_STOPPED:I = 0x604

.field public static final ID_SCREEN_RESIZE_ANIM_BEGIN:I = 0x609

.field public static final ID_SCREEN_RESIZE_ANIM_END:I = 0x60a

.field public static final ID_SCREEN_RESIZE_DIM_BEGIN:I = 0x60c

.field public static final ID_SCREEN_RESIZE_DIM_END:I = 0x60d

.field public static final ID_SCREEN_RESIZE_ERROR:I = 0x60b

.field public static final ID_SCREEN_RESIZE_STARTED:I = 0x607

.field public static final ID_SCREEN_RESIZE_STOPPED:I = 0x608

.field public static final ID_SCREEN_TASK_CHANGED:I = 0x605

.field public static final ID_SCREEN_WINDOW_CONTENT_CHANGED:I = 0x611

.field public static final ID_SCREEN_WINDOW_POSITION_CHANGED:I = 0x610

.field public static final ID_TRANSACT_IN:I = 0xc03

.field public static final ID_TRANSACT_OUT:I = 0xc04

.field public static final ID_WINDOW_CHANGED:I = 0x203


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
