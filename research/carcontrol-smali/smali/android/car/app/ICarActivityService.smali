.class public interface abstract Landroid/car/app/ICarActivityService;
.super Ljava/lang/Object;
.source "ICarActivityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/app/ICarActivityService$Stub;,
        Landroid/car/app/ICarActivityService$Default;
    }
.end annotation


# virtual methods
.method public abstract setPersistentActivity(Landroid/content/ComponentName;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
