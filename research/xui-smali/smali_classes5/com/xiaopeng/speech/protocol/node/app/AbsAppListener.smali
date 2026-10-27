.class public abstract Lcom/xiaopeng/speech/protocol/node/app/AbsAppListener;
.super Ljava/lang/Object;
.source "AbsAppListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/app/AppListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAiHomepageClose()V
    .locals 0

    .line 61
    return-void
.end method

.method public onAiHomepageOpen()V
    .locals 0

    .line 55
    return-void
.end method

.method public onAppActive()V
    .locals 0

    .line 49
    return-void
.end method

.method public onAppForeground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 86
    return-void
.end method

.method public onAppLauncherExit()V
    .locals 0

    .line 66
    return-void
.end method

.method public onAppOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public onAppPageOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 27
    return-void
.end method

.method public onAppStoreOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 18
    return-void
.end method

.method public onDebugOpen()V
    .locals 0

    .line 43
    return-void
.end method

.method public onGuiSpeechDebugPage()V
    .locals 0

    .line 76
    return-void
.end method

.method public onKeyeventBack()V
    .locals 0

    .line 32
    return-void
.end method

.method public onOpenYoukuSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 81
    return-void
.end method

.method public onQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .line 13
    return-void
.end method

.method public onStartPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onTriggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "skill"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/String;
    .param p3, "intent"    # Ljava/lang/String;
    .param p4, "slots"    # Ljava/lang/String;

    .line 38
    return-void
.end method
