.class abstract Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;
.super Ljava/lang/Object;
.source "XActivityDismissCauseGroup.java"

# interfaces
.implements Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;
.implements Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup;
    .locals 1

    .line 23
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseGroup$XActivityDismissCauseGroupImpl;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    return-object v0
.end method


# virtual methods
.method abstract enableBackScene()V
.end method

.method abstract enableOnPauseScene()V
.end method

.method abstract enableOutSideScene()V
.end method

.method abstract enableSpeedTimeOutScene()V
.end method

.method abstract getBackSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;
.end method

.method abstract getOnPauseSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;
.end method

.method abstract getOutSideSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;
.end method

.method abstract getSpeedTimeOutSceneInspect()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;
.end method
