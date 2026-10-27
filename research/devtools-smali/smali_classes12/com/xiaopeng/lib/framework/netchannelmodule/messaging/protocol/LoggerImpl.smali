.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;
.super Ljava/lang/Object;
.source "LoggerImpl.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private mAcceptMsgId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLogTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkException([Ljava/lang/Object;)V
    .locals 3

    .line 192
    if-nez p1, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 197
    aget-object v1, p1, v0

    .line 198
    if-eqz v1, :cond_3

    instance-of v2, v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v2, :cond_3

    .line 199
    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result p1

    .line 200
    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 201
    const/16 v2, 0x7d65

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7d66

    if-eq p1, v2, :cond_2

    const/16 v2, 0x7d6d

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    if-nez p1, :cond_4

    if-eqz v0, :cond_4

    .line 206
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 204
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 196
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_4
    :goto_2
    return-void
.end method

.method private logInternal(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 164
    if-nez p4, :cond_0

    .line 165
    return-void

    .line 168
    :cond_0
    if-nez p6, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mAcceptMsgId:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mAcceptMsgId:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    return-void

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-direct {p0, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->checkException([Ljava/lang/Object;)V

    .line 179
    if-eqz p6, :cond_2

    .line 181
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mLogTag:Ljava/lang/String;

    invoke-static {p2, p1, p6}, Lcom/xiaopeng/lib/utils/c;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void

    .line 185
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mLogTag:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private mapJULLevel(I)Ljava/util/logging/Level;
    .locals 0

    .line 214
    nop

    .line 216
    packed-switch p1, :pswitch_data_0

    .line 242
    const/4 p1, 0x0

    goto :goto_0

    .line 236
    :pswitch_0
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 237
    goto :goto_0

    .line 233
    :pswitch_1
    sget-object p1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 234
    goto :goto_0

    .line 230
    :pswitch_2
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 231
    goto :goto_0

    .line 227
    :pswitch_3
    sget-object p1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 228
    goto :goto_0

    .line 224
    :pswitch_4
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 225
    goto :goto_0

    .line 221
    :pswitch_5
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 222
    goto :goto_0

    .line 218
    :pswitch_6
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 219
    nop

    .line 242
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 92
    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 97
    const/4 v1, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 102
    const/4 v1, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    return-void
.end method

.method public dumpTrace()V
    .locals 0

    .line 251
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 113
    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 118
    const/4 v1, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

.method public fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 123
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 128
    const/4 v1, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 129
    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 133
    const/4 v1, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 134
    return-void
.end method

.method public finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 138
    const/4 v1, 0x6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 139
    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 143
    const/4 v1, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 148
    const/4 v1, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method

.method public finest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 153
    const/4 v1, 0x7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public formatMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 247
    return-object p1
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 77
    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 82
    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 87
    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public initialise(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getCurrentChannelProfile()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->getAcceptedLogList()Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mAcceptMsgId:Ljava/util/Set;

    .line 33
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->logTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mLogTag:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public isLoggable(I)Z
    .locals 0

    .line 42
    const/4 p1, 0x1

    return p1
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mapJULLevel(I)Ljava/util/logging/Level;

    move-result-object v1

    .line 108
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->logInternal(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .line 38
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 47
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 52
    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 53
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 57
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

.method public trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 158
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mapJULLevel(I)Ljava/util/logging/Level;

    move-result-object v1

    .line 159
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->logInternal(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 62
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 67
    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    .line 72
    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method
