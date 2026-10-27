.class Lcom/xiaopeng/unity/lludance/LluDanceManager$1;
.super Ljava/lang/Object;
.source "LluDanceManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/lludance/LluDanceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/unity/lludance/LluDanceManager;->initInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/unity/lludance/LluDanceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;->this$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarmTriggered(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;->this$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    const-string v1, "onAlarmTriggered"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->access$600(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDanceBreak(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "danceBreak"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;->this$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onDanceBreak"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->access$400(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onIgStateChange(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "igState"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;->this$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onIgStateChange"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->access$300(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onLluDanceDataChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluDanceViewData"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;->this$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    invoke-static {v0}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->access$100(Lcom/xiaopeng/unity/lludance/LluDanceManager;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLluDanceDataChanged"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->access$200(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onXuiManagerNotify(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playState"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/unity/lludance/LluDanceManager$1;->this$0:Lcom/xiaopeng/unity/lludance/LluDanceManager;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onXuiManagerNotify"

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/unity/lludance/LluDanceManager;->access$500(Lcom/xiaopeng/unity/lludance/LluDanceManager;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
