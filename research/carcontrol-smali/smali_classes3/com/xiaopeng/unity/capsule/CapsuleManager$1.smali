.class Lcom/xiaopeng/unity/capsule/CapsuleManager$1;
.super Ljava/lang/Object;
.source "CapsuleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$1;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CapsuleManager"

    const-string v1, "timeout mTimeOutRunnable start set brightness 1 "

    .line 81
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/CapsuleManager$1;->this$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->access$000(Lcom/xiaopeng/unity/capsule/CapsuleManager;)Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->setCapsuleBrightnessLow()V

    return-void
.end method
