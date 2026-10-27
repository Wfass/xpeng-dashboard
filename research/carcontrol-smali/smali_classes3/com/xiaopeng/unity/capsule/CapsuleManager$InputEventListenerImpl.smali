.class Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;
.super Lcom/xiaopeng/input/IInputEventListener$Stub;
.source "CapsuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/capsule/CapsuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1611
    iput-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-direct {p0}, Lcom/xiaopeng/input/IInputEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;Lcom/xiaopeng/unity/capsule/CapsuleManager$1;)V
    .locals 0

    .line 1611
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;-><init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyEvent",
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ev",
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const-string v0, "CapsuleManager"

    if-nez p2, :cond_0

    const-string p1, "action down"

    .line 1619
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string p2, "ACTION_DOWN"

    invoke-static {p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;)V

    .line 1621
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->turnOnScreens(Ljava/lang/String;)V

    goto :goto_0

    .line 1622
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "action up"

    .line 1623
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$InputEventListenerImpl;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string p2, "ACTION_UP"

    invoke-static {p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
