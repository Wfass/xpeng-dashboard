.class Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;
.super Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;
.source "ThemeManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector<",
        "Lcom/xiaopeng/xuimanager/theme/ITheme;",
        "Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;->this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/utils/ServiceListenerConnector;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createServiceListener()Landroid/os/IInterface;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;->createServiceListener()Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;

    move-result-object v0

    return-object v0
.end method

.method protected createServiceListener()Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;
    .locals 2

    .line 57
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;->this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;-><init>(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)V

    return-object v0
.end method

.method protected bridge synthetic getService()Landroid/os/IInterface;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;->getService()Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lcom/xiaopeng/xuimanager/theme/ITheme;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;->this$0:Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;->access$000(Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl;)Lcom/xiaopeng/xuimanager/theme/ITheme;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic registerServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ITheme;

    check-cast p2, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;->registerServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;)V

    return-void
.end method

.method protected registerServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->registerThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V

    return-void
.end method

.method protected bridge synthetic unregisterServiceListener(Landroid/os/IInterface;Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ITheme;

    check-cast p2, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$1;->unregisterServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;)V

    return-void
.end method

.method protected unregisterServiceListener(Lcom/xiaopeng/xuimanager/theme/ITheme;Lcom/xiaopeng/xuimanager/theme/ThemeManagerImpl$ThemeListenerToService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme;->unregisterThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V

    return-void
.end method
