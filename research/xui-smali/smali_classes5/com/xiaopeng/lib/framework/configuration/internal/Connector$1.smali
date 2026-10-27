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
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 50
    const-string v0, "Connector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$100(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$000(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Connector$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Connector;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Connector;->access$100(Lcom/xiaopeng/lib/framework/configuration/internal/Connector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 56
    nop

    .line 63
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
