.class Lcom/xiaopeng/unity/capsule/CapsuleManager$5;
.super Lcom/xiaopeng/IXPKeyListener$Stub;
.source "CapsuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/capsule/CapsuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1597
    iput-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$5;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-direct {p0}, Lcom/xiaopeng/IXPKeyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Landroid/view/KeyEvent;Ljava/lang/String;)I
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

    const-string p1, "CapsuleManager"

    const-string p2, " onKeyEvent control "

    .line 1600
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$5;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    const-string p2, "onKeyEvent"

    invoke-static {p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3700(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;)V

    .line 1603
    iget-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$5;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {p1, p2}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$3800(Lcom/xiaopeng/unity/capsule/CapsuleManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
