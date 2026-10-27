.class public Lbak;
.super Ljava/lang/Object;
.source "MusicRadioOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbak$a;
    }
.end annotation


# instance fields
.field private a:Lbaj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lbai;->a()Lbai;

    move-result-object v0

    iput-object v0, p0, Lbak;->a:Lbaj;

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbak;->a(I)V

    return-void
.end method

.method public static a()Lbak;
    .locals 1

    .line 20
    sget-object v0, Lbak$a;->a:Lbak;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 30
    invoke-static {}, Lbbb;->a()Lbbb;

    move-result-object p1

    iput-object p1, p0, Lbak;->a:Lbaj;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 32
    invoke-static {}, Lbav;->a()Lbav;

    move-result-object p1

    iput-object p1, p0, Lbak;->a:Lbaj;

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lbai;->a()Lbai;

    move-result-object p1

    iput-object p1, p0, Lbak;->a:Lbaj;

    :goto_0
    return-void
.end method

.method public b()Lbaj;
    .locals 1

    .line 39
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbak;->b(I)Lbaj;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lbaj;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 44
    invoke-static {}, Lbbb;->a()Lbbb;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 46
    invoke-static {}, Lbav;->a()Lbav;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    invoke-static {}, Lbai;->a()Lbai;

    move-result-object p1

    return-object p1
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 54
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lbak;->a(I)V

    return-void
.end method
