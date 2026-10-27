.class public interface abstract Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface;
.super Ljava/lang/Object;
.source "IConfigurationServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getConfiguration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract subscribe(Ljava/lang/String;Ljava/lang/String;ILcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;)V
.end method

.method public abstract unsubscribe(Ljava/lang/String;)V
.end method
