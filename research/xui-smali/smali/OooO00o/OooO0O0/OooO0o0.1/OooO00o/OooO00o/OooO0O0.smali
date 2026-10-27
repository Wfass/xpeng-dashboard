.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public OooO00o:Ljava/util/Timer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.AUDIODIEDRESTORE"

    .line 2
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;->OooO00o:Ljava/util/Timer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :goto_0
    const-string p1, "restoreEffectTimer"

    const/4 p2, 0x0

    .line 4
    invoke-static {p1, p2}, Lkotlin/concurrent/TimersKt;->timer(Ljava/lang/String;Z)Ljava/util/Timer;

    move-result-object p1

    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO00o;

    invoke-direct {v1}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO00o;-><init>()V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1388

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 5
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO00o/OooO0O0;->OooO00o:Ljava/util/Timer;

    :cond_2
    return-void
.end method
