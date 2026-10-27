.class Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$1;
.super Ljava/lang/Object;
.source "LightLanuageService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "errCode"    # I

    .line 80
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 83
    .local v0, "result":[Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "LightLanuage"

    const-string v3, "onError"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 87
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 72
    .local v0, "result":[Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "LightLanuage"

    const-string v3, "onFinish"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 50
    .local v0, "result":[Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "LightLanuage"

    const-string v3, "onStart"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 54
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 61
    .local v0, "result":[Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/LightLanuageService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "LightLanuage"

    const-string v3, "onStop"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    return-void
.end method
