.class public interface abstract Landroid/view/WindowManager;
.super Ljava/lang/Object;
.source "WindowManager.java"

# interfaces
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManager$LayoutParams;,
        Landroid/view/WindowManager$ScreenshotSource;,
        Landroid/view/WindowManager$ScreenshotType;,
        Landroid/view/WindowManager$KeyboardShortcutsReceiver;,
        Landroid/view/WindowManager$InvalidDisplayException;,
        Landroid/view/WindowManager$BadTokenException;,
        Landroid/view/WindowManager$DisplayImePolicy;,
        Landroid/view/WindowManager$RemoveContentMode;,
        Landroid/view/WindowManager$TransitionFlags;,
        Landroid/view/WindowManager$TransitionType;,
        Landroid/view/WindowManager$TransitionOldType;,
        Landroid/view/WindowManager$ShellRootLayer;
    }
.end annotation


# static fields
.field public static final DISPLAY_IME_POLICY_FALLBACK_DISPLAY:I = 0x1

.field public static final DISPLAY_IME_POLICY_HIDE:I = 0x2

.field public static final DISPLAY_IME_POLICY_LOCAL:I = 0x0

.field public static final DOCKED_BOTTOM:I = 0x4

.field public static final DOCKED_INVALID:I = -0x1

.field public static final DOCKED_LEFT:I = 0x1

.field public static final DOCKED_RIGHT:I = 0x3

.field public static final DOCKED_TOP:I = 0x2

.field public static final INPUT_CONSUMER_NAVIGATION:Ljava/lang/String; = "nav_input_consumer"

.field public static final INPUT_CONSUMER_PIP:Ljava/lang/String; = "pip_input_consumer"

.field public static final INPUT_CONSUMER_RECENTS_ANIMATION:Ljava/lang/String; = "recents_animation_input_consumer"

.field public static final INPUT_CONSUMER_WALLPAPER:Ljava/lang/String; = "wallpaper_input_consumer"

.field public static final PARCEL_KEY_SHORTCUTS_ARRAY:Ljava/lang/String; = "shortcuts_array"

.field public static final REMOVE_CONTENT_MODE_DESTROY:I = 0x2

.field public static final REMOVE_CONTENT_MODE_MOVE_TO_PRIMARY:I = 0x1

.field public static final REMOVE_CONTENT_MODE_UNDEFINED:I = 0x0

.field public static final SHELL_ROOT_LAYER_DIVIDER:I = 0x0

.field public static final SHELL_ROOT_LAYER_PIP:I = 0x1

.field public static final TAKE_SCREENSHOT_FULLSCREEN:I = 0x1

.field public static final TAKE_SCREENSHOT_PROVIDED_IMAGE:I = 0x3

.field public static final TAKE_SCREENSHOT_SELECTED_REGION:I = 0x2

.field public static final TRANSIT_CHANGE:I = 0x6

.field public static final TRANSIT_CLOSE:I = 0x2

.field public static final TRANSIT_FIRST_CUSTOM:I = 0xc

.field public static final TRANSIT_FLAG_APP_CRASHED:I = 0x10

.field public static final TRANSIT_FLAG_IS_RECENTS:I = 0x80

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY:I = 0x100

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_NO_ANIMATION:I = 0x2

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_SUBTLE_ANIMATION:I = 0x8

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_TO_SHADE:I = 0x1

.field public static final TRANSIT_FLAG_KEYGUARD_GOING_AWAY_WITH_WALLPAPER:I = 0x4

.field public static final TRANSIT_FLAG_KEYGUARD_LOCKED:I = 0x40

.field public static final TRANSIT_FLAG_OPEN_BEHIND:I = 0x20

.field public static final TRANSIT_KEYGUARD_GOING_AWAY:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSIT_KEYGUARD_OCCLUDE:I = 0x8

.field public static final TRANSIT_KEYGUARD_UNOCCLUDE:I = 0x9

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_OLD_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_OLD_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_OLD_ACTIVITY_RELAUNCH:I = 0x12

