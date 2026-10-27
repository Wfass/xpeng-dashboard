.class public abstract Lcom/xiaopeng/view/WindowManagerFactory;
.super Ljava/lang/Object;
.source "WindowManagerFactory.java"


# static fields
.field public static final EVENT_DIALOG_DISMISS:I = 0x66

.field public static final EVENT_IN_TRANSACT:I = 0x3e9

.field public static final EVENT_OUT_TRANSACT:I = 0x3ea

.field public static final EVENT_POLICY_CHANGED:I = 0x78

.field public static final EVENT_SHARED_CHANGED:I = 0x4

.field public static final EVENT_SHARED_DESKTOP:I = 0x3

.field public static final EVENT_SHARED_GESTURE:I = 0x5

.field public static final EVENT_SHARED_METHODS:I = 0x8

.field public static final EVENT_SHARED_SLIDING:I = 0x0

.field public static final EVENT_SHARED_STARTED:I = 0x1

.field public static final EVENT_SHARED_STOPPED:I = 0x2

.field public static final EVENT_SHARED_TOUCHED:I = 0x7

.field public static final EVENT_SHARED_VIRTUAL:I = 0x6

.field public static final EVENT_WAKEUP_ACQUIRE:I = 0xc8

.field public static final EVENT_WAKEUP_RELEASE:I = 0xc9

.field public static final EVENT_WINDOW_CHANGED:I = 0x64

.field public static final EVENT_WINDOW_DISMISS:I = 0x65

.field public static final FIRST_SYSTEM_WINDOW:I = 0x7d0

.field public static final ID_SCREEN_PRIMARY:I = 0x0

.field public static final ID_SCREEN_SECONDARY:I = 0x1

.field public static final ID_SHARED_PRIMARY:I = 0x0

.field public static final ID_SHARED_SECONDARY:I = 0x1

.field public static final ID_SHARED_UNKNOWN:I = -0x1

.field public static final POLICY_BLOCKED:I = 0x2

.field public static final POLICY_DISABLE:I = 0x0

.field public static final POLICY_ENABLED:I = 0x1

.field public static final POLICY_FAIL:I = 0x1

.field public static final POLICY_PASS:I = 0x0

.field public static final POLICY_UNKNOWN:I = -0x1

.field public static final TYPE_AI_ASSISTANT:I = 0x7f8

.field public static final TYPE_APPLICATION_WINDOW_OVERLAY:I = 0x7fc

.field public static final TYPE_AVATAR:I = 0x803

.field public static final TYPE_DEVICE_ID:I = -0x1

.field public static final TYPE_INFOFLOW:I = 0x7f7

.field public static final TYPE_INFORMATION_BAR:I = 0x7fe

.field public static final TYPE_LIFECYCLE_DIALOG:I = 0x800

.field public static final TYPE_OSD:I = 0x7fb

.field public static final TYPE_QUICK_PANEL:I = 0x805

.field public static final TYPE_SCREEN_ID:I = 0x0

.field public static final TYPE_SECONDARY_NAVIGATION:I = 0x80c

.field public static final TYPE_SECONDARY_SCREENSHOT:I = 0x80d

.field public static final TYPE_SHARED_ID:I = 0x1

.field public static final TYPE_SPECTRUM:I = 0x7f9

.field public static final TYPE_VUI:I = 0x801

.field public static final TYPE_VUI_OVERLAY:I = 0x804

.field public static final TYPE_WARNING_DIALOG:I = 0x7ff

.field public static final TYPE_WATER_MARK:I = 0x7fd

.field public static final TYPE_WINDOW_OVERLAY:I = 0x7fa

.field public static final TYPE_XUI_WALLPAPER:I = 0x802


# instance fields
.field protected mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/view/WindowManagerFactory;->mWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/xiaopeng/view/WindowManagerFactory;
    .locals 1

    .line 20
    new-instance v0, Lcom/xiaopeng/view/WindowManagerFactoryImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/view/WindowManagerFactoryImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isPrimaryId(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract dismissDialog(Landroid/os/Bundle;)Z
.end method

.method public abstract getActivityBounds(Ljava/lang/String;Z)Landroid/graphics/Rect;
.end method

.method public abstract getAppPolicy(Landroid/os/Bundle;)I
.end method

.method public abstract getAppTaskId(Landroid/os/IBinder;)I
.end method

.method public abstract getDisplayBounds()Landroid/graphics/Rect;
.end method

.method public abstract getFilterPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImmPosition()I
.end method

.method public abstract getScreenId(Ljava/lang/String;)I
.end method

.method public abstract getSharedId(Ljava/lang/String;)I
.end method

.method public abstract getSharedPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTopActivity(II)Ljava/lang/String;
.end method

.method public abstract getTopDialog(Landroid/os/Bundle;)Lcom/xiaopeng/app/xpDialogInfo;
.end method

.method public abstract getTopWindow()Ljava/lang/String;
.end method

.method public abstract getWindowFrame(Landroid/view/WindowManager$LayoutParams;)Lcom/xiaopeng/view/WindowFrameModel;
.end method

.method public abstract getXuiConfiguration(Ljava/lang/String;)Landroid/content/res/Configuration;
.end method

.method public abstract getXuiLayer(I)I
.end method

.method public abstract getXuiLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getXuiRectByType(I)Landroid/graphics/Rect;
.end method

.method public abstract getXuiRoundCorner(I)[I
.end method

.method public abstract getXuiStyle()I
.end method

.method public abstract getXuiSubLayer(I)I
.end method

.method public abstract handleSwipeEvent(ILjava/lang/String;)V
.end method

.method public abstract isImeLayerExist()Z
.end method

.method public abstract isSharedPackageEnabled(Ljava/lang/String;)Z
.end method

.method public abstract isSharedScreenEnabled(I)Z
.end method

.method public abstract registerSharedListener(Lcom/xiaopeng/view/ISharedDisplayListener;)V
.end method

.method public abstract screenshot(ILandroid/os/Bundle;)Landroid/graphics/Bitmap;
.end method

.method public abstract setFocusedAppNoChecked(Landroid/os/IBinder;Z)V
.end method

.method public abstract setModeEvent(IILjava/lang/String;)V
.end method

.method public abstract setPackageSettings(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setScreenId(Ljava/lang/String;I)V
.end method

.method public abstract setSharedEvent(IILjava/lang/String;)V
.end method

.method public abstract setSharedId(Ljava/lang/String;I)V
.end method

.method public abstract setSharedPackagePolicy(Ljava/lang/String;I)V
.end method

.method public abstract setSharedScreenPolicy(II)V
.end method

.method public abstract unregisterSharedListener(Lcom/xiaopeng/view/ISharedDisplayListener;)V
.end method
