.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;
.super Ljava/lang/Object;
.source "SessionMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 897
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 900
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$800(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)J

    move-result-wide v0

    .line 901
    .local v0, "duration":J
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$900(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;J)J

    move-result-wide v2

    .line 902
    .local v2, "position":J
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)[J

    move-result-object v4

    const-wide/16 v5, 0x3e7

    add-long v7, v2, v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const/4 v11, 0x0

    aput-wide v7, v4, v11

    .line 903
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)[J

    move-result-object v4

    add-long/2addr v5, v0

    div-long/2addr v5, v9

    const/4 v7, 0x1

    aput-wide v5, v4, v7

    .line 904
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)[J

    move-result-object v5

    aget-wide v5, v5, v11

    iget-object v8, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1000(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)[J

    move-result-object v8

    aget-wide v7, v8, v7

    invoke-static {v4, v5, v6, v7, v8}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1100(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;JJ)V

    .line 905
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$1200(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v5, v5, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->updatePositionTask:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 909
    :cond_0
    return-void
.end method
