.class public interface abstract Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;
.super Ljava/lang/Object;
.source "ILocationServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;,
        Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
.end method

.method public abstract unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
.end method
