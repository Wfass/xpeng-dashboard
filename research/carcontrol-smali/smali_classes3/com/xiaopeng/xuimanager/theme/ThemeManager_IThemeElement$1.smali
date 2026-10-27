.class Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;
.super Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;
.source "ThemeManager_IThemeElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
        "Lcom/xiaopeng/xuimanager/theme/ITheme;",
        "Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;->this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createServiceListener()Landroid/os/IInterface;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;->createServiceListener()Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;

    move-result-object v0

    return-object v0
.end method

.method protected createServiceListener()Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;
    .locals 2

    .line 32
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;->this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;)V

    return-object v0
.end method

.method protected bridge synthetic getService()Landroid/os/IInterface;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;->getService()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/xiaopeng/xuimanager/theme/ITheme;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;->this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;

    iget-object v0, v0, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement;->mService:Lcom/xiaopeng/xuimanager/theme/ITheme;

    return-object v0
.end method

.method protected bridge synthetic registerServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ITheme;

    check-cast p2, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;->registerServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;)V

    return-void
.end method

.method protected registerServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->registerThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V

    return-void
.end method

.method protected bridge synthetic unregisterServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ITheme;

    check-cast p2, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$1;->unregisterServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;)V

    return-void
.end method

.method protected unregisterServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManager_IThemeElement$ThemeElementListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->unregisterThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V

    return-void
.end method
