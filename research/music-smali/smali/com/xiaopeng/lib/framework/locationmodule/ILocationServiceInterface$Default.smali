.class public Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Default;
.super Ljava/lang/Object;
.source "ILocationServiceInterface.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 0

    return-void
.end method

.method public unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    .locals 0

    return-void
.end method
