.class public Lbqe;
.super Lbpy;
.source "ModuleInitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lbpy;-><init>()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 18
    invoke-static {}, Lbey;->a()Lbey;

    move-result-object v0

    invoke-virtual {v0}, Lbey;->b()V

    return-void
.end method


# virtual methods
.method public isRunOnMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lbqe;->d()V

    return-void
.end method
