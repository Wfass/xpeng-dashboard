.class Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/configuration/internal/Connector;-><init>(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connector"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$100(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$000(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$100(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
