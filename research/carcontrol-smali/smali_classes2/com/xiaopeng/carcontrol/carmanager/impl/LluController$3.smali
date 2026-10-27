.class Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;
.super Ljava/lang/Object;
.source "LluController.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->initXuiManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "errorCode"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightEffectShowError effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->access$600(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;I)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightEffectShowFinishEvent effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightEffectShowStartEvent effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectType"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightEffectShowStopEvent effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectName",
            "effectMode"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLightEffectFinishEvent effectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " effectMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LluController"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController$3;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/LluController;II)V

    return-void
.end method
