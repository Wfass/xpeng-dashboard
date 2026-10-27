.class Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager$1;
.super Ljava/lang/Object;
.source "TrailerModeControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/TrailerControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrailerModeChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTrailerModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;->access$100(Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
