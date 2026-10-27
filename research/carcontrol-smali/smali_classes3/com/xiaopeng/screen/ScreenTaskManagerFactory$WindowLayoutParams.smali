.class public Lcom/xiaopeng/screen/ScreenTaskManagerFactory$WindowLayoutParams;
.super Ljava/lang/Object;
.source "ScreenTaskManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLayoutParams"
.end annotation


# static fields
.field public static final INTENT_FLAG_LAUNCH_APPLET:I = 0x200

.field public static final INTENT_FLAG_LAUNCH_DEFAULT_HOME_PRIMARY:I = 0x20000000

.field public static final INTENT_FLAG_LAUNCH_DEFAULT_HOME_SECONDARY:I = 0x40000000

.field public static final INTENT_FLAG_LAUNCH_FLOATING:I = 0x80

.field public static final INTENT_FLAG_LAUNCH_FREEFORM:I = 0x4

.field public static final INTENT_FLAG_LAUNCH_FULLSCREEN_IMMERSION:I = 0x10

.field public static final INTENT_FLAG_LAUNCH_FULLSCREEN_LOGICAL:I = 0x40

.field public static final INTENT_FLAG_LAUNCH_FULLSCREEN_PHYSICAL:I = 0x20

.field public static final INTENT_FLAG_LAUNCH_LAUNCHER:I = 0x2

.field public static final INTENT_FLAG_LAUNCH_PANEL:I = 0x100

.field public static final INTENT_FLAG_LAUNCH_SYSTEM:I = 0x10000000

.field public static final INTENT_FLAG_LAUNCH_VIRTUAL_HOME_PRIMARY:I = 0x1000000

.field public static final INTENT_FLAG_LAUNCH_VIRTUAL_HOME_SECONDARY:I = 0x2000000

.field public static final POSITION_AREA_DEFAULT:I = 0x0

.field public static final POSITION_AREA_FIRST:I = 0x1

.field public static final POSITION_AREA_SECOND:I = 0x2

.field public static final TYPE_AREA_IMMERSION:Ljava/lang/String; = "immersion"

.field public static final TYPE_AREA_LOGICAL:Ljava/lang/String; = "logical"

.field public static final TYPE_AREA_PHYSICAL:Ljava/lang/String; = "physical"

.field public static final TYPE_AREA_PRIMARY:Ljava/lang/String; = "primary"

.field public static final TYPE_AREA_SECONDARY:Ljava/lang/String; = "secondary"

.field public static final TYPE_VUI:I = 0x843

.field public static final TYPE_VUI_DEFAULT:I = 0x841

.field public static final TYPE_VUI_OVERLAY:I = 0x842

.field public static final TYPE_XUI_INSTRUMENT:I = 0x849

.field public static final WINDOW_FLAG_HIDE_NAVIGATION_BAR:I = 0x1000

.field public static final WINDOW_FLAG_HIDE_STATUS_BAR:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
