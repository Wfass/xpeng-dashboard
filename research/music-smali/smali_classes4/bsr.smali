.class public Lbsr;
.super Lbsw;
.source "KugouSongQualityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsr$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lbsw;-><init>()V

    return-void
.end method

.method public static a()Lbsr;
    .locals 1

    .line 22
    sget-object v0, Lbsr$a;->a:Lbsr;

    return-object v0
.end method


# virtual methods
.method protected b()Lben;
    .locals 1

    .line 31
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "key_kugou_quality_"

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onLogout(Lasj$i;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lbsr;->a:Ljava/lang/Integer;

    return-void
.end method
