.class public interface abstract Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;
.super Ljava/lang/Object;
.source "IUIEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener$Stub;,
        Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.systemui.uiserver.IUIEventListener"


# virtual methods
.method public abstract onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
