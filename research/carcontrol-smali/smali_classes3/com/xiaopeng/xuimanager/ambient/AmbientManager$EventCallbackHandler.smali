.class final Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "AmbientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambient/AmbientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/ambient/AmbientManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/ambient/AmbientManager;Landroid/os/Looper;)V
    .locals 0

    .line 1041
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1042
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventCallbackHandler;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1047
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;

    .line 1048
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1050
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->access$400()Ljava/util/Set;

    move-result-object v4

    monitor-enter v4

    .line 1051
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->access$400()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1052
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;

    .line 1054
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 1101
    :pswitch_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 1102
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onErrorSet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1103
    :cond_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    .line 1104
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onErrorSub(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1076
    :pswitch_1
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    if-eqz v1, :cond_3

    .line 1078
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onErrorFlowingPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 1080
    :cond_3
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onErrorPlay(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1082
    :cond_4
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    if-eqz v1, :cond_5

    .line 1084
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onErrorFlowingStop(Ljava/lang/String;)V

    goto :goto_1

    .line 1086
    :cond_5
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onErrorStop(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1139
    :pswitch_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeRegionBright(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1135
    :pswitch_3
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v9

    invoke-static {v9}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->makeColor(I)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v9

    .line 1134
    invoke-interface {v6, v7, v8, v9}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeRegionColor(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/ambient/Color;)V

    goto/16 :goto_1

    .line 1131
    :pswitch_4
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeThemeColor(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1125
    :pswitch_5
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/Pair;

    .line 1126
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->makeColor(I)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v9

    .line 1127
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v10

    invoke-static {v10}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->makeColor(I)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1125
    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeDoubleColor(Ljava/lang/String;Landroid/util/Pair;)V

    goto/16 :goto_1

    :pswitch_6
    if-eqz v1, :cond_6

    .line 1119
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    invoke-static {v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->makeColor(I)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeFlowingColor(Lcom/xiaopeng/xuimanager/ambient/Color;)V

    goto/16 :goto_1

    .line 1121
    :cond_6
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v8

    invoke-static {v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->makeColor(I)Lcom/xiaopeng/xuimanager/ambient/Color;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeMonoColor(Ljava/lang/String;Lcom/xiaopeng/xuimanager/ambient/Color;)V

    goto/16 :goto_1

    .line 1115
    :pswitch_7
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeColorType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    if-eqz v1, :cond_7

    .line 1109
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeFlowingBright(I)V

    goto/16 :goto_1

    .line 1111
    :cond_7
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeBright(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1098
    :pswitch_9
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onSubMode(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1091
    :pswitch_a
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    if-nez v7, :cond_8

    .line 1092
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeMode(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1094
    :cond_8
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onAddMode(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    if-eqz v1, :cond_9

    .line 1070
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onStopFlowingEffect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1072
    :cond_9
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onStopEffect(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    if-eqz v1, :cond_a

    .line 1063
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onPlayFlowingEffect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1065
    :cond_a
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$300(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$600(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onPlayEffect(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1059
    :pswitch_d
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    if-ne v7, v3, :cond_b

    move v7, v3

    goto :goto_2

    :cond_b
    move v7, v2

    :goto_2
    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onChangeAmbientLightEnable(Z)V

    goto/16 :goto_1

    .line 1056
    :pswitch_e
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;->access$500(Lcom/xiaopeng/xuimanager/ambient/AmbientManager$AmbientMessage;)I

    move-result v7

    if-ne v7, v3, :cond_c

    move v7, v3

    goto :goto_3

    :cond_c
    move v7, v2

    :goto_3
    invoke-interface {v6, v7}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager$EventListener;->onRequestAmbientLight(Z)V

    goto/16 :goto_1

    .line 1143
    :cond_d
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
