.class public final synthetic Landroid/car/-$$Lambda$Car$TUxEUQEyMHY05z32LVgNJZwGV0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/Car;


# direct methods
.method public synthetic constructor <init>(Landroid/car/Car;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/-$$Lambda$Car$TUxEUQEyMHY05z32LVgNJZwGV0k;->f$0:Landroid/car/Car;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/car/-$$Lambda$Car$TUxEUQEyMHY05z32LVgNJZwGV0k;->f$0:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->lambda$dispatchCarReadyToMainThread$0$Car()V

    return-void
.end method
