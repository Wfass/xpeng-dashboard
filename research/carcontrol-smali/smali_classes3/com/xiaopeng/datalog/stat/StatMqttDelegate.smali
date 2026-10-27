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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/AbstractStatDelegate;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->init(Landroid/content/Context;)V

    .line 40
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "StatMqttDelegate"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->uploadCdu(Ljava/lang/String;)V

    return-void
.end method

.method private uploadCdu(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

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

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 180
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadFiles(Ljava/util/List;)V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;

    .line 175
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;->event:Lcom/xiaopeng/datalog/StatEvent;

    iget-object p1, p1, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;->filePaths:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCduWithFiles(Lcom/xiaopeng/datalog/StatEvent;Ljava/util/List;)V

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 168
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 170
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCdu(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->uploadCan(Ljava/lang/String;)V

    :goto_0
    return v2

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

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

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$2;-><init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method public uploadCdu(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$1;-><init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method public uploadCduWithFiles(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "filePaths"
        }
    .end annotation

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
    new-instance v0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;

    check-cast p1, Lcom/xiaopeng/datalog/StatEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;-><init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/datalog/StatEvent;Ljava/util/List;)V

    .line 119
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result p1

    const/4 p2, 0x4

    if-nez p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 124
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public uploadFiles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public uploadLogImmediately(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 93
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result p2

    const/4 v0, 0x3

    if-nez p2, :cond_0

    .line 95
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public uploadLogOrigin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "data"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 105
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-static {}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->getInstance()Lcom/xiaopeng/datalog/stat/DataCollectorHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/datalog/stat/DataCollectorHelper;->isConnected()Z

    move-result p2

    const/4 v0, 0x6

    if-nez p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-static {p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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
