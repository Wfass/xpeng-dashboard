.class public Lbsx;
.super Ljava/lang/Object;
.source "SongQualityModelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsx$a;
    }
.end annotation


# instance fields
.field private a:Lbsw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object v0

    iput-object v0, p0, Lbsx;->a:Lbsw;

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lbsx;
    .locals 1

    .line 19
    sget-object v0, Lbsx$a;->a:Lbsx;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 28
    invoke-static {}, Lbst;->a()Lbst;

    move-result-object p1

    iput-object p1, p0, Lbsx;->a:Lbsw;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 30
    invoke-static {}, Lbsr;->a()Lbsr;

    move-result-object p1

    iput-object p1, p0, Lbsx;->a:Lbsw;

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object p1

    iput-object p1, p0, Lbsx;->a:Lbsw;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lbsw;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 42
    invoke-static {}, Lbst;->a()Lbst;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 44
    invoke-static {}, Lbsr;->a()Lbsr;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object p1

    return-object p1
.end method

.method public b()Lbsw;
    .locals 1

    .line 37
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbsx;->a(I)Lbsw;

    move-result-object v0

    return-object v0
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 52
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lbsx;->b(I)V

    return-void
.end method
