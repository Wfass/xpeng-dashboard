.class Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController$1;
.super Landroid/database/ContentObserver;
.source "CameraAuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->getCameraAuthState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "CameraAuthController"

    const-string v1, "Settings.System: "

    .line 119
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController$1;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;->access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CameraAuthController;)V

    :cond_0
    return-void
.end method
