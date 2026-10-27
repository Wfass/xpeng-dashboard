.class public Lbsy;
.super Lbsz;
.source "UserVipModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsy$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lbsz;-><init>()V

    return-void
.end method

.method public static b()Lbsy;
    .locals 1

    .line 16
    sget-object v0, Lbsy$a;->a:Lbsy;

    return-object v0
.end method


# virtual methods
.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "UserVipModel"

    return-object v0
.end method

.method public onEvent(Lasj$m;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 26
    invoke-virtual {p0}, Lbsy;->q()V

    return-void
.end method
