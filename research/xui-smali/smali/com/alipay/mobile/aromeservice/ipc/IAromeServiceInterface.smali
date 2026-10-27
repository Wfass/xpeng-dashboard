.class public interface abstract Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface;
.super Ljava/lang/Object;
.source "IAromeServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/aromeservice/ipc/IAromeServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerOnCustomClickListener([Ljava/lang/String;)V
.end method

.method public abstract sendRequest(Lcom/alipay/mobile/aromeservice/ipc/App;ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract setInitOptions(Lcom/alipay/mobile/aromeservice/ipc/InitOptions;)V
.end method
