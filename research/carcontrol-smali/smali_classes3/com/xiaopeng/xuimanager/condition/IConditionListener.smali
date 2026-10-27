.class public interface abstract Lcom/xiaopeng/xuimanager/condition/IConditionListener;
.super Ljava/lang/Object;
.source "IConditionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/condition/IConditionListener$Stub;,
        Lcom/xiaopeng/xuimanager/condition/IConditionListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuimanager.condition.IConditionListener"


# virtual methods
.method public abstract onConditionChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
