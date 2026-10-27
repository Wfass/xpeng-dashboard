.class public Layp;
.super Ljava/lang/Object;
.source "MusicAlbumModelOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layp$a;
    }
.end annotation


# instance fields
.field private a:Layo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Layo;->a()Layo;

    move-result-object v0

    iput-object v0, p0, Layp;->a:Layo;

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Layp;->b(I)V

    return-void
.end method

.method public static a()Layp;
    .locals 1

    .line 24
    sget-object v0, Layp$a;->a:Layp;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 36
    invoke-static {}, Lbcs;->i()Lbcs;

    move-result-object p1

    iput-object p1, p0, Layp;->a:Layo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 38
    invoke-static {}, Lbcd;->i()Lbcd;

    move-result-object p1

    iput-object p1, p0, Layp;->a:Layo;

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {}, Layo;->a()Layo;

    move-result-object p1

    iput-object p1, p0, Layp;->a:Layo;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Layo;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 50
    invoke-static {}, Lbcs;->i()Lbcs;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 52
    invoke-static {}, Lbcd;->i()Lbcd;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    invoke-static {}, Layo;->a()Layo;

    move-result-object p1

    return-object p1
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-direct {p0, p1}, Layp;->b(I)V

    return-void
.end method
