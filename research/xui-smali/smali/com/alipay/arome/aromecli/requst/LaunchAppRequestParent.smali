.class public abstract Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;
.super Lcom/alipay/arome/aromecli/requst/AromeRequest;
.source "LaunchAppRequestParent.java"


# instance fields
.field public closeAllApp:Z

.field public launchWidth:I

.field public themeConfig:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;->closeAllApp:Z

    return-void
.end method


# virtual methods
.method public requestParam()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    .line 15
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-super {p0}, Lcom/alipay/arome/aromecli/requst/AromeRequest;->requestParam()Landroid/os/Bundle;

    move-result-object v1

    .line 16
    move-object v0, v1

    const-string v2, "closeAllApp"

    iget-boolean v3, p0, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;->closeAllApp:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    const-string v1, "themeConfig"

    iget-object v2, p0, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;->themeConfig:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    const-string v1, "launchWidth"

    iget v2, p0, Lcom/alipay/arome/aromecli/requst/LaunchAppRequestParent;->launchWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    return-object v0
.end method
