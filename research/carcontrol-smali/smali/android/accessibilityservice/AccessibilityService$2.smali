.class Landroid/accessibilityservice/AccessibilityService$2;
.super Ljava/lang/Object;
.source "AccessibilityService.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accessibilityservice/AccessibilityService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    .line 2190
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(ILandroid/os/IBinder;)V
    .locals 1

    .line 2208
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$102(Landroid/accessibilityservice/AccessibilityService;I)I

    .line 2209
    iget-object p1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {p1, p2}, Landroid/accessibilityservice/AccessibilityService;->access$302(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 2213
    iget-object p1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityService;->access$400(Landroid/accessibilityservice/AccessibilityService;)Landroid/view/WindowManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2214
    iget-object p1, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityService;->access$400(Landroid/accessibilityservice/AccessibilityService;)Landroid/view/WindowManager;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManagerImpl;

    .line 2215
    iget-object p2, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {p2}, Landroid/accessibilityservice/AccessibilityService;->access$300(Landroid/accessibilityservice/AccessibilityService;)Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManagerImpl;->setDefaultToken(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public onAccessibilityButtonAvailabilityChanged(Z)V
    .locals 1

    .line 2263
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$1000(Landroid/accessibilityservice/AccessibilityService;Z)V

    return-void
.end method

.method public onAccessibilityButtonClicked(I)V
    .locals 1

    .line 2258
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$900(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 2203
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onFingerprintCapturingGesturesChanged(Z)V
    .locals 1

    .line 2248
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$700(Landroid/accessibilityservice/AccessibilityService;Z)V

    return-void
.end method

.method public onFingerprintGesture(I)V
    .locals 1

    .line 2253
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$800(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .locals 1

    .line 2221
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterrupt()V
    .locals 1

    .line 2198
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onInterrupt()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2226
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMagnificationChanged(ILandroid/graphics/Region;FFF)V
    .locals 6

    .line 2232
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/accessibilityservice/AccessibilityService;->access$500(Landroid/accessibilityservice/AccessibilityService;ILandroid/graphics/Region;FFF)V

    return-void
.end method

.method public onPerformGestureResult(IZ)V
    .locals 1

    .line 2243
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0, p1, p2}, Landroid/accessibilityservice/AccessibilityService;->onPerformGestureResult(IZ)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .line 2193
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->access$200(Landroid/accessibilityservice/AccessibilityService;)V

    return-void
.end method

.method public onSoftKeyboardShowModeChanged(I)V
    .locals 1

    .line 2238
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0, p1}, Landroid/accessibilityservice/AccessibilityService;->access$600(Landroid/accessibilityservice/AccessibilityService;I)V

    return-void
.end method

.method public onSystemActionsChanged()V
    .locals 1

    .line 2268
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$2;->this$0:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->onSystemActionsChanged()V

    return-void
.end method
