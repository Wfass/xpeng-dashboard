.class Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;
.super Ljava/lang/Object;
.source "SeatMassageManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/SeatMassageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMassagerStatusChange(ILjava/lang/String;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "effectId",
            "intensity",
            "running"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onMassagerStatusChange"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->access$100(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRhythmStatusChange(IIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "mode",
            "intensity",
            "running"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onRhythmStatusChange"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->access$200(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSeatLumbRelaxStatusChange(IIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "mode",
            "running"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSeatLumbRelaxStatusChange"

    invoke-static {v0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;->access$300(Lcom/xiaopeng/unity/carcontrol/SeatMassageManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
