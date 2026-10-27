.class Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;
.super Ljava/lang/Object;
.source "CarEcuManager.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/CarEcuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarPropertyEventListenerToBase"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/hardware/CarEcuManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/car/hardware/CarEcuManager;)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/CarEcuManager;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Landroid/car/hardware/CarEcuManager;->handleOnChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    :cond_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/car/hardware/CarEcuManager$CarPropertyEventListenerToBase;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/CarEcuManager;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/CarEcuManager;->handleOnErrorEvent(II)V

    :cond_0
    return-void
.end method
