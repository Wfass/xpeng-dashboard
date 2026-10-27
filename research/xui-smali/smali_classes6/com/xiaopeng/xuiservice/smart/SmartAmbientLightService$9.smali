.class Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$9;
.super Ljava/lang/Object;
.source "SmartAmbientLightService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->registerNewMediaStreamEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    .line 662
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayNewMediaStream()V
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService$9;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;->access$2100(Lcom/xiaopeng/xuiservice/smart/SmartAmbientLightService;)V

    .line 668
    :cond_0
    return-void
.end method
