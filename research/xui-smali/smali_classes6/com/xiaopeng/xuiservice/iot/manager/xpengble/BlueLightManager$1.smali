.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;
.super Ljava/lang/Object;
.source "BlueLightManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isLightNeedActive"    # Z

    .line 60
    const-string v0, "BlueLightManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged: mIsLightNeedActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isLightNeedActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$002(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;Z)Z

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightManager;)V

    .line 65
    :cond_0
    return-void
.end method
