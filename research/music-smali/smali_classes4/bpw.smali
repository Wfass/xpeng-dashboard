.class public Lbpw;
.super Lbpy;
.source "AppOnCreateEndTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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

    .line 12
    new-instance v0, Lbpw$1;

    invoke-direct {v0, p0}, Lbpw$1;-><init>(Lbpw;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 18
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/StartPerfUtils;->appOnCreateEnd()V

    const-string v0, "MusicApp.onCreateEnd"

    .line 19
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    return-void
.end method
