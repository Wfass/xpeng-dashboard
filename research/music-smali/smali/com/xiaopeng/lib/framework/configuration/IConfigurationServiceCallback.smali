.class public interface abstract Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback;
.super Ljava/lang/Object;
.source "IConfigurationServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/configuration/IConfigurationServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConfigurationChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/configuration/ConfigurationDataImpl;",
            ">;)V"
        }
    .end annotation
.end method
