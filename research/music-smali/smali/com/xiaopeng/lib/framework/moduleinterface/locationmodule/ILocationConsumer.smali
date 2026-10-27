.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;
.super Ljava/lang/Object;
.source "ILocationConsumer.java"


# virtual methods
.method public abstract connected()Z
.end method

.method public abstract getLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract subscribe(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)V
.end method

.method public abstract unsubscribe()V
.end method
