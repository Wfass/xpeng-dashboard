.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;
.super Landroid/os/Handler;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    .line 2017
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2020
    const-string v0, "LluHandlerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage  msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2048
    const-string v0, "LluHandlerThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event type not handled?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2044
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;IZ)V

    .line 2045
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v0, v2, v2, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;IIZ)V

    .line 2046
    goto :goto_0

    .line 2041
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doStopLightEffectShow()V

    .line 2042
    goto :goto_0

    .line 2037
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;I)V

    .line 2038
    goto :goto_0

    .line 2033
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->access$4302(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    .line 2034
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->access$4300(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->getLanglightEffect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->access$4300(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->getLoop()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/LangLightEffect;I)V

    .line 2035
    goto :goto_0

    .line 2028
    :pswitch_4
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4202(Ljava/lang/String;)Ljava/lang/String;

    .line 2029
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->access$4302(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    .line 2030
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->access$4300(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->getDanceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Ljava/lang/String;)V

    .line 2031
    goto :goto_0

    .line 2023
    :pswitch_5
    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4202(Ljava/lang/String;)Ljava/lang/String;

    .line 2024
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->access$4302(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    .line 2025
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread$1;->this$1:Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;->access$4300(Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluHandlerThread;)Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LluPlayClass;->getLanglightEffect()Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V

    .line 2026
    nop

    .line 2051
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
