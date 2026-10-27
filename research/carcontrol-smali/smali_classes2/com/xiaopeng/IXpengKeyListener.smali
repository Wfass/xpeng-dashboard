.class public interface abstract Lcom/xiaopeng/IXpengKeyListener;
.super Ljava/lang/Object;
.source "IXpengKeyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/IXpengKeyListener$Stub;,
        Lcom/xiaopeng/IXpengKeyListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.IXpengKeyListener"


# virtual methods
.method public abstract notify(Landroid/view/KeyEvent;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
