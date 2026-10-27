.class public interface abstract Lcom/xiaopeng/input/IInputEventListener;
.super Ljava/lang/Object;
.source "IInputEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/input/IInputEventListener$Stub;,
        Lcom/xiaopeng/input/IInputEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.input.IInputEventListener"


# virtual methods
.method public abstract onKeyEvent(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
