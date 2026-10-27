.class Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$1;
.super Ljava/lang/Object;
.source "DriveModeSetManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/DriveModeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriveModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDriveModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->access$100(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
