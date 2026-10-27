.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause;
.super Ljava/lang/Object;
.source "XActivityDismissCause.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackImpl;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BaseCause;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;,
        Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XActivityDismissCause"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBack(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackCause;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 52
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackImpl;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$BackImpl;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    return-object v0
.end method

.method static createOnPause(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseCause;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 56
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OnPauseImpl;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    return-object v0
.end method

.method static createOutSide(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideCause;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 64
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$OutSideImpl;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    return-object v0
.end method

.method static createSpeedTimeOut(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeCause;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callBack"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;

    .line 60
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$SpeedTimeOutImpl;-><init>(Landroid/app/Activity;Lcom/xiaopeng/xui/app/delegate/XActivityDismissCause$CallBack;)V

    return-object v0
.end method
