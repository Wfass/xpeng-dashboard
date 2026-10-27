.class public final enum Lcom/xiaopeng/musicradio/utils/j$a;
.super Ljava/lang/Enum;
.source "CarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/musicradio/utils/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/musicradio/utils/j$a;

.field public static final enum CALLBACK:Lcom/xiaopeng/musicradio/utils/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Lcom/xiaopeng/musicradio/utils/j$a;

    const/4 v1, 0x0

    const-string v2, "CALLBACK"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/utils/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/j$a;->CALLBACK:Lcom/xiaopeng/musicradio/utils/j$a;

    const/4 v0, 0x1

    .line 85
    new-array v0, v0, [Lcom/xiaopeng/musicradio/utils/j$a;

    sget-object v2, Lcom/xiaopeng/musicradio/utils/j$a;->CALLBACK:Lcom/xiaopeng/musicradio/utils/j$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaopeng/musicradio/utils/j$a;->$VALUES:[Lcom/xiaopeng/musicradio/utils/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/musicradio/utils/j$a;
    .locals 1

    .line 85
    const-class v0, Lcom/xiaopeng/musicradio/utils/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/musicradio/utils/j$a;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/musicradio/utils/j$a;
    .locals 1

    .line 85
    sget-object v0, Lcom/xiaopeng/musicradio/utils/j$a;->$VALUES:[Lcom/xiaopeng/musicradio/utils/j$a;

    invoke-virtual {v0}, [Lcom/xiaopeng/musicradio/utils/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/musicradio/utils/j$a;

    return-object v0
.end method


# virtual methods
.method public onCarServicesEventMsg(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "MusicCarUtil"

    if-eqz p1, :cond_0

    const-string p1, "car service connected!"

    .line 93
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 104
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/j;->a(Z)Z

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object p1

    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/j;->a(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;)Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    .line 106
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->f()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;

    .line 107
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->e()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController;

    .line 108
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->g()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController;

    .line 109
    invoke-static {}, Lbby;->a()V

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IInputController$InputAudioSwitchEventMsgV2;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->f()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;->registerCanEventMsg(Ljava/util/List;)V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 116
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController$IcmConnectEventMsg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->d()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;->registerCanEventMsg(Ljava/util/List;)V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 120
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/v2extend/IMcuController$McuIgStatusEventMsg;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->c()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;->registerCanEventMsg(Ljava/util/List;)V

    .line 123
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/a$a;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/a$a;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "car service disConnected!"

    .line 127
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
