.class Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;
.super Landroid/os/Handler;
.source "XpAmbientLightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 2695
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2698
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2768
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;

    .line 2770
    .local v0, "bilog":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->submit()V

    .end local v0    # "bilog":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;
    goto/16 :goto_0

    .line 2764
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2765
    .local v0, "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$11500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2766
    goto/16 :goto_0

    .line 2760
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2761
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$11400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2762
    goto/16 :goto_0

    .line 2756
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2757
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$11300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    goto/16 :goto_0

    .line 2752
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2753
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->color:Landroid/util/Pair;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$11200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Landroid/util/Pair;Ljava/lang/String;)V

    .line 2754
    goto/16 :goto_0

    .line 2744
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2745
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2746
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$11000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2748
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$11100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;ILjava/lang/String;)V

    .line 2750
    goto/16 :goto_0

    .line 2740
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2741
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    goto/16 :goto_0

    .line 2732
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2733
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2734
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10700(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2736
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->data:I

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10800(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;ILjava/lang/String;)V

    .line 2738
    goto/16 :goto_0

    .line 2728
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2729
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10600(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    goto :goto_0

    .line 2724
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2725
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata2:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10500(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    goto :goto_0

    .line 2716
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2717
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-boolean v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->status:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2718
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10300(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V

    goto :goto_0

    .line 2720
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10400(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;)V

    .line 2722
    goto :goto_0

    .line 2708
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2709
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->flowingTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    if-eqz v1, :cond_3

    .line 2710
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->flowingTask:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10100(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$FlowingEffectTask;Ljava/lang/String;)V

    goto :goto_0

    .line 2712
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->sdata:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->effect:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10200(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;Ljava/lang/String;Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$Effect;Ljava/lang/String;)V

    .line 2714
    goto :goto_0

    .line 2704
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2705
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-boolean v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->status:Z

    iget-boolean v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->hasManual:Z

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$10000(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZZLjava/lang/String;)V

    .line 2706
    goto :goto_0

    .line 2700
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;

    .line 2701
    .restart local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$8;->this$0:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;

    iget-boolean v2, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->status:Z

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;->access$9900(Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService;ZLjava/lang/String;)V

    .line 2702
    nop

    .line 2773
    .end local v0    # "message":Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$AmbientMessage;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
