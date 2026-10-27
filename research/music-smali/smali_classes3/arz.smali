.class public Larz;
.super Ljava/lang/Object;
.source "PlayerComponentEventBusIndexes.java"

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
    .locals 28

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Larz;->a:Ljava/util/Map;

    .line 20
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerBasePresenter;

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "onAudioInfo"

    invoke-direct {v4, v7, v5, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 26
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerPresenter;

    const/4 v3, 0x5

    new-array v4, v3, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onAudioChange"

    invoke-direct {v6, v9, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v5

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v10, "onInfoChange"

    invoke-direct {v6, v10, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v2

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v8, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v11, "OnPlayStateChange"

    invoke-direct {v6, v11, v7, v8}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v8, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;

    sget-object v11, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v12, "onRefreshLogoColor"

    invoke-direct {v6, v12, v8, v11}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v8, 0x3

    aput-object v6, v4, v8

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v11, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;

    sget-object v13, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v14, "onRefreshLogo"

    invoke-direct {v6, v14, v11, v13}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v11, 0x4

    aput-object v6, v4, v11

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 40
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerBasePresenter;

    const/4 v4, 0x7

    new-array v6, v4, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v13, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v15, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;

    sget-object v4, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v13, v14, v15, v4}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v13, v6, v5

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v13, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v5, "onPosChange"

    invoke-direct {v4, v5, v13, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v13, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onPlayStateChange"

    invoke-direct {v4, v15, v5, v13}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v7

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    sget-object v13, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v9, v5, v13}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v8

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    sget-object v13, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v10, v5, v13}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v11

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;

    sget-object v13, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onIGChange"

    invoke-direct {v4, v15, v5, v13}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v3

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v5, Larv$c;

    sget-object v13, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onThemeChange"

    invoke-direct {v4, v15, v5, v13}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v5, 0x6

    aput-object v4, v6, v5

    invoke-direct {v0, v1, v2, v6}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 57
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/XOSPlayerCommonPresenter;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v13, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v12, v13, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v12, 0x0

    aput-object v6, v4, v12

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 63
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/MediaLogoBlurPresener;

    new-array v4, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v13, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v14, v13, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v12

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 69
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerSubBasePresenter;

    new-array v4, v7, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v13, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    sget-object v15, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v9, v13, v15}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v12

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v9, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    sget-object v12, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v10, v9, v12}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v2

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 77
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;

    const/4 v4, 0x7

    new-array v6, v4, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v9, Lasj$z;

    sget-object v12, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v13, "onReadReloadAlbum"

    invoke-direct {v4, v13, v9, v12}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v9, 0x0

    aput-object v4, v6, v9

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v9, Lasj$aa;

    sget-object v12, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v15, "onReadStatusUpdate"

    invoke-direct {v4, v15, v9, v12}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v2

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v9, Lasj$ac;

    sget-object v12, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v2, "onReadingUnbinded"

    invoke-direct {v4, v2, v9, v12}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v7

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v9, Lasj$ab;

    sget-object v12, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v7, "onReadingBinded"

    invoke-direct {v4, v7, v9, v12}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v8

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasa$b;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v12, "dealBtConnectState"

    invoke-direct {v4, v12, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v11

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v19, Lasa$d;

    sget-object v20, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v18, "onBtPhoneMusicClose"

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v22}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    aput-object v4, v6, v3

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasa$c;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v12, "onBtHpfConnect"

    invoke-direct {v4, v12, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v6, v5

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v6}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 96
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    const/16 v4, 0xc

    new-array v4, v4, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasa$d;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v12, "onBtPhoneMusicClose"

    invoke-direct {v6, v12, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v7, 0x0

    aput-object v6, v4, v7

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasa$c;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v12, "onBtHpfConnect"

    invoke-direct {v6, v12, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v7, 0x1

    aput-object v6, v4, v7

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasj$c;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v12, "onChangeMusicSource"

    invoke-direct {v6, v12, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v7, 0x2

    aput-object v6, v4, v7

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasj$z;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v13, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v8

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasj$aa;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v15, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v11

    new-instance v6, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v7, Lasj$ac;

    sget-object v9, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v6, v2, v7, v9}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v6, v4, v3

    new-instance v2, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ab;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onReadingBinded"

    invoke-direct {v2, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v2, v4, v5

    new-instance v2, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$ae;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onUpdateLove"

    invoke-direct {v2, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x7

    aput-object v2, v4, v6

    new-instance v2, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasj$q;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onEvent"

    invoke-direct {v2, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x8

    aput-object v2, v4, v6

    new-instance v2, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lbli$c;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onStartAni"

    invoke-direct {v2, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0x9

    aput-object v2, v4, v6

    new-instance v2, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lbli$b;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onFinishAni"

    invoke-direct {v2, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xa

    aput-object v2, v4, v6

    new-instance v2, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lasg$a;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onOpenPlayer"

    invoke-direct {v2, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/16 v6, 0xb

    aput-object v2, v4, v6

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v4}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

    .line 124
    new-instance v0, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;

    const-class v1, Lcom/xiaopeng/musicradio/playercomponent/big/presenter/PlayerCommonPresenter;

    const/16 v2, 0x8

    new-array v2, v2, [Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "onChangeAudio"

    invoke-direct {v4, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x0

    aput-object v4, v2, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v9, "dealAudioPos"

    invoke-direct {v4, v9, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ap;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v4, v14, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v18, Lasa$d;

    sget-object v19, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v17, "onBtPhoneMusicClose"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v21}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    aput-object v4, v2, v8

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v24, Lasa$c;

    sget-object v25, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v23, "onBtConnectEvent"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v22, v4

    invoke-direct/range {v22 .. v27}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    aput-object v4, v2, v11

    new-instance v4, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v6, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    sget-object v7, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v8, "dealAudioState"

    invoke-direct {v4, v8, v6, v7}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v4, v2, v3

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v4, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    sget-object v6, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    invoke-direct {v3, v10, v4, v6}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;

    const-class v18, Lbli$d;

    sget-object v19, Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;

    const-string v17, "onPlayerNav"

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v21}, Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/greenrobot/eventbus/meta/SimpleSubscriberInfo;-><init>(Ljava/lang/Class;Z[Lorg/greenrobot/eventbus/meta/SubscriberMethodInfo;)V

    invoke-static {v0}, Larz;->a(Lorg/greenrobot/eventbus/meta/SubscriberInfo;)V

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

    .line 149
    sget-object v0, Larz;->a:Ljava/util/Map;

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

    .line 154
    sget-object v0, Larz;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/eventbus/meta/SubscriberInfo;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
