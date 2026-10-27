.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;
.super Ljava/lang/Object;
.source "AmbientLightHalService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 174
    const-string v0, "AmbientLightHalService"

    const-string v2, "music_spectrum_timeout_thread"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$200(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v2

    :goto_0
    int-to-byte v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;)I

    move-result v3

    if-ne v3, v1, :cond_1

    const/16 v1, 0x1e

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    int-to-byte v1, v1

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLight;->setMusicSpectrumEffect(BBB)V

    .line 178
    :cond_2
    return-void
.end method
