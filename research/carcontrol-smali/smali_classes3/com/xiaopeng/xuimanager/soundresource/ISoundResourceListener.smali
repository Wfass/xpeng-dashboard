.class public interface abstract Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;
.super Ljava/lang/Object;
.source "ISoundResourceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;,
        Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.soundresource.ISoundResourceListener"


# virtual methods
.method public abstract onResourceEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
