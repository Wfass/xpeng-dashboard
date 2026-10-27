.class public interface abstract Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener;
.super Ljava/lang/Object;
.source "ILyricUpdateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener$Stub;,
        Lcom/xiaopeng/xuimanager/mediacenter/ILyricUpdateListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.mediacenter.ILyricUpdateListener"


# virtual methods
.method public abstract onLyricUpdated(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
