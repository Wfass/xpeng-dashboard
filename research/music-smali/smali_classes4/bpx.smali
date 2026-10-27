.class public Lbpx;
.super Lbpy;
.source "AppOnCreateStartTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method


# virtual methods
.method public isRunOnMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 1

    const-string v0, "MusicApp.onCreate.Start"

    .line 10
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appOnCreateBegin()V

    return-void
.end method
