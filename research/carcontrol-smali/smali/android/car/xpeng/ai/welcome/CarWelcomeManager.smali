.class public Landroid/car/xpeng/ai/welcome/CarWelcomeManager;
.super Landroid/car/CarManagerBase;
.source "CarWelcomeManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CarWelcomeManager"


# instance fields
.field callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/car/xpeng/ai/scene/IWelcomeSceneListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 21
    invoke-static {p2}, Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc;

    move-result-object p1

    iput-object p1, p0, Landroid/car/xpeng/ai/welcome/CarWelcomeManager;->mService:Landroid/car/xpeng/ai/welcome/ICarWelcomeSvc;

    return-void
.end method


# virtual methods
.method protected onCarDisconnected()V
    .locals 0

    .line 26
    invoke-super {p0}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    return-void
.end method
