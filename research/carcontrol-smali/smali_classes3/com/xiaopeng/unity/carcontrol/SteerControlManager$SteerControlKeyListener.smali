.class final Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;
.super Lcom/xiaopeng/IXPKeyListener$Stub;
.source "SteerControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SteerControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SteerControlKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;->this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    invoke-direct {p0}, Lcom/xiaopeng/IXPKeyListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;Lcom/xiaopeng/unity/carcontrol/SteerControlManager$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;-><init>(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;)V

    return-void
.end method


# virtual methods
.method public notify(Landroid/view/KeyEvent;Ljava/lang/String;)I
    .locals 3
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

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SteerControlManager$SteerControlKeyListener;->this$0:Lcom/xiaopeng/unity/carcontrol/SteerControlManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/SteerControlManager;->access$600(Lcom/xiaopeng/unity/carcontrol/SteerControlManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SteerControlKeyListener: onKey====>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method
