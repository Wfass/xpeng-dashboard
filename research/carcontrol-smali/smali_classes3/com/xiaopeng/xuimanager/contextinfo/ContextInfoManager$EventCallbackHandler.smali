.class final Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "ContextInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Landroid/os/Looper;)V
    .locals 0

    .line 2090
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2091
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2100
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$EventCallbackHandler;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;

    .line 2101
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event type not handled?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContextInfoManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    if-eqz v0, :cond_0

    .line 2176
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    .line 2330
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V

    goto/16 :goto_0

    :pswitch_2
    if-eqz v0, :cond_0

    .line 2325
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz v0, :cond_0

    .line 2320
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz v0, :cond_0

    .line 2200
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_5
    if-eqz v0, :cond_0

    .line 2302
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_6
    if-eqz v0, :cond_0

    .line 2296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_7
    if-eqz v0, :cond_0

    .line 2290
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    goto/16 :goto_0

    :pswitch_8
    if-eqz v0, :cond_0

    .line 2284
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    goto/16 :goto_0

    :pswitch_9
    if-eqz v0, :cond_0

    .line 2278
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_a
    if-eqz v0, :cond_0

    .line 2272
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_b
    if-eqz v0, :cond_0

    .line 2266
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$3000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_c
    if-eqz v0, :cond_0

    .line 2260
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_d
    if-eqz v0, :cond_0

    .line 2254
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_e
    if-eqz v0, :cond_0

    .line 2248
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    goto/16 :goto_0

    :pswitch_f
    if-eqz v0, :cond_0

    .line 2242
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    goto/16 :goto_0

    :pswitch_10
    if-eqz v0, :cond_0

    .line 2236
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_11
    if-eqz v0, :cond_0

    .line 2230
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_12
    if-eqz v0, :cond_0

    .line 2224
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    goto/16 :goto_0

    :pswitch_13
    if-eqz v0, :cond_0

    .line 2218
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    goto/16 :goto_0

    :pswitch_14
    if-eqz v0, :cond_0

    .line 2212
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_15
    if-eqz v0, :cond_0

    .line 2206
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$2000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V

    goto/16 :goto_0

    :pswitch_16
    if-eqz v0, :cond_0

    .line 2194
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    if-eqz v0, :cond_0

    .line 2188
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;I)V

    goto/16 :goto_0

    :pswitch_18
    if-eqz v0, :cond_0

    .line 2182
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Z)V

    goto/16 :goto_0

    :pswitch_19
    if-eqz v0, :cond_0

    .line 2170
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    if-eqz v0, :cond_0

    .line 2164
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Location;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V

    goto/16 :goto_0

    :pswitch_1b
    if-eqz v0, :cond_0

    .line 2158
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Cross;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V

    goto/16 :goto_0

    :pswitch_1c
    if-eqz v0, :cond_0

    .line 2153
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1100(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V

    goto/16 :goto_0

    :pswitch_1d
    if-eqz v0, :cond_0

    .line 2148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$1000(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V

    goto/16 :goto_0

    :pswitch_1e
    if-eqz v0, :cond_0

    .line 2142
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$900(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V

    goto :goto_0

    :pswitch_1f
    if-eqz v0, :cond_0

    .line 2137
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Lane;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$800(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V

    goto :goto_0

    :pswitch_20
    if-eqz v0, :cond_0

    .line 2132
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Navi;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$700(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V

    goto :goto_0

    :pswitch_21
    if-eqz v0, :cond_0

    .line 2126
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$600(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V

    goto :goto_0

    :pswitch_22
    if-eqz v0, :cond_0

    .line 2120
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$500(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V

    goto :goto_0

    :pswitch_23
    if-eqz v0, :cond_0

    .line 2114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$400(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V

    goto :goto_0

    :pswitch_24
    if-eqz v0, :cond_0

    .line 2109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$300(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;F)V

    goto :goto_0

    :pswitch_25
    if-eqz v0, :cond_0

    .line 2104
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;->access$200(Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager;II)V

    :cond_0
    :goto_0
    :pswitch_26
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_26
        :pswitch_26
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
