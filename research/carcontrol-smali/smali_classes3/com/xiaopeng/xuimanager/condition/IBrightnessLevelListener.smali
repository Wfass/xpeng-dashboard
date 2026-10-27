.class public interface abstract Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
.super Ljava/lang/Object;
.source "IBrightnessLevelListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;,
        Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.condition.IBrightnessLevelListener"


# virtual methods
.method public abstract onBrightnessLevelChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
