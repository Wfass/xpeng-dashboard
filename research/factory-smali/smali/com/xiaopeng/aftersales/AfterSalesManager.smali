.class public Lcom/xiaopeng/aftersales/AfterSalesManager;
.super Ljava/lang/Object;
.source "AfterSalesManager.java"


# static fields
.field public static final CMD_TYPE_CAT:I = 0x2

.field public static final CMD_TYPE_COMMON:I = 0x0

.field public static final CMD_TYPE_DF:I = 0x3

.field public static final CMD_TYPE_DU:I = 0x5

.field public static final CMD_TYPE_GETPROP:I = 0x1

.field public static final CMD_TYPE_IFCONFIG:I = 0x9

.field public static final CMD_TYPE_LS_AL:I = 0x8

.field public static final CMD_TYPE_MOUNT:I = 0x4

.field public static final CMD_TYPE_TOP_CPU:I = 0x6

.field public static final CMD_TYPE_TOP_MEM:I = 0x7

.field public static final ERROR_CODE_MODULE_4G:I = 0xa

.field public static final ERROR_CODE_MODULE_AUDIO:I = 0x1

.field public static final ERROR_CODE_MODULE_BLUETOOTH:I = 0x3

.field public static final ERROR_CODE_MODULE_CAMERA:I = 0x2

.field public static final ERROR_CODE_MODULE_CARSERVICE:I = 0xe

.field public static final ERROR_CODE_MODULE_ICM_AUDIO:I = 0x11

.field public static final ERROR_CODE_MODULE_ICM_ETH:I = 0x12

.field public static final ERROR_CODE_MODULE_ICM_LCD:I = 0x10

.field public static final ERROR_CODE_MODULE_ICM_SYSTEM:I = 0x13

.field public static final ERROR_CODE_MODULE_LCD:I = 0x8

.field public static final ERROR_CODE_MODULE_LIBHTTP:I = 0x6

.field public static final ERROR_CODE_MODULE_NAVI:I = 0x9

.field public static final ERROR_CODE_MODULE_PHY:I = 0xf

.field public static final ERROR_CODE_MODULE_PM:I = 0xc

.field public static final ERROR_CODE_MODULE_PSO:I = 0x5

.field public static final ERROR_CODE_MODULE_SOC:I = 0x7

.field public static final ERROR_CODE_MODULE_UFS:I = 0xb

.field public static final ERROR_CODE_MODULE_USB:I = 0xd

.field public static final ERROR_CODE_MODULE_WIFI:I = 0x4

.field public static final MAX_ERROR_CODE_MODULE:I = 0x13

.field public static final RESULT_FAIL:I = 0x0

.field public static final RESULT_KEEP:I = 0x2

.field public static final RESULT_PASS:I = 0x1

.field public static final RESULT_UNKNOWN:I = -0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "xiaopeng_aftersales"

.field private static final TAG:Ljava/lang/String; = "AfterSalesManager"


# instance fields
.field private mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

.field private final mAlertListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/aftersales/AlertListener;",
            "Lcom/xiaopeng/aftersales/IAlertListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthModeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/aftersales/AuthModeListener;",
            "Lcom/xiaopeng/aftersales/IAuthModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mEncryptShListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/aftersales/EncryptShListener;",
            "Lcom/xiaopeng/aftersales/IEncryptShListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogicActionListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/aftersales/LogicActionListener;",
            "Lcom/xiaopeng/aftersales/ILogicActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogicTreeUpgraders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/aftersales/LogicTreeUpgrader;",
            "Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;",
            ">;"
        }
    .end annotation
.end field

.field private final mRepairModeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/aftersales/RepairModeListener;",
            "Lcom/xiaopeng/aftersales/IRepairModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellCmdListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/xiaopeng/aftersales/ShellCmdListener;",
            "Lcom/xiaopeng/aftersales/IShellCmdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/aftersales/IAfterSalesManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/xiaopeng/aftersales/IAfterSalesManager;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAlertListeners:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mRepairModeListeners:Landroid/util/ArrayMap;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mShellCmdListeners:Landroid/util/ArrayMap;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mEncryptShListeners:Landroid/util/ArrayMap;

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAuthModeListeners:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mLogicActionListeners:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mLogicTreeUpgraders:Landroid/util/ArrayMap;

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    .line 95
    return-void
