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
    .locals 6
    .param p1, "inserts"    # [Ljava/lang/Object;

    .line 192
    if-nez p1, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 197
    aget-object v1, p1, v0

    .line 198
    .local v1, "ex":Ljava/lang/Object;
    if-eqz v1, :cond_3

    instance-of v2, v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v2, :cond_3

    .line 199
    move-object v2, v1

    check-cast v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getReasonCode()I

    move-result v2

    .line 200
    .local v2, "reasonCode":I
    move-object v3, v1

    check-cast v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 201
    .local v3, "throwable":Ljava/lang/Throwable;
    const/16 v4, 0x7d65

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7d66

    if-eq v2, v4, :cond_2

    const/16 v4, 0x7d6d

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 206
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 204
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 196
    .end local v1    # "ex":Ljava/lang/Object;
    .end local v2    # "reasonCode":I
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method private logInternal(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "julLevel"    # Ljava/util/logging/Level;
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "inserts"    # [Ljava/lang/Object;
    .param p6, "thrown"    # Ljava/lang/Throwable;

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

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "message":Ljava/lang/String;
    invoke-direct {p0, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->checkException([Ljava/lang/Object;)V

    .line 179
    if-eqz p6, :cond_2

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v0, p6}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method private mapJULLevel(I)Ljava/util/logging/Level;
    .locals 1
    .param p1, "level"    # I

    .line 214
    const/4 v0, 0x0

    .line 216
    .local v0, "julLevel":Ljava/util/logging/Level;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 237
    goto :goto_0

    .line 233
    :pswitch_1
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 234
    goto :goto_0

    .line 230
    :pswitch_2
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 231
    goto :goto_0

    .line 227
    :pswitch_3
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 228
    goto :goto_0

    .line 224
    :pswitch_4
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 225
    goto :goto_0

    .line 221
    :pswitch_5
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 222
    goto :goto_0

    .line 218
    :pswitch_6
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 219
    nop

    .line 242
    :goto_0
    return-object v0

    nop

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;
    .param p5, "thrown"    # Ljava/lang/Throwable;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;
    .param p5, "ex"    # Ljava/lang/Throwable;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;
    .param p5, "ex"    # Ljava/lang/Throwable;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;
    .param p5, "ex"    # Ljava/lang/Throwable;

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
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "inserts"    # [Ljava/lang/Object;

    .line 247
    return-object p1
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;
    .param p5, "thrown"    # Ljava/lang/Throwable;

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
    .locals 2
    .param p1, "logMsgCatalog"    # Ljava/util/ResourceBundle;
    .param p2, "loggerID"    # Ljava/lang/String;
    .param p3, "resourceContext"    # Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getCurrentChannelProfile()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;

    move-result-object v0

    .line 32
    .local v0, "profile":Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;
    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->getAcceptedLogList()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mAcceptMsgId:Ljava/util/Set;

    .line 33
    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/profile/AbstractChannelProfile;->logTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mLogTag:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public isLoggable(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "inserts"    # [Ljava/lang/Object;
    .param p6, "thrown"    # Ljava/lang/Throwable;

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mapJULLevel(I)Ljava/util/logging/Level;

    move-result-object v7

    .line 108
    .local v7, "julLevel":Ljava/util/logging/Level;
    move-object v0, p0

    move-object v1, v7

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
    .param p1, "logContext"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;
    .param p5, "thrown"    # Ljava/lang/Throwable;

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
    .locals 8
    .param p1, "level"    # I
    .param p2, "sourceClass"    # Ljava/lang/String;
    .param p3, "sourceMethod"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "inserts"    # [Ljava/lang/Object;
    .param p6, "ex"    # Ljava/lang/Throwable;

    .line 158
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/LoggerImpl;->mapJULLevel(I)Ljava/util/logging/Level;

    move-result-object v7

    .line 159
    .local v7, "julLevel":Ljava/util/logging/Level;
    move-object v0, p0

    move-object v1, v7

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;

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
    .param p1, "sourceClass"    # Ljava/lang/String;
    .param p2, "sourceMethod"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inserts"    # [Ljava/lang/Object;
    .param p5, "thrown"    # Ljava/lang/Throwable;

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
