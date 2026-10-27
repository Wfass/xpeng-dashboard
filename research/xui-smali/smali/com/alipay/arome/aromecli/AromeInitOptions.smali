.class public Lcom/alipay/arome/aromecli/AromeInitOptions;
.super Ljava/lang/Object;
.source "AromeInitOptions.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/arome/aromecli/AromeInitOptions$Builder;
    }
.end annotation


# instance fields
.field deviceConfig:Landroid/os/Bundle;

.field hardwareName:Ljava/lang/String;

.field hardwareType:I

.field loginMode:I

.field themeConfig:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(IILjava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "loginMode"    # I
    .param p2, "hardwareType"    # I
    .param p3, "hardwareName"    # Ljava/lang/String;
    .param p4, "themeConfig"    # Landroid/os/Bundle;
    .param p5, "deviceConfig"    # Landroid/os/Bundle;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/alipay/arome/aromecli/AromeInitOptions;->loginMode:I

    .line 17
    iput p2, p0, Lcom/alipay/arome/aromecli/AromeInitOptions;->hardwareType:I

    .line 18
    iput-object p3, p0, Lcom/alipay/arome/aromecli/AromeInitOptions;->hardwareName:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/alipay/arome/aromecli/AromeInitOptions;->themeConfig:Landroid/os/Bundle;

    .line 20
    iput-object p5, p0, Lcom/alipay/arome/aromecli/AromeInitOptions;->deviceConfig:Landroid/os/Bundle;

    .line 21
    return-void
.end method
