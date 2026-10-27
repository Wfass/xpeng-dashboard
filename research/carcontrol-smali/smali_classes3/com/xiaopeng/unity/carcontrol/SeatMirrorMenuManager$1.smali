.class Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;
.super Ljava/lang/Object;
.source "SeatMirrorMenuManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;)V
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
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarSpdChanged(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spd"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCarSpdChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->access$100(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateNewGroup(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onCreateNewGroup"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;->access$200(Lcom/xiaopeng/unity/carcontrol/SeatMirrorMenuManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
