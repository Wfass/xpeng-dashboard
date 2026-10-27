.class public interface abstract Lcom/xiaopeng/IXPKeyListener;
.super Ljava/lang/Object;
.source "IXPKeyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/IXPKeyListener$Stub;,
        Lcom/xiaopeng/IXPKeyListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.IXPKeyListener"


# virtual methods
.method public abstract notify(Landroid/view/KeyEvent;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
