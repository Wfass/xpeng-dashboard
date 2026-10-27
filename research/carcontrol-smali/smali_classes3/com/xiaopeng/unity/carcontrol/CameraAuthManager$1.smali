.class Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;
.super Ljava/lang/Object;
.source "CameraAuthManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/CameraAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAuthStateChanged(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "param"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->access$000(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAuthStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCameraAuthStateChanged"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;->access$100(Lcom/xiaopeng/unity/carcontrol/CameraAuthManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
