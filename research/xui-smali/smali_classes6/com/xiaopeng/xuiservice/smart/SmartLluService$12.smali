.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$12;
.super Ljava/lang/Object;
.source "SmartLluService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 1897
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1899
    const-string v0, "SmartLluService"

    const-string v1, "llu_stop_timeout_thread"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 1903
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 1905
    :cond_0
    return-void
.end method