.field public static final TRANSIT_OLD_CRASHING_ACTIVITY_CLOSE:I = 0x1a

.field public static final TRANSIT_OLD_KEYGUARD_GOING_AWAY:I = 0x14

.field public static final TRANSIT_OLD_KEYGUARD_GOING_AWAY_ON_WALLPAPER:I = 0x15

.field public static final TRANSIT_OLD_KEYGUARD_OCCLUDE:I = 0x16

.field public static final TRANSIT_OLD_KEYGUARD_UNOCCLUDE:I = 0x17

.field public static final TRANSIT_OLD_NONE:I = 0x0

.field public static final TRANSIT_OLD_TASK_CHANGE_WINDOWING_MODE:I = 0x1b

.field public static final TRANSIT_OLD_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_OLD_TASK_FRAGMENT_CHANGE:I = 0x1e

.field public static final TRANSIT_OLD_TASK_FRAGMENT_CLOSE:I = 0x1d

.field public static final TRANSIT_OLD_TASK_FRAGMENT_OPEN:I = 0x1c

.field public static final TRANSIT_OLD_TASK_OPEN:I = 0x8

.field public static final TRANSIT_OLD_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_OLD_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_OLD_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_OLD_TRANSLUCENT_ACTIVITY_CLOSE:I = 0x19

.field public static final TRANSIT_OLD_TRANSLUCENT_ACTIVITY_OPEN:I = 0x18

.field public static final TRANSIT_OLD_UNSET:I = -0x1

.field public static final TRANSIT_OLD_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_OLD_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_OLD_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_OLD_WALLPAPER_OPEN:I = 0xd

.field public static final TRANSIT_OPEN:I = 0x1

.field public static final TRANSIT_PIP:I = 0xa

.field public static final TRANSIT_RELAUNCH:I = 0x5

.field public static final TRANSIT_TO_BACK:I = 0x4

.field public static final TRANSIT_TO_FRONT:I = 0x3

.field public static final TRANSIT_WAKE:I = 0xb


# direct methods
.method public static transitTypeToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0xc

    if-le p0, v0, :cond_0

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FIRST_CUSTOM+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int/2addr p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "FIRST_CUSTOM"

    return-object p0

    :pswitch_1
    const-string p0, "WAKE"

    return-object p0

    :pswitch_2
    const-string p0, "PIP"

    return-object p0

    :pswitch_3
    const-string p0, "KEYGUARD_UNOCCLUDE"

    return-object p0

    :pswitch_4
    const-string p0, "KEYGUARD_OCCLUDE"

    return-object p0

    :pswitch_5
    const-string p0, "KEYGUARD_GOING_AWAY"

    return-object p0

    :pswitch_6
    const-string p0, "CHANGE"

    return-object p0

    :pswitch_7
    const-string p0, "RELAUNCH"

    return-object p0

    :pswitch_8
    const-string p0, "TO_BACK"

    return-object p0

    :pswitch_9
    const-string p0, "TO_FRONT"

    return-object p0

    :pswitch_a
    const-string p0, "CLOSE"

    return-object p0

    :pswitch_b
    const-string p0, "OPEN"

    return-object p0

    :pswitch_c
    const-string p0, "NONE"

    return-object p0

    .line 985
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract getCurrentImeTouchRegion()Landroid/graphics/Region;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .locals 1

    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getDefaultDisplay()Landroid/view/Display;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getDisplayImePolicy(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .locals 1

    .line 713
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .locals 0

    .line 4973
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isCrossWindowBlurEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTaskSnapshotSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract removeViewImmediate(Landroid/view/View;)V
.end method

.method public abstract requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end method

.method public setDisplayImePolicy(II)V
    .locals 0

    return-void
.end method

.method public setShouldShowSystemDecors(IZ)V
    .locals 0

    return-void
.end method

.method public setShouldShowWithInsecureKeyguard(IZ)V
    .locals 0

    return-void
.end method

.method public shouldShowSystemDecors(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
