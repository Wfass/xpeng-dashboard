.class public Lcom/xiaopeng/musicradio/utils/j;
.super Ljava/lang/Object;
.source "CarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/utils/j$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

.field private static b:Z


# direct methods
.method static synthetic a(Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;)Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;
    .locals 0

    .line 30
    sput-object p0, Lcom/xiaopeng/musicradio/utils/j;->a:Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .line 37
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/utils/j$a;->CALLBACK:Lcom/xiaopeng/musicradio/utils/j$a;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 39
    const-class v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;

    new-instance v1, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;

    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 42
    const-class v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->setPrintLog(Z)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 30
    sput-boolean p0, Lcom/xiaopeng/musicradio/utils/j;->b:Z

    return p0
.end method

.method public static b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;
    .locals 1

    .line 48
    const-class v0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;
    .locals 2

    .line 53
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IMcuController;

    return-object v0
.end method

.method public static d()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;
    .locals 1

    .line 57
    sget-object v0, Lcom/xiaopeng/musicradio/utils/j;->a:Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IIcmController;

    return-object v0
.end method

.method public static e()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController;
    .locals 2

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IBcmController;

    return-object v0
.end method

.method public static f()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;
    .locals 2

    .line 65
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IInputController;

    return-object v0
.end method

.method public static g()Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController;
    .locals 2

    .line 69
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->b()Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/IVcuController;

    return-object v0
.end method

.method public static h()I
    .locals 1

    .line 73
    invoke-static {}, Landroid/car/XpCarFeatures;->hasAMPFeature()I

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    .line 77
    invoke-static {}, Landroid/car/XpCarFeatures;->hasDolbyFeature()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static j()Z
    .locals 1

    .line 82
    sget-boolean v0, Lcom/xiaopeng/musicradio/utils/j;->b:Z

    return v0
.end method
