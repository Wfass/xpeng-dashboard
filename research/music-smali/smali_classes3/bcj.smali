.class public Lbcj;
.super Ljava/lang/Object;
.source "LocalLoveManagerOpr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcj$a;
    }
.end annotation


# instance fields
.field private a:Lbci;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v0

    iput-object v0, p0, Lbcj;->a:Lbci;

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lbcj;->b(I)V

    return-void
.end method

.method public static a()Lbcj;
    .locals 1

    .line 20
    sget-object v0, Lbcj$a;->a:Lbcj;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 30
    invoke-static {}, Lbck;->a()Lbck;

    move-result-object p1

    iput-object p1, p0, Lbcj;->a:Lbci;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 32
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object p1

    iput-object p1, p0, Lbcj;->a:Lbci;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 34
    invoke-static {}, Lbch;->a()Lbch;

    move-result-object p1

    iput-object p1, p0, Lbcj;->a:Lbci;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lbci;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 44
    invoke-static {}, Lbck;->a()Lbck;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 46
    invoke-static {}, Lbch;->a()Lbch;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 48
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object p1

    return-object p1
.end method

.method public b()Lbci;
    .locals 1

    .line 39
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbcj;->a(I)Lbci;

    move-result-object v0

    return-object v0
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 57
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lbcj;->b(I)V

    return-void
.end method
