.class public interface abstract Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;
.super Ljava/lang/Object;
.source "ISoundResource.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;,
        Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.soundresource.ISoundResource"


# virtual methods
.method public abstract getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActiveSoundEffectTheme()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBootSoundOnOff()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSoundEffectPlayResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSoundEffectPreviewResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract selectSoundEffectTheme(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setBootSoundOnOff(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setBootSoundResource(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
