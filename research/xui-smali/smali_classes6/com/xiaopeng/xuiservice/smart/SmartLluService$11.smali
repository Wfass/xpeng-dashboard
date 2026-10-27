.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;
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

    .line 1875
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1877
    const-string v0, "SmartLluService"

    const-string v1, "llu_timeout_thread"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    .line 1879
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2902(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 1882
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 1883
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1889
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v3, 0x3

    invoke-static {v0, v3, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;IZ)V

    .line 1890
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$SmartLluServiceListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1891
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3602(Z)Z

    .line 1892
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v2, v4, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3900(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1894
    :cond_2
    return-void

    .line 1884
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3302(Z)Z

    .line 1885
    const-string v0, "SmartLluService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "llu_timeout_thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$11;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    return-void
.end method
