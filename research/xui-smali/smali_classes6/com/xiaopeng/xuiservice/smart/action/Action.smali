.class public interface abstract Lcom/xiaopeng/xuiservice/smart/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V
.end method

.method public abstract isDone()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract removeActionChangeListener(Lcom/xiaopeng/xuiservice/smart/action/Action$ActionChangeListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
