.class Lcom/xiaopeng/unity/carcontrol/ArsManager$1;
.super Ljava/lang/Object;
.source "ArsManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/ArsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/carcontrol/ArsManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArsAutoFoldStChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "onArsAutoFoldStChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->access$700(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsErrorStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "onArsErrorStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->access$300(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsFoldStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "onArsFoldStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->access$200(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsInitStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "onArsInitStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->access$100(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsPositionChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "onArsPositionChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->access$600(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsWorkModeChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "onArsWorkModeChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->access$500(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onArsWorkStateChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ArsManager$1;->this$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "onArsWorkStateChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->access$400(Lcom/xiaopeng/unity/carcontrol/ArsManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
