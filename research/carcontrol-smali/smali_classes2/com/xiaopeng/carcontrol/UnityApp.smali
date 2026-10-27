.class public Lcom/xiaopeng/carcontrol/UnityApp;
.super Lcom/xiaopeng/carcontrol/App;
.source "UnityApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/App;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 9
    invoke-super {p0, p1}, Lcom/xiaopeng/carcontrol/App;->attachBaseContext(Landroid/content/Context;)V

    .line 10
    sput-object p0, Lcom/xiaopeng/carcontrol/UnityApp;->sAppInstance:Lcom/xiaopeng/carcontrol/App;

    const/4 p1, 0x1

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/carcontrol/UnityApp;->sIsMainProcess:Ljava/lang/Boolean;

    return-void
.end method

.method onAppCreate()V
    .locals 0

    return-void
.end method

.method preloadControlPanel()V
    .locals 0

    return-void
.end method
