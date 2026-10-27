.class public Lcom/xiaopeng/factory/system/service/DmCommandService;
.super Landroid/app/Service;
.source "DmCommandService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DmCommandService"


# instance fields
.field private mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

.field private mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

.field private mFactoryTestPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;

.field private mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

.field private mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lcom/xiaopeng/factory/system/service/DmCommandService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/system/service/DmCommandService$1;-><init>(Lcom/xiaopeng/factory/system/service/DmCommandService;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/system/service/DmCommandService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/system/service/DmCommandService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/system/service/DmCommandService;->handleEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private deinitDmParser()V
    .locals 2

    .line 122
    const-string v0, "DmCommandService"

    const-string v1, "deinitDmParser"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mFactoryTestPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->exitAudioTestMode()V

    .line 124
    invoke-static {}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->getInstance()Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->disconnect()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/dmcommand/DmParser;->unregisterDmComandHandler()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-static {}, Lcom/xiaopeng/factory/utils/DmUtil;->responseQuitEOLSuccess()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 132
    :cond_1
    return-void
.end method

.method private handleEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 46
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 47
    .local v0, "id":I
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 48
    .local v1, "data":Ljava/lang/Object;
    const-string v2, "DmCommandService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent CarPropertyValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 67
    :pswitch_0
    const-string v2, "DmCommandService"

    const-string v3, "ID_MCU_DIAG_REQUEST"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    goto :goto_1

    .line 52
    :pswitch_1
    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    .line 53
    move-object v2, v1

    check-cast v2, [B

    .line 54
    .local v2, "value":[B
    const-string v3, "DmCommandService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID_MCU_DIAG_REQUEST, value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ENTER_EOL_CMD:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DataHelp;->checkBytes([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/factory/system/service/DmCommandService;->initDmParserForAutoTest()V

    goto :goto_0

    .line 57
    :cond_0
    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->QUIT_EOL_CMD:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DataHelp;->checkBytes([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/factory/system/service/DmCommandService;->deinitDmParser()V

    goto :goto_0

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    if-eqz v3, :cond_2

    .line 60
    iget-object v3, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    iget-object v4, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-virtual {v3, v2, v4}, Lcom/xiaopeng/factory/dmcommand/DmParser;->process([BLcom/xiaopeng/factory/dmcommand/DmResponseWriter;)Z

    goto :goto_0

    .line 62
    :cond_2
    const-string v3, "DmCommandService"

    const-string v4, "please enter EOL session"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .end local v2    # "value":[B
    :goto_0
    nop

    .line 72
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x21701404
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDmParserForAutoTest()V
    .locals 3

    .line 109
    const-string v0, "DmCommandService"

    const-string v1, "initDmParserForAutoTest"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mFactoryTestPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->enterAudioTestMode()V

    .line 111
    invoke-static {}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->getInstance()Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/factory/system/socket/FactoryClientConnector;->creatConnection()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/xiaopeng/factory/dmcommand/DmParser;

    invoke-direct {v0}, Lcom/xiaopeng/factory/dmcommand/DmParser;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmParser:Lcom/xiaopeng/factory/dmcommand/DmParser;

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmParser;->registerDmComandHandler(Landroid/content/Context;Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-static {}, Lcom/xiaopeng/factory/utils/DmUtil;->responseEnterEOLSuccess()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 119
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .line 76
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const v1, 0x21701404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    const v1, 0x21701405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/Car;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v1

    const-string v2, "xp_diagnostic"

    invoke-virtual {v1, v2}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/diagnostic/XpDiagnosticManager;

    iput-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    iget-object v2, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    invoke-virtual {v1, v0, v2}, Landroid/car/diagnostic/XpDiagnosticManager;->registerPropCallback(Ljava/util/Collection;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    iget-object v2, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-direct {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;-><init>(Landroid/car/diagnostic/XpDiagnosticManager;)V

    iput-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/xiaopeng/factory/utils/SystemPropertyUtil;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "FACTORY_RUN_WHEN_SYSTEM_BOOTUP"

    .line 89
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    :cond_1
    const-string v1, "DmCommandService"

    const-string v2, "AgingTest test!!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    invoke-static {}, Lcom/xiaopeng/factory/utils/DmUtil;->responseIMReady()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    goto :goto_0

    .line 95
    :cond_2
    const-string v1, "DmCommandService"

    const-string v2, "get XpDiagnosticManager failed! Car not connected"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_3
    :goto_0
    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DmCommandService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register callback fail!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;

    invoke-direct {v1}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mFactoryTestPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 136
    const-string v0, "DmCommandService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/factory/system/service/DmCommandService;->deinitDmParser()V

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;

    iget-object v2, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticEventCallback:Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    invoke-virtual {v1, v2}, Landroid/car/diagnostic/XpDiagnosticManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 143
    iput-object v0, p0, Lcom/xiaopeng/factory/system/service/DmCommandService;->mXpDiagnosticManager:Landroid/car/diagnostic/XpDiagnosticManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DmCommandService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister callback fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
