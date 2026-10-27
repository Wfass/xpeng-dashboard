.class public interface abstract Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager;
.super Ljava/lang/Object;
.source "IBrightnessManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager$Stub;,
        Lcom/xiaopeng/xuimanager/brightness/IBrightnessManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.brightness.IBrightnessManager"


# virtual methods
.method public abstract setXpAllPanelBrightness(IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setXpPanelBrightness(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
