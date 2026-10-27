.class final Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;
.super Lcom/xiaopeng/IXPKeyListener$Stub;
.source "MirrorControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MirrorControlKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 817
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-direct {p0}, Lcom/xiaopeng/IXPKeyListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$1;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;-><init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V

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

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2700(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MirrorControlKeyListener: onKey====>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 825
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager$MirrorControlKeyListener;->this$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->access$2800(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->onKey(II)Z

    return p2
.end method
