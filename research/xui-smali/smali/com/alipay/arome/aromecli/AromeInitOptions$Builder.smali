.class public Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;
.super Ljava/lang/Object;
.source "AromeInitOptions.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/arome/aromecli/AromeInitOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field deviceConfig:Landroid/os/Bundle;

.field hardwareName:Ljava/lang/String;

.field hardwareType:I

.field loginMode:I

.field themeConfig:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->loginMode:I

    .line 26
    iput v0, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareType:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareName:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->themeConfig:Landroid/os/Bundle;

    .line 29
    iput-object v0, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->deviceConfig:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/alipay/arome/aromecli/AromeInitOptions;
    .locals 7

    .line 58
    new-instance v6, Lcom/alipay/arome/aromecli/AromeInitOptions;

    iget v1, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->loginMode:I

    iget v2, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareType:I

    iget-object v3, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareName:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->themeConfig:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->deviceConfig:Landroid/os/Bundle;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/alipay/arome/aromecli/AromeInitOptions;-><init>(IILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v6
.end method

.method public deviceConfig(Landroid/os/Bundle;)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;
    .locals 0
    .param p1, "deviceConfig"    # Landroid/os/Bundle;

    .line 53
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->deviceConfig:Landroid/os/Bundle;

    .line 54
    return-object p0
.end method

.method public hardwareName(Ljava/lang/String;)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;
    .locals 0
    .param p1, "hardwareName"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareName:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public hardwareType(I)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;
    .locals 0
    .param p1, "hardwareType"    # I

    .line 38
    iput p1, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->hardwareType:I

    .line 39
    return-object p0
.end method

.method public loginMode(I)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;
    .locals 0
    .param p1, "loginMode"    # I

    .line 33
    iput p1, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->loginMode:I

    .line 34
    return-object p0
.end method

.method public themeConfig(Landroid/os/Bundle;)Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;
    .locals 0
    .param p1, "themeConfig"    # Landroid/os/Bundle;

    .line 48
    iput-object p1, p0, Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;->themeConfig:Landroid/os/Bundle;

    .line 49
    return-object p0
.end method