.end method


# virtual methods
.method public addAlertListener(Lcom/xiaopeng/aftersales/AlertListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/AlertListener;

    .line 103
    new-instance v0, Lcom/xiaopeng/aftersales/AfterSalesManager$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager$1;-><init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/AlertListener;)V

    .line 111
    .local v0, "rl":Lcom/xiaopeng/aftersales/IAlertListener;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->registerAlertListener(Lcom/xiaopeng/aftersales/IAlertListener;)V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAlertListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    nop

    .line 116
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public addLogicActionListener(Lcom/xiaopeng/aftersales/LogicActionListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/LogicActionListener;

    .line 163
    new-instance v0, Lcom/xiaopeng/aftersales/AfterSalesManager$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager$2;-><init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/LogicActionListener;)V

    .line 174
    .local v0, "rl":Lcom/xiaopeng/aftersales/ILogicActionListener;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->registerLogicActionListener(Lcom/xiaopeng/aftersales/ILogicActionListener;)V

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mLogicActionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    nop

    .line 179
    return-void

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public addLogicTreeUpgrader(Lcom/xiaopeng/aftersales/LogicTreeUpgrader;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

    .line 246
    new-instance v0, Lcom/xiaopeng/aftersales/AfterSalesManager$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager$3;-><init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/LogicTreeUpgrader;)V

    .line 254
    .local v0, "rl":Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->registerLogicTreeUpgrader(Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;)V

    .line 255
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mLogicTreeUpgraders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    nop

    .line 259
    return-void

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public disableAuthMode()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->disableAuthMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 556
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public disableRepairMode()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->disableRepairMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 324
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public enableAuthMode(Ljava/lang/String;J)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->enableAuthMode(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public enableRepairMode()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->enableRepairMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public enableRepairModeWithKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyPath"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->enableRepairModeWithKey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public enableRepairModeWithKeyId(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyId"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->enableRepairModeWithKeyId(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public executeEncryptSh(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isCloudCmd"    # Z

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->executeEncryptSh(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 510
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public executeShellCmd(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "cmdtype"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "isCloudCmd"    # Z

    .line 457
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->executeShellCmd(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 464
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public executeShellCmdWithLimitLine(ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "cmdtype"    # I
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "limitLine"    # I
    .param p4, "quitcmd"    # Ljava/lang/String;
    .param p5, "isCloudCmd"    # Z

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->executeShellCmdWithLimitLine(ILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 474
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public getAuthEndTime()J
    .locals 4

    .line 583
    const-wide/16 v0, -0x1

    .line 584
    .local v0, "authPass":J
    iget-object v2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v2, :cond_0

    .line 586
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v2}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getAuthEndTime()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 589
    goto :goto_0

    .line 587
    :catch_0
    move-exception v2

    .line 588
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 591
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-wide v0
.end method

.method public getAuthMode()Z
    .locals 3

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "authmode":Z
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 562
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getAuthMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 567
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public getAuthPass()Ljava/lang/String;
    .locals 3

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "authPass":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getAuthPass()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 577
    goto :goto_0

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 579
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getRepairMode()Z
    .locals 3

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "repairmode":Z
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getRepairMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 335
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public getRepairModeDisableTime()Ljava/lang/String;
    .locals 3

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "repairmodeDisableTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getRepairModeDisableTime()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 357
    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 359
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getRepairModeEnableTime()Ljava/lang/String;
    .locals 3

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "repairmodeEnableTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getRepairModeEnableTime()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 347
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getRepairModeKeyId()Ljava/lang/String;
    .locals 3

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "repairModeKeyId":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getRepairModeKeyId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 405
    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 407
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getSpeedLimitDisableTime()Ljava/lang/String;
    .locals 3

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "speedLimitDisableTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getSpeedLimitDisableTime()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 395
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getSpeedLimitEnableTime()Ljava/lang/String;
    .locals 3

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "speedLimitEnableTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getSpeedLimitEnableTime()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 381
    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 383
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getSpeedLimitMode()Z
    .locals 3

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "speedLimitMode":Z
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->getSpeedLimitMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 371
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return v0
.end method

.method public recordDiagnosisError(IIJLjava/lang/String;Z)V
    .locals 8
    .param p1, "module"    # I
    .param p2, "errorCode"    # I
    .param p3, "millis"    # J
    .param p5, "errorMsg"    # Ljava/lang/String;
    .param p6, "alert"    # Z

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->recordDiagnosisError(IIJLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public recordLogicAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "issueName"    # Ljava/lang/String;
    .param p2, "conclusion"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "endTime"    # Ljava/lang/String;
    .param p5, "logicactionTime"    # Ljava/lang/String;
    .param p6, "logicactionEntry"    # Ljava/lang/String;
    .param p7, "logictreeVer"    # Ljava/lang/String;

    move-object v1, p0

    .line 202
    iget-object v0, v1, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->recordLogicAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->recordRepairmodeAction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public recordSpeedLimitOff()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->recordSpeedLimitOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 428
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public recordSpeedLimitOn()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->recordSpeedLimitOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 418
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public registerAuthModeListener(Lcom/xiaopeng/aftersales/AuthModeListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/AuthModeListener;

    .line 595
    new-instance v0, Lcom/xiaopeng/aftersales/AfterSalesManager$7;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager$7;-><init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/AuthModeListener;)V

    .line 603
    .local v0, "rl":Lcom/xiaopeng/aftersales/IAuthModeListener;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->registerAuthModeListener(Lcom/xiaopeng/aftersales/IAuthModeListener;)V

    .line 604
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAuthModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    nop

    .line 608
    return-void

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public registerEncryptShListener(Lcom/xiaopeng/aftersales/EncryptShListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/EncryptShListener;

    .line 513
    new-instance v0, Lcom/xiaopeng/aftersales/AfterSalesManager$6;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager$6;-><init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/EncryptShListener;)V

    .line 521
    .local v0, "rl":Lcom/xiaopeng/aftersales/IEncryptShListener;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->registerEncryptShListener(Lcom/xiaopeng/aftersales/IEncryptShListener;)V

    .line 522
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mEncryptShListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    nop

    .line 526
    return-void

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public registerRepairModeListener(Lcom/xiaopeng/aftersales/RepairModeListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/RepairModeListener;

    .line 431
    new-instance v0, Lcom/xiaopeng/aftersales/AfterSalesManager$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager$4;-><init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/RepairModeListener;)V

    .line 439
    .local v0, "rl":Lcom/xiaopeng/aftersales/IRepairModeListener;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->registerRepairModeListener(Lcom/xiaopeng/aftersales/IRepairModeListener;)V

    .line 440
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mRepairModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    nop

    .line 444
    return-void

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public registerShellCmdListener(Lcom/xiaopeng/aftersales/ShellCmdListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/ShellCmdListener;

    .line 477
    new-instance v0, Lcom/xiaopeng/aftersales/AfterSalesManager$5;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/aftersales/AfterSalesManager$5;-><init>(Lcom/xiaopeng/aftersales/AfterSalesManager;Lcom/xiaopeng/aftersales/ShellCmdListener;)V

    .line 485
    .local v0, "rl":Lcom/xiaopeng/aftersales/IShellCmdListener;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->registerShellCmdListener(Lcom/xiaopeng/aftersales/IShellCmdListener;)V

    .line 486
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mShellCmdListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    nop

    .line 490
    return-void

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeAlertListener(Lcom/xiaopeng/aftersales/AlertListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/AlertListener;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAlertListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/IAlertListener;

    .line 125
    .local v0, "rl":Lcom/xiaopeng/aftersales/IAlertListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AlertListener was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->unregisterAlertListener(Lcom/xiaopeng/aftersales/IAlertListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeLogicActionListener(Lcom/xiaopeng/aftersales/LogicActionListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/LogicActionListener;

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mLogicActionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/ILogicActionListener;

    .line 188
    .local v0, "rl":Lcom/xiaopeng/aftersales/ILogicActionListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "LogicActionListener was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->unregisterLogicActionListener(Lcom/xiaopeng/aftersales/ILogicActionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    nop

    .line 194
    return-void

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeLogicTreeUpgrader(Lcom/xiaopeng/aftersales/LogicTreeUpgrader;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mLogicTreeUpgraders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;

    .line 268
    .local v0, "rl":Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "LogicTreeUpgrader was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->unregisterLogicTreeUpgrader(Lcom/xiaopeng/aftersales/ILogicTreeUpgrader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    nop

    .line 274
    return-void

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestUpgradeLogicTree(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0, p1}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->requestUpgradeLogicTree(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public requestUploadLogicAction()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->requestUploadLogicAction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 233
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterAuthModeListener(Lcom/xiaopeng/aftersales/AuthModeListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/AuthModeListener;

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAuthModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/IAuthModeListener;

    .line 612
    .local v0, "rl":Lcom/xiaopeng/aftersales/IAuthModeListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "AuthModeListener was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->unregisterAuthModeListener(Lcom/xiaopeng/aftersales/IAuthModeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    nop

    .line 618
    return-void

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterEncryptShListener(Lcom/xiaopeng/aftersales/EncryptShListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/EncryptShListener;

    .line 529
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mEncryptShListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/IEncryptShListener;

    .line 530
    .local v0, "rl":Lcom/xiaopeng/aftersales/IEncryptShListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "EncryptShListener was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->unregisterEncryptShListener(Lcom/xiaopeng/aftersales/IEncryptShListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    nop

    .line 536
    return-void

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterRepairModeListener(Lcom/xiaopeng/aftersales/RepairModeListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/RepairModeListener;

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mRepairModeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/IRepairModeListener;

    .line 448
    .local v0, "rl":Lcom/xiaopeng/aftersales/IRepairModeListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "RepairModeListener was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->unregisterRepairModeListener(Lcom/xiaopeng/aftersales/IRepairModeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    nop

    .line 454
    return-void

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterShellCmdListener(Lcom/xiaopeng/aftersales/ShellCmdListener;)V
    .locals 3
    .param p1, "l"    # Lcom/xiaopeng/aftersales/ShellCmdListener;

    .line 493
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mShellCmdListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/IShellCmdListener;

    .line 494
    .local v0, "rl":Lcom/xiaopeng/aftersales/IShellCmdListener;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "ShellCmdListener was not registered."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    invoke-interface {v1, v0}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->unregisterShellCmdListener(Lcom/xiaopeng/aftersales/IShellCmdListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    nop

    .line 500
    return-void

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public updateDiagnosisUploadStatus(IZIJLjava/lang/String;)V
    .locals 8
    .param p1, "module"    # I
    .param p2, "result"    # Z
    .param p3, "errorCode"    # I
    .param p4, "millis"    # J
    .param p6, "errorMsg"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->updateDiagnosisUploadStatus(IZIJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public updateLogicActionUploadStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "status"    # Z
    .param p2, "issueName"    # Ljava/lang/String;
    .param p3, "conclusion"    # Ljava/lang/String;
    .param p4, "startTime"    # Ljava/lang/String;
    .param p5, "endTime"    # Ljava/lang/String;
    .param p6, "logicactionTime"    # Ljava/lang/String;
    .param p7, "logicactionEntry"    # Ljava/lang/String;
    .param p8, "logictreeVer"    # Ljava/lang/String;

    move-object v1, p0

    .line 215
    iget-object v0, v1, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    if-eqz v0, :cond_0

    .line 217
    :try_start_0
    iget-object v2, v1, Lcom/xiaopeng/aftersales/AfterSalesManager;->mAfterSalesService:Lcom/xiaopeng/aftersales/IAfterSalesManager;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/xiaopeng/aftersales/IAfterSalesManager;->updateLogicActionUploadStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
