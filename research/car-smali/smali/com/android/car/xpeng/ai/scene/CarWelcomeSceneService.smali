.class public Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;
.super Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc$Stub;
.source "CarWelcomeSceneService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 41
    const-string v0, "*CarWelcomeSceneService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public init()V
    .locals 0

    .line 29
    return-void
.end method

.method public registerCarSceneListener(Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;

    .line 15
    return-void
.end method

.method public release()V
    .locals 0

    .line 37
    return-void
.end method

.method public unregisterCarSceneListener(Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;

    .line 20
    return-void
.end method
