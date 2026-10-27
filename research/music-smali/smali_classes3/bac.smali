.class public Lbac;
.super Ljava/lang/Object;
.source "MusicCustomOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbac$a;
    }
.end annotation


# instance fields
.field private a:Lbab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object v0

    iput-object v0, p0, Lbac;->a:Lbab;

    .line 25
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lbac;->b(I)V

    return-void
.end method

.method public static a()Lbac;
    .locals 1

    .line 21
    sget-object v0, Lbac$a;->a:Lbac;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {}, Lbaz;->a()Lbaz;

    move-result-object p1

    iput-object p1, p0, Lbac;->a:Lbab;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 33
    invoke-static {}, Lbat;->a()Lbat;

    move-result-object p1

    iput-object p1, p0, Lbac;->a:Lbab;

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object p1

    iput-object p1, p0, Lbac;->a:Lbab;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lbab;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 45
    invoke-static {}, Lbaz;->a()Lbaz;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 47
    invoke-static {}, Lbat;->a()Lbat;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-static {}, Lbaa;->a()Lbaa;

    move-result-object p1

    return-object p1
.end method

.method public b()Lbab;
    .locals 1

    .line 40
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbac;->a(I)Lbab;

    move-result-object v0

    return-object v0
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 55
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lbac;->b(I)V

    return-void
.end method
