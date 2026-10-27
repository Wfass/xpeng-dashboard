.class public Lbsv;
.super Lbsw;
.source "SongQualityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsv$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lbsw;-><init>()V

    return-void
.end method

.method public static a()Lbsv;
    .locals 1

    .line 17
    sget-object v0, Lbsv$a;->a:Lbsv;

    return-object v0
.end method


# virtual methods
.method public onLogout(Lasj$s;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lbsv;->a:Ljava/lang/Integer;

    return-void
.end method
