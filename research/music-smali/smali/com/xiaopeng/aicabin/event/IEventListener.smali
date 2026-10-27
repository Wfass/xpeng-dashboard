.class public interface abstract Lcom/xiaopeng/aicabin/event/IEventListener;
.super Ljava/lang/Object;
.source "IEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/event/IEventListener$Stub;,
        Lcom/xiaopeng/aicabin/event/IEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V
.end method
