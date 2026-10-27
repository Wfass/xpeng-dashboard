.class Lcom/android/car/CarProjectionService$ListenerHolder;
.super Lcom/android/car/BinderInterfaceContainer;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer<",
        "Landroid/car/ICarProjectionCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/car/CarProjectionService;

    .line 232
    invoke-direct {p0, p1}, Lcom/android/car/BinderInterfaceContainer;-><init>(Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;)V

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarProjectionService;Lcom/android/car/CarProjectionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarProjectionService;
    .param p2, "x1"    # Lcom/android/car/CarProjectionService$1;

    .line 230
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService$ListenerHolder;-><init>(Lcom/android/car/CarProjectionService;)V

    return-void
.end method
