.class Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel$1;
.super Ljava/lang/Object;
.source "CameraAuthViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/camera/CameraAuthViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAuthStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method
