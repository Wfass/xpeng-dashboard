.class public Lbbw;
.super Ljava/lang/Object;
.source "IcmReceiverModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbw$a;,
        Lbbw$b;
    }
.end annotation


# instance fields
.field private a:Lbbw$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lbbw$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbbw$a;-><init>(Lbbw;Lbbw$1;)V

    iput-object v0, p0, Lbbw;->a:Lbbw$a;

    return-void
.end method

.method synthetic constructor <init>(Lbbw$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lbbw;-><init>()V

    return-void
.end method

.method public static a()Lbbw;
    .locals 1

    .line 41
    sget-object v0, Lbbw$b;->a:Lbbw;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .line 185
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->d()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;->setRadioType(I)V

    :cond_0
    const-string v0, "IcmReceiverModel"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendIcmRadioType type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 48
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lbbw;->a:Lbbw$a;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lbbw$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onAudioTypeChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 152
    invoke-static {}, Lbbx;->a()Lbbx;

    move-result-object p1

    invoke-virtual {p1}, Lbbx;->c()V

    return-void
.end method

.method public onCarApiConnect(Lcom/xiaopeng/musicradio/event/common/a$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x3

    .line 197
    invoke-direct {p0, p1}, Lbbw;->a(I)V

    return-void
.end method

.method public onIGChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 145
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    invoke-static {}, Lbbx;->a()Lbbx;

    move-result-object p1

    invoke-virtual {p1}, Lbbx;->c()V

    :cond_0
    return-void
.end method

.method public onIcmConnect(Lcom/xiaopeng/musicradio/model/car/b$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "IcmReceiverModel"

    const-string v0, "onIcmConnect: ====="

    .line 139
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lbbx;->a()Lbbx;

    move-result-object p1

    invoke-virtual {p1}, Lbbx;->c()V

    return-void
.end method

.method public onReceiveD21KeyEvent(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;)V
    .locals 14
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveKeyEvent : InputAudioSwitchEventMsgV2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmReceiverModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;

    .line 90
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    new-instance v13, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputKeyEvent;->getCode()I

    move-result v7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v13

    move v12, v0

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lbbv;->a()Lbbv;

    move-result-object p1

    invoke-virtual {p1, v13}, Lbbv;->a(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public onReceiveKeyEvent(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputAudioSwitchEventMsg;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveKeyEvent InputAudioSwitchEventMsg : = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputAudioSwitchEventMsg;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmReceiverModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController$InputAudioSwitchEventMsg;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-static {}, Lbbv;->a()Lbbv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbv;->a(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public onReveiveIcmConnected(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmConnectEventMsg;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 122
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmConnectEventMsg;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "IcmReceiverModel"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReveiveIcmConnected1: ======= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    new-instance p1, Lbbw$1;

    invoke-direct {p1, p0}, Lbbw$1;-><init>(Lbbw;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onReveiveIcmConnected(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IIcmController$IcmConnectEventMsgV2;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "IcmReceiverModel"

    .line 162
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IIcmController$IcmConnectEventMsgV2;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReveiveIcmConnected2: =========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 165
    new-instance p1, Lbbw$2;

    invoke-direct {p1, p0}, Lbbw$2;-><init>(Lbbw;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    const-string p1, "onReveiveIcmConnected"

    .line 171
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 172
    invoke-direct {p0, p1}, Lbbw;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
