.class Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;
.super Landroid/os/Handler;
.source "XpMakeupLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 661
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 664
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 678
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$800(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Z)V

    goto :goto_0

    .line 675
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$700(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;)V

    .line 676
    goto :goto_0

    .line 672
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$600(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;I)V

    .line 673
    goto :goto_0

    .line 669
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$500(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;I)V

    .line 670
    goto :goto_0

    .line 666
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$400(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$ColorTemperature;I)V

    .line 667
    nop

    .line 682
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$3;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;->access$900(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Landroid/os/Message;)V

    .line 683
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
