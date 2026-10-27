.class public Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;
.super Ljava/lang/Object;
.source "InitOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private deviceConfig:Landroid/os/Bundle;

.field private hardwareName:Ljava/lang/String;

.field private hardwareType:I

.field private loginMode:I

.field private themeConfig:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
    .locals 3

    const/4 v0, 0x0

    .line 87
    .local v0, "options":Lcom/alipay/mobile/aromeservice/ipc/InitOptions;
    new-instance v1, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;-><init>(Lcom/alipay/mobile/aromeservice/ipc/InitOptions$1;)V

    .line 88
    move-object v0, v1

    iget v2, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->loginMode:I

    iput v2, v1, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->loginMode:I

    .line 89
    iget v1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->hardwareType:I

    iput v1, v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->hardwareType:I

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->hardwareName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->hardwareName:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->themeConfig:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->themeConfig:Landroid/os/Bundle;

    .line 92
    iget-object v1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->deviceConfig:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions;->deviceConfig:Landroid/os/Bundle;

    .line 93
    return-object v0
.end method

.method public deviceConfig(Landroid/os/Bundle;)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;
    .locals 0
    .param p1, "deviceConfig"    # Landroid/os/Bundle;

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->deviceConfig:Landroid/os/Bundle;

    .line 83
    return-object p0
.end method

.method public hardwareName(Ljava/lang/String;)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;
    .locals 0
    .param p1, "hardwareName"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->hardwareName:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public hardwareType(I)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;
    .locals 0
    .param p1, "hardwareType"    # I

    .line 66
    iput p1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->hardwareType:I

    .line 67
    return-object p0
.end method

.method public loginMode(I)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;
    .locals 0
    .param p1, "initMode"    # I

    .line 61
    iput p1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->loginMode:I

    .line 62
    return-object p0
.end method

.method public themeConfig(Landroid/os/Bundle;)Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;
    .locals 0
    .param p1, "themeConfig"    # Landroid/os/Bundle;

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/aromeservice/ipc/InitOptions$Builder;->themeConfig:Landroid/os/Bundle;

    .line 77
    return-object p0
.end method
