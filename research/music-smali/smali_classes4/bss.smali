.class public Lbss;
.super Lbsz;
.source "KugouUserVipModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbss$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbsz;-><init>()V

    return-void
.end method

.method public static b()Lbss;
    .locals 1

    .line 22
    sget-object v0, Lbss$a;->a:Lbss;

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbss;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-super {p0, p1}, Lbsz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%d_%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 32
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "KugouUserVipModel"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    const-string v0, "KugouUserVipModel"

    const-string v1, "getNickName: ==========="

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0}, Lbsz;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lasj$h;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, -0x1

    .line 53
    invoke-virtual {p0, p1}, Lbss;->b(I)V

    return-void
.end method
