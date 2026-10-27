.class public Lbqb;
.super Lbpy;
.source "IdleTimeTask.java"


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

    .line 10
    new-instance v0, Lbqb$1;

    invoke-direct {v0, p0}, Lbqb$1;-><init>(Lbqb;)V

    invoke-static {v0}, Lbql;->i(Ljava/lang/Runnable;)V

    return-void
.end method
