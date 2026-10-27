.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;
.super Landroid/database/ContentObserver;
.source "XpAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->registerObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 1111
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1114
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "atl_speaker"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Z)Z

    .line 1116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$2600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    nop

    :cond_2
    :goto_1
    invoke-static {v0, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1102(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;I)I

    .line 1118
    const-string v0, "XpAmbientLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange, hasSwitchOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$7100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$1100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    return-void
.end method
