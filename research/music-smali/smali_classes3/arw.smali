.class public Larw;
.super Ljava/lang/Object;
.source "CommonEventBusIndexes.java"

# interfaces
.implements Lorg/greenrobot/eventbus/meta/SubscriberInfoIndex;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Larw;->a:Ljava/util/Map;

    .line 20
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "dealNetValid"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 26
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbdv;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasj$s;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "receiveLogout"

    invoke-direct {v6, v9, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasj$m;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "receiveMusicBinded"

    invoke-direct {v6, v10, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 34
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbcc;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v11, "onEvent"

    invoke-direct {v6, v11, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 41
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/utils/ab;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v12, "onIGChange"

    invoke-direct {v6, v12, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 47
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/common/n;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Larv$a;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v13, "onApplicationBack"

    invoke-direct {v6, v13, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 52
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbdl;

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v13, "onPowerStateChange"

    invoke-direct {v6, v13, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v11, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 60
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbbw;

    const/16 v4, 0x8

    new-array v4, v4, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputAudioSwitchEventMsg;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onReceiveKeyEvent"

    invoke-direct {v6, v14, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onReceiveD21KeyEvent"

    invoke-direct {v6, v14, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v2

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmConnectEventMsg;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onReveiveIcmConnected"

    invoke-direct {v6, v14, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v3

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/musicradio/model/car/b$a;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onIcmConnect"

    invoke-direct {v6, v14, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v7, 0x3

    aput-object v6, v4, v7

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v8, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v12, v8, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v8, 0x4

    aput-object v6, v4, v8

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v14, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "onAudioTypeChange"

    invoke-direct {v6, v8, v14, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v8, 0x5

    aput-object v6, v4, v8

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v14, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IIcmController$IcmConnectEventMsgV2;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "onReveiveIcmConnected"

    invoke-direct {v6, v8, v14, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v8, 0x6

    aput-object v6, v4, v8

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v14, Lcom/xiaopeng/musicradio/event/common/a$a;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "onCarApiConnect"

    invoke-direct {v6, v8, v14, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v8, 0x7

    aput-object v6, v4, v8

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 84
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/account/qlogin/h;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v14, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "onPowerChange"

    invoke-direct {v6, v8, v14, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 90
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbcl;

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v14, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v3, "onMessageEventPosting"

    invoke-direct {v6, v3, v14, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;

    const-string v14, "onMessageEventPosting"

    invoke-direct {v3, v14, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 99
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onAudioStateEvent"

    invoke-direct {v4, v15, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 105
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbed;

    new-array v3, v7, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ag;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v9, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "netValid"

    invoke-direct {v4, v15, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v13, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 115
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbei;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v11, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 121
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/account/qlogin/MusicQrCodePresenter;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v8, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 127
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbto;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v8, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 133
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbef;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;

    sget-object v14, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v11, v6, v14}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 139
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Laqk;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v8, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 145
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/vip/presenter/VipSaleBannerPresenter;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bf;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "vipSaleEven"

    invoke-direct {v3, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bg;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "vipSaleEvenV2"

    invoke-direct {v3, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 153
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/utils/j$a;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onCarServicesEventMsg"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 160
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    const/16 v3, 0x17

    new-array v3, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Larv$b;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onLangugeChange"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealAudioTypeChangeEvent"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealPlayState"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealAudioPos"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v7

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$o;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealMasterPlayState"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x4

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$p;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealMasterPos"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x5

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ag;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onLogout"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x6

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$af;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onLogin"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x7

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$n;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onBindSuccess"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x8

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lblv$a;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onDownloadProgram"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x9

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onRefreshLogo"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xa

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$r;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealLoveEvent"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xb

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$x;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealReadLoveEvent"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xc

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealNetRadioLove"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xd

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ac;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealTryListen"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xe

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "dealAudioInfo"

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xf

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onListRefresh"

    invoke-direct {v4, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x10

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$l;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "refreshLrc"

    invoke-direct {v4, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x11

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$a;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "refreshLrc"

    invoke-direct {v4, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x12

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$a;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "updateBtInfo"

    invoke-direct {v4, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x13

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$r;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "dealMusicLogoInfo"

    invoke-direct {v4, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x14

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v8, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x15

    aput-object v4, v3, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$n;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v14, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x16

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 210
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/model/dui/h;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$e;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "dealDuiNeteaseState"

    invoke-direct {v4, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 216
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/web/c;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$p;

    const-string v11, "onFocusPlay"

    invoke-direct {v3, v11, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    const-string v11, "onPlayStateChanged"

    invoke-direct {v3, v11, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 223
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Laqu;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v12, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 229
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/model/bluetooth/a;

    const/4 v3, 0x5

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v3, v13, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "dealAudioPos"

    invoke-direct {v3, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasa$e;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onMediaCenterBtStatusChanged"

    invoke-direct {v3, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v3, v4, v6

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ag;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onUserLogout"

    invoke-direct {v3, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v7

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/configurationmodule/ConfigurationChangeEvent;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onConfigEvent"

    invoke-direct {v3, v15, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x4

    aput-object v3, v4, v6

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 245
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Laqe;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v8, v6, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 251
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbek;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$i;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$h;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v3, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 259
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbem;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$u;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$t;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v3, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 267
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/model/car/a;

    new-array v3, v7, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/a$a;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onCarApiConnected"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IMcuController$McuIgStatusEventMsg;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onIGStateChange"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "dealPlayState"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 278
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Laxy;

    new-array v3, v6, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v13, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onNetWorkValid"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 286
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbdu;

    new-array v3, v7, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$m;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onMusicAuthSuccess"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$t;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onNeteaseAuthSuccess"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$h;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onKugouAuthSuccess"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 296
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/widget/f;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$q;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onFromToEightEvent"

    invoke-direct {v4, v10, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 302
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbee;

    new-array v3, v7, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ac;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ab;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "receiveReadingBinded"

    invoke-direct {v4, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v13, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 312
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lask;

    const/4 v3, 0x7

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ag;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onLogout"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasa$f;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onCallStateChanged"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$au;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onShareDisplayId"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v3, v4, v6

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$h;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onVolumeChanged"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v7

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$o;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onDriverJoyModeUpdate"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x4

    aput-object v3, v4, v6

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v3, v12, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x5

    aput-object v3, v4, v6

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onPlayStateChanged"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x6

    aput-object v3, v4, v6

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 330
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbdw;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v13, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 336
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbbx;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/a$a;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onCarApiConnect"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasa$b;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "dealBtConnectState"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 344
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbdg;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onPlayStateChange"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onIgStateChange"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 352
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lbdj;

    const/4 v3, 0x2

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onPlayStateChange"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onIgStateChange"

    invoke-direct {v3, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 360
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/widget/h;

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$q;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onFromToEightEvent"

    invoke-direct {v4, v9, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 366
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Layh;

    const/16 v3, 0xa

    new-array v3, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v14, v6, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v18, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;

    sget-object v19, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v17, "dealAudioInfo"

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    aput-object v4, v3, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$z;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "onLogoEvent"

    invoke-direct {v4, v8, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v14, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v3, v7

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$r;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "onLogoEvent"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x4

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Larv$c;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "onThemeChange"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x5

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v12, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x6

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lasj$ag;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "onLogout"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x7

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lasa$d;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "onBtPhoneMusicClose"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v5, 0x8

    aput-object v4, v3, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lasa$b;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "dealBtConnectState"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v5, 0x9

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larw;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V
    .locals 2

    .line 394
    sget-object v0, Larw;->a:Ljava/util/Map;

    invoke-interface {p0}, Lorg/greenrobot/eventbus/meta/SubscriberInfo;->getSubscriberClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSubscriberInfo(Ljava/lang/Class;)Lorg/greenrobot/eventbus/meta/SubscriberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/greenrobot/eventbus/meta/SubscriberInfo;"
        }
    .end annotation

    .line 399
    sget-object v0, Larw;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
