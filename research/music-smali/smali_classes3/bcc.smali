.class public Lbcc;
.super Ljava/lang/Object;
.source "IpcReceiveModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcc$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lbcb;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lbcc;->b:Landroid/util/SparseArray;

    .line 51
    const-class v0, Lcom/xiaopeng/lib/framework/ipcmodule/IpcModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    iput-object v0, p0, Lbcc;->a:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    .line 52
    iget-object v0, p0, Lbcc;->a:Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService;->init()V

    .line 53
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Lbcc$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lbcc;-><init>()V

    return-void
.end method

.method public static a()Lbcc;
    .locals 1

    .line 57
    sget-object v0, Lbcc$a;->a:Lbcc;

    return-object v0
.end method

.method private a(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lbcc;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbcb;

    .line 163
    invoke-interface {v1, p1, p2, p3}, Lbcb;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 62
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->a()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  packageName:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpcReceiveModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getMsgID()I

    move-result v0

    .line 67
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getSenderPackageName()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object v4

    const/16 v5, 0x271a

    const/4 v6, 0x2

    const-string v7, "string_msg"

    if-eq v0, v5, :cond_4

    const/16 v1, 0x271b

    if-eq v0, v1, :cond_3

    const p1, 0xea61

    if-eq v0, p1, :cond_2

    const p1, 0x11171

    if-eq v0, p1, :cond_1

    const p1, 0xc3501

    if-eq v0, p1, :cond_0

    .line 148
    invoke-direct {p0, v0, v3, v4}, Lbcc;->a(ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 140
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/au;->a()V

    .line 141
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ax;

    invoke-direct {p1, v6}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ax;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 144
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$s;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$s;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->e(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 135
    :cond_2
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {}, Lbca;->a()Lbca;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbca;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {}, Lbca;->a()Lbca;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbca;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    const-class v0, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;

    if-nez p1, :cond_5

    const-string p1, "ChuXContentBean is unright!"

    .line 78
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x4e21

    if-ne v0, v2, :cond_6

    .line 85
    invoke-static {}, Lbca;->a()Lbca;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbca;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 86
    :cond_6
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65af

    if-ne v0, v2, :cond_7

    .line 87
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getValidStartTs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lbdx;->a(Ljava/lang/String;J)V

    goto/16 :goto_5

    .line 88
    :cond_7
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65b0

    if-eq v0, v2, :cond_14

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65b1

    if-ne v0, v2, :cond_8

    goto/16 :goto_4

    .line 93
    :cond_8
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65cc

    if-eq v0, v2, :cond_12

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65ce

    if-ne v0, v2, :cond_9

    goto/16 :goto_3

    .line 99
    :cond_9
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65d6

    if-eq v0, v2, :cond_10

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65d8

    if-eq v0, v2, :cond_10

    .line 100
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65d9

    if-eq v0, v2, :cond_10

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65da

    if-ne v0, v2, :cond_a

    goto/16 :goto_2

    .line 106
    :cond_a
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65e0

    if-eq v0, v2, :cond_e

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x65e2

    if-ne v0, v2, :cond_b

    goto :goto_1

    .line 112
    :cond_b
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x6979

    if-eq v0, v2, :cond_d

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getScene()I

    move-result v0

    const/16 v2, 0x697a

    if-ne v0, v2, :cond_c

    goto :goto_0

    .line 118
    :cond_c
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsi;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    if-eqz v0, :cond_15

    .line 120
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbsi;->onReceiveMqttMsg(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 113
    :cond_d
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 114
    const-class v0, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/aisuggest/SyncContent;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCommand: syncContent"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 107
    :cond_e
    :goto_1
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsf;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsf;

    if-eqz p1, :cond_f

    .line 109
    invoke-interface {p1}, Lbsf;->fetchUserInfo()V

    .line 111
    :cond_f
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_5

    .line 101
    :cond_10
    :goto_2
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsg;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsg;

    if-eqz p1, :cond_11

    .line 103
    invoke-interface {p1}, Lbsg;->fetchUserInfo()V

    .line 105
    :cond_11
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;

    invoke-direct {p1, v6}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_5

    .line 94
    :cond_12
    :goto_3
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsi;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsi;

    if-eqz p1, :cond_13

    .line 96
    invoke-interface {p1}, Lbsi;->sycUserInfoWithServer()V

    .line 98
    :cond_13
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_5

    .line 89
    :cond_14
    :goto_4
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsj;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsj;

    if-eqz v0, :cond_15

    .line 91
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/aisuggest/ChuXContentBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbsj;->onServerPush(Ljava/lang/String;)V

    :cond_15
    :goto_5
    return-void
.end method
