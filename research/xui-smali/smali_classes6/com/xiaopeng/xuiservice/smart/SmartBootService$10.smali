.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$10;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->registerNewMediaStreamEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 632
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayNewMediaStream()V
    .locals 6

    .line 636
    const-string v0, "SmartBootService"

    const-string v1, "onPlayNewMediaStream"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3300(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3400(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$10;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$3500(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    :cond_0
    return-void
.end method
