.class public interface abstract Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;
.super Ljava/lang/Object;
.source "ResourceManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceListener"
.end annotation


# virtual methods
.method public abstract onResourceRelease(Ljava/lang/String;)I
.end method

.method public abstract onResourceRequest(Lcom/car/opensdk/resourcemanager/CarResourceInfo;)I
.end method
