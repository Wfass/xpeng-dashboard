.class public abstract Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
.super Ljava/lang/Object;
.source "ScreenTaskManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/screen/ScreenTaskManagerFactory$WindowLayoutParams;,
        Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;,
        Lcom/xiaopeng/screen/ScreenTaskManagerFactory$TaskEvents;
    }
.end annotation


# static fields
.field private static final sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/screen/ScreenTaskManagerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$1;

    invoke-direct {v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->sInstance:Landroid/util/Singleton;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    return-object v0
.end method


# virtual methods
.method public abstract addIntentPrivateFlags(Landroid/content/Intent;I)V
.end method

.method public abstract addView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract addView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;ILandroid/os/Bundle;)V
.end method

.method public abstract back(ILandroid/os/Bundle;)I
.end method

.method public abstract bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
.end method

.method public abstract bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;I)Z
.end method

.method public abstract clearIntentTaskOnHomeFlags(Landroid/content/Intent;)V
.end method

.method public abstract clearTaskThumbnail()V
.end method

.method public abstract dismissDialog()Z
.end method

.method public abstract dismissDialog(I)Z
.end method

.method public abstract dismissDialog(Landroid/os/Bundle;)Z
.end method

.method public abstract enterFullScreen(Ljava/lang/String;)V
.end method

.method public abstract enterFullScreen(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract enterSplitScreen()V
.end method

.method public abstract enterSplitScreen(Landroid/os/Bundle;)V
.end method

.method public abstract enterSplitScreen(Ljava/lang/String;)V
.end method

.method public abstract enterSplitScreen(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract exchange(Landroid/os/Bundle;)I
.end method

.method public abstract exchange(Landroid/os/Bundle;Lcom/xiaopeng/screen/ScreenTaskCallback;)I
.end method

.method public abstract getActivityAnimation(Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method public abstract getActivityAreaTypes(Landroid/content/ComponentName;Landroid/os/Bundle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppConfigurations(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getAppInfo(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAppPolicy(Landroid/os/Bundle;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract getAreaId(ILjava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract getAreaId(Ljava/lang/String;)I
.end method

.method public abstract getAreaPosition(I)I
.end method

.method public abstract getAreaPosition(ILjava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract getAreaPosition(Ljava/lang/String;)I
.end method

.method public abstract getAreaType(IILandroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getAreaType(Landroid/content/res/Configuration;)Ljava/lang/String;
.end method

.method public abstract getAreaType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAreaType(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getHome(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
.end method

.method public abstract getHome(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/ComponentName;
.end method

.method public abstract getHomeList(ILandroid/os/Bundle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHomeType(Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract getPackageList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageList(ILandroid/os/Bundle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPackageSettings(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract getRootInActiveWindow(Landroid/accessibilityservice/AccessibilityService;I)Landroid/view/accessibility/AccessibilityNodeInfo;
.end method

.method public abstract getScreenAreaId(Ljava/lang/String;)I
.end method

.method public abstract getScreenAreaType(Landroid/content/res/Configuration;)Ljava/lang/String;
.end method

.method public abstract getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getScreenBarBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;
.end method

.method public abstract getScreenId(Landroid/content/Context;)I
.end method

.method public abstract getScreenId(Ljava/lang/String;)I
.end method

.method public abstract getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract getScreenMode(I)I
.end method

.method public abstract getSystemBarVisibility(II)I
.end method

.method public abstract getTimeMillis(Ljava/lang/String;Landroid/os/Bundle;)J
.end method

.method public abstract getTopActivity()Ljava/lang/String;
.end method

.method public abstract getTopActivity(I)Ljava/lang/String;
.end method

.method public abstract getTopActivity(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getTopDialog()Lcom/xiaopeng/app/xpDialogInfo;
.end method

.method public abstract getTopDialog(I)Lcom/xiaopeng/app/xpDialogInfo;
.end method

.method public abstract getTopDialog(Landroid/os/Bundle;)Lcom/xiaopeng/app/xpDialogInfo;
.end method

.method public abstract getTopWindow()Ljava/lang/String;
.end method

.method public abstract getTopWindow(I)Ljava/lang/String;
.end method

.method public abstract getTopWindow(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract getUserId(Landroid/content/Context;I)I
.end method

.method public abstract getViewScreenId(Landroid/view/View;)I
.end method

.method public abstract getWindowBounds(ILandroid/os/Bundle;)Landroid/graphics/Rect;
.end method

.method public abstract inSplitMode(ILandroid/os/Bundle;)Z
.end method

.method public abstract isHome(Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract isSystemBarImmersive(I)Z
.end method

.method public abstract isTaskAnimating(I)Z
.end method

.method public abstract isTaskResizing(I)Z
.end method

.method public abstract isWindowMoving(I)Z
.end method

.method public abstract moveWindow(Landroid/os/Bundle;)V
.end method

.method public abstract registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILandroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;)V
.end method

.method public abstract registerTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/screen/IScreenTaskListener;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removePackageSettings(Ljava/lang/String;)V
.end method

.method public abstract resize(Landroid/app/Activity;Landroid/os/Bundle;)I
.end method

.method public abstract resize(Landroid/os/Bundle;)I
.end method

.method public abstract resize(Landroid/os/Bundle;Lcom/xiaopeng/screen/ScreenTaskCallback;)I
.end method

.method public abstract screenshot(ILandroid/os/Bundle;)Landroid/graphics/Bitmap;
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;I)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;I)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setAccessibilityFocusedDisplay(I)V
.end method

.method public abstract setActivityPadding(Landroid/app/Activity;IZZZZ)V
.end method

.method public abstract setCornerRadius(Landroid/view/SurfaceView;)V
.end method

.method public abstract setCornerRadius(Landroid/view/SurfaceView;F)V
.end method

.method public abstract setDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V
.end method

.method public abstract setHome(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setHomeOnAutoEnabled(IZLandroid/os/Bundle;)V
.end method

.method public abstract setIntentFloatingFlags(Landroid/content/Intent;)V
.end method

.method public abstract setPackageSettings(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract setScreenBarVisibility(II)V
.end method

.method public abstract setScreenId(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract setSystemBarVisibility(III)V
.end method

.method public abstract setTaskEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract setTaskOnHomeEnabled(IZLandroid/os/Bundle;)V
.end method

.method public abstract setTransparentRegionEnabled(Landroid/view/SurfaceView;ZLandroid/os/Bundle;)V
.end method

.method public abstract setVoiceAnchor(I)V
.end method

.method public abstract setWindowLayoutParams(Landroid/content/Context;Landroid/view/Window;II)V
.end method

.method public abstract showDialog(Landroid/app/Dialog;)V
.end method

.method public abstract showDialog(Landroid/app/Dialog;ILandroid/os/Bundle;)V
.end method

.method public abstract showToast(Landroid/widget/Toast;I)V
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;)I
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)I
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)I
.end method

.method public abstract startForegroundServiceAsUser(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/ComponentName;
.end method

.method public abstract startHome(Landroid/content/Context;ILandroid/os/Bundle;)V
.end method

.method public abstract startHome(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/ComponentName;
.end method

.method public abstract stopActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract stopServiceAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z
.end method

.method public abstract toggleCustomOrientation(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract unregisterTaskListener(Lcom/xiaopeng/screen/IScreenTaskListener;)V
.end method
