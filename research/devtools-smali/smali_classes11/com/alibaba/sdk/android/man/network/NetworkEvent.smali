.class public Lcom/alibaba/sdk/android/man/network/NetworkEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MAN_NetworkEvent"


# instance fields
.field private connectTime:J

.field private firstByteRT:J

.field private loadBytes:J

.field property:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestRT:J

.field private requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

.field private requestTimeStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    .line 28
    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestRT:J

    .line 29
    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->connectTime:J

    .line 30
    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->loadBytes:J

    return-void
.end method


# virtual methods
.method public addMANEventProperty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 39
    :goto_0
    return-void
.end method

.method public connectionEnd()V
    .locals 4

    .line 46
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->connectTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->connectTime:J

    .line 50
    const-string v0, "MAN_NetworkEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[connectionEnd] requestTimeStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public firstByteEnd()V
    .locals 4

    .line 54
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    .line 58
    const-string v0, "MAN_NetworkEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[firstByteEnd] - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/man/util/MANLog;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public isAdvancedStat()Z
    .locals 4

    .line 149
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->connectTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDefineErrorCode(I)Z
    .locals 1

    .line 157
    const/16 v0, 0x3e9

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3f2

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x7d1

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7da

    if-gt p1, v0, :cond_2

    .line 158
    :cond_1
    const/4 p1, 0x1

    return p1

    .line 160
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public reportNetworkInfo()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    sget-object v1, Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;->a:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    if-ne v0, v1, :cond_1

    .line 135
    const/16 v0, 0xbba

    const-string v1, "MAS_NET_SIG_REQUEST"

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/man/util/EventCommitTool;->commitEvent(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    sget-object v1, Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;->b:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    if-ne v0, v1, :cond_2

    .line 137
    const/16 v0, 0xbbc

    const-string v1, "MAS_NET_ERR"

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/man/util/EventCommitTool;->commitEvent(ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    sget-object v1, Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;->c:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    if-ne v0, v1, :cond_3

    .line 139
    return-void

    .line 141
    :cond_3
    :goto_0
    return-void
.end method

.method public requestEndNormally(J)V
    .locals 4

    .line 93
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestRT:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 98
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->loadBytes:J

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestRT:J

    .line 101
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    if-nez p1, :cond_1

    .line 102
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string p2, "Host"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string p2, "Host"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isHost(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/alibaba/sdk/android/man/util/ToolKit;->isIp(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 108
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string p2, "Host"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    iget-wide p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->connectTime:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    .line 112
    const-string p1, "man"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->connectTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string p2, "singleConnectTime"

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->connectTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    iget-wide p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_4

    .line 116
    const-string p1, "man"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string p2, "firstPacketRT"

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->firstByteRT:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_4
    iget-wide p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestRT:J

    cmp-long p1, p1, v2

    if-eqz p1, :cond_5

    .line 120
    const-string p1, "man"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestRT:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string p2, "singleRequestRT"

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestRT:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_5
    iget-wide p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->loadBytes:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_6

    .line 124
    const-string p1, "man"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadBytes: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->loadBytes:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string p2, "singleRequestBytes"

    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->loadBytes:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_6
    sget-object p1, Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;->a:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    .line 128
    return-void

    .line 94
    :cond_7
    :goto_0
    const-string p1, "MAN_NetworkEvent"

    const-string p2, "[requestEnd] - illegal state"

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/man/util/MANLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object p1, Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;->c:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    .line 96
    return-void
.end method

.method public requestEndWithError(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 67
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    if-eqz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    goto :goto_1

    .line 74
    :cond_3
    iput-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    .line 78
    :goto_1
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string v0, "ErrorCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 79
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string v0, "ErrorCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 81
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->isDefineErrorCode(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 83
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string v0, "ErrorCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_4
    goto :goto_2

    .line 85
    :catch_0
    move-exception p1

    .line 86
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->property:Ljava/util/Map;

    const-string v0, "ErrorCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_5
    :goto_2
    sget-object p1, Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;->b:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    .line 90
    return-void

    .line 63
    :cond_6
    :goto_3
    sget-object p1, Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;->c:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    iput-object p1, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestStatus:Lcom/alibaba/sdk/android/man/network/NetworkEvent$a;

    .line 64
    return-void
.end method

.method public requestStart()V
    .locals 2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/network/NetworkEvent;->requestTimeStart:J

    .line 43
    return-void
.end method
