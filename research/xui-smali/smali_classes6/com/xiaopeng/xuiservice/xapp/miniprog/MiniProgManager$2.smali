.class Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;
.super Ljava/lang/Object;
.source "MiniProgManager.java"

# interfaces
.implements Lcom/alipay/arome/aromecli/AromeInit$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->initArome()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postInit(ZILjava/lang/String;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 136
    const-string v0, "MiniProgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arome init finish =\u300b is success\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$100(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$200(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;Z)V

    .line 141
    const-string v0, "MiniProgManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHasInitArome:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$100(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 143
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v3, 0x6

    invoke-static {v2, v3, p2, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$000(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;IIJ)V

    .line 147
    :goto_0
    return-void
.end method

.method public serverDied()V
    .locals 2

    .line 151
    const-string v0, "MiniProgManager"

    const-string v1, "Arome init fail =\u300b serverDied"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;->access$200(Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniProgManager;Z)V

    .line 153
    return-void
.end method
