.class interface abstract Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ContextProvider"
.end annotation


# virtual methods
.method public abstract getAppID()Ljava/lang/String;
.end method

.method public abstract getAppPackageName()Ljava/lang/String;
.end method

.method public abstract getAppVersionCode()I
.end method

.method public abstract getAppVersionName()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method
