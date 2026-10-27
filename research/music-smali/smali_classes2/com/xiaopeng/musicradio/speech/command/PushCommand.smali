.class public Lcom/xiaopeng/musicradio/speech/command/PushCommand;
.super Lboy;
.source "PushCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PushCommand"


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lboy;-><init>(ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected a(ILorg/json/JSONObject;)V
    .locals 5

    .line 44
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->a()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  packageName"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushCommand"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_16

    const/16 v0, 0x271a

    const/4 v2, 0x2

    const-string v3, "string_msg"

    if-eq p1, v0, :cond_2

    const/16 v0, 0x271b

    if-eq p1, v0, :cond_1

    const p2, 0xc3501

    if-eq p1, p2, :cond_0

    goto/16 :goto_6

    .line 126
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    .line 127
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ax;

    invoke-direct {p1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ax;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 50
    :cond_1
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 51
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {}, Lbca;->a()Lbca;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbca;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 56
    :cond_2
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 57
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    const-class p2, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;

    if-nez p1, :cond_3

    const-string p1, "ChuXContentBean is unright!"

    .line 60
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEvent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x4e21

    if-ne p2, v0, :cond_4

    .line 67
    invoke-static {}, Lbca;->a()Lbca;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lbca;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 68
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65af

    if-ne p2, v0, :cond_5

    .line 69
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getValidStartTs()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lbdx;->a(Ljava/lang/String;J)V

    goto/16 :goto_6

    .line 70
    :cond_5
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65b0

    if-eq p2, v0, :cond_15

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65b1

    if-ne p2, v0, :cond_6

    goto/16 :goto_5

    .line 75
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65cc

    const/4 v3, 0x1

    if-eq p2, v0, :cond_13

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65ce

    if-ne p2, v0, :cond_7

    goto/16 :goto_4

    .line 81
    :cond_7
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65d6

    if-eq p2, v0, :cond_11

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65d8

    if-eq p2, v0, :cond_11

    .line 82
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65d9

    if-eq p2, v0, :cond_11

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65da

    if-ne p2, v0, :cond_8

    goto/16 :goto_3

    .line 88
    :cond_8
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65e0

    if-eq p2, v0, :cond_f

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x65e2

    if-ne p2, v0, :cond_9

    goto/16 :goto_2

    .line 94
    :cond_9
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v0, 0x6979

    if-eq p2, v0, :cond_b

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p2

    const/16 v2, 0x697a

    if-ne p2, v2, :cond_a

    goto :goto_0

    .line 115
    :cond_a
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class v0, Lbsi;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbsi;

    if-eqz p2, :cond_16

    .line 117
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lbsi;->onReceiveMqttMsg(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 95
    :cond_b
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p2

    .line 96
    const-class v2, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;

    invoke-static {p2, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCommand: syncContent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_e

    .line 98
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->getData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_1

    .line 101
    :cond_c
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->getData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "musicSource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->getData()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 102
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p1

    if-ne p1, v0, :cond_16

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lbfc;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfc;

    .line 104
    invoke-interface {p1}, Lbfc;->fetchCollectedAlbum()V

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lbfd;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbfd;

    .line 106
    invoke-interface {p1, v3}, Lbfd;->checkoutDataCollect(I)V

    goto/16 :goto_6

    .line 108
    :cond_d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;->getData()Ljava/lang/String;

    move-result-object p2

    const-string v1, "2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 109
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result p1

    if-ne p1, v0, :cond_16

    .line 110
    invoke-static {}, Lbee;->a()Lbee;

    move-result-object p1

    invoke-virtual {p1}, Lbee;->d()V

    goto :goto_6

    :cond_e
    :goto_1
    return-void

    .line 89
    :cond_f
    :goto_2
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lbsf;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsf;

    if-eqz p1, :cond_10

    .line 91
    invoke-interface {p1}, Lbsf;->fetchUserInfo()V

    .line 93
    :cond_10
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_6

    .line 83
    :cond_11
    :goto_3
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lbsg;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsg;

    if-eqz p1, :cond_12

    .line 85
    invoke-interface {p1}, Lbsg;->fetchUserInfo()V

    .line 87
    :cond_12
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;

    invoke-direct {p1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_6

    .line 76
    :cond_13
    :goto_4
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lbsi;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsi;

    if-eqz p1, :cond_14

    .line 78
    invoke-interface {p1}, Lbsi;->sycUserInfoWithServer()V

    .line 80
    :cond_14
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;

    invoke-direct {p1, v3}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_6

    .line 71
    :cond_15
    :goto_5
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class v0, Lbsj;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbsj;

    if-eqz p2, :cond_16

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lbsj;->onServerPush(Ljava/lang/String;)V

    :cond_16
    :goto_6
    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "PushCommand"

    return-object v0
.end method
