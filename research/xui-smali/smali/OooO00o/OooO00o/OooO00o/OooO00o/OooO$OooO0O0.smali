.class public final LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0O0;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO00o(Ljava/util/concurrent/ExecutorService;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;JJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/util/concurrent/ExecutorService;

.field public final synthetic OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0O0;->OooO00o:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0O0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0O0;->OooO00o:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0O0;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
