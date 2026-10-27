.class public Lcom/xiaopeng/datalog/stat/StatMqttDelegate;
.super Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;
.source "StatMqttDelegate.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;
    }
.end annotation


# static fields
.field private static final MSG_UPLOAD_CAN:I = 0x1

.field private static final MSG_UPLOAD_CDU:I = 0x2

.field private static final MSG_UPLOAD_CDU_IMMEDIATELY:I = 0x3

.field private static final MSG_UPLOAD_CDU_WITH_FILES:I = 0x4

.field private static final MSG_UPLOAD_FILES:I = 0x5

.field private static final MSG_UPLOAD_LOG_ORIGIN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "StatMqttDelegate"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->init(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StatMqttDelegate"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 42
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/datalog/stat/StatMqttDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->uploadCdu(Ljava/lang/String;)V

    return-void
.end method

.method private uploadCdu(Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 74
    .restart local v0    # "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 185
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .local v1, "eventName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, "data":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    goto :goto_0

    .line 179
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 180
    .local v0, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadFiles(Ljava/util/List;)V

    .line 181
    goto :goto_0

    .line 174
    .end local v0    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;

    .line 175
    .local v0, "args":Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    iget-object v3, v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;->event:Lcom/xiaopeng/datalog/StatEvent;

    iget-object v4, v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;->filePaths:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduWithFiles(Lcom/xiaopeng/datalog/StatEvent;Ljava/util/List;)V

    .line 176
    goto :goto_0

    .line 167
    .end local v0    # "args":Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 168
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .restart local v1    # "eventName":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 170
    .restart local v3    # "data":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    goto :goto_0

    .line 162
    .end local v0    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, "data":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCdu(Ljava/lang/String;)V

    .line 164
    goto :goto_0

    .line 157
    .end local v0    # "data":Ljava/lang/String;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 158
    .restart local v0    # "data":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCan(Ljava/lang/String;)V

    .line 159
    nop

    .line 194
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public uploadCan(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 86
    .restart local v0    # "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    .line 59
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$2;-><init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    .line 48
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;-><init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 55
    return-void
.end method

.method public uploadCduWithFiles(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V
    .locals 5
    .param p1, "event"    # Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p2, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;

    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/datalog/StatEvent;

    invoke-direct {v0, p0, v1, p2}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;-><init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/datalog/StatEvent;Ljava/util/List;)V

    .line 119
    .local v0, "args":Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 121
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 122
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 124
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public uploadFiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    .end local v0    # "message":Landroid/os/Message;
    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 136
    .restart local v0    # "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 96
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 99
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 108
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 109
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 111
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public uploadRecentSystemLog()Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadRecentSystemLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
