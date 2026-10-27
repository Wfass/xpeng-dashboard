.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;
.super Landroid/os/Handler;
.source "XpSeatMassagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 1999
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2002
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2041
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2038
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$3600(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;I)V

    .line 2039
    goto/16 :goto_0

    .line 2035
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$3500(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;I)V

    .line 2036
    goto/16 :goto_0

    .line 2031
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 2032
    .local v0, "vibrate":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->ids:Ljava/util/List;

    iget-boolean v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->enable:Z

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$3400(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;ZLjava/lang/String;)V

    .line 2033
    goto :goto_0

    .line 2028
    .end local v0    # "vibrate":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$3300(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;I)V

    .line 2029
    goto :goto_0

    .line 2025
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$3200(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V

    .line 2026
    goto :goto_0

    .line 2019
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;

    .line 2020
    .restart local v0    # "vibrate":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->seats:Ljava/util/List;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->effect:Ljava/lang/String;

    iget v4, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->loop:I

    iget v5, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->position:I

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;->owner:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$3100(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;Ljava/lang/String;IILjava/lang/String;)V

    .line 2023
    goto :goto_0

    .line 2015
    .end local v0    # "vibrate":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Vibrate;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 2016
    .local v0, "massager":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->ids:Ljava/util/List;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->sdata:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$3000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;ILjava/lang/String;)V

    .line 2017
    goto :goto_0

    .line 2011
    .end local v0    # "massager":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 2012
    .restart local v0    # "massager":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->ids:Ljava/util/List;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->sdata:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2900(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    goto :goto_0

    .line 2008
    .end local v0    # "massager":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2800(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;)V

    .line 2009
    goto :goto_0

    .line 2004
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;

    .line 2005
    .restart local v0    # "massager":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$4;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->seats:Ljava/util/List;

    iget-object v3, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->sdata:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;->owner:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$2700(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    nop

    .line 2043
    .end local v0    # "massager":Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$Massager;
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
