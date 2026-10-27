.class public Lbaf;
.super Ljava/lang/Object;
.source "MusicInfoOperationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaf$a;
    }
.end annotation


# instance fields
.field private a:Lbae;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    iput-object v0, p0, Lbaf;->a:Lbae;

    .line 25
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lbaf;->b(I)V

    return-void
.end method

.method public static a()Lbaf;
    .locals 1

    .line 21
    sget-object v0, Lbaf$a;->a:Lbaf;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 31
    invoke-static {}, Lbba;->a()Lbba;

    move-result-object p1

    iput-object p1, p0, Lbaf;->a:Lbae;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 33
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object p1

    iput-object p1, p0, Lbaf;->a:Lbae;

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object p1

    iput-object p1, p0, Lbaf;->a:Lbae;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lbae;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 45
    invoke-static {}, Lbba;->a()Lbba;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 47
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object p1

    return-object p1
.end method

.method public b()Lbae;
    .locals 1

    .line 40
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lbaf;->a(I)Lbae;

    move-result-object v0

    return-object v0
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 56
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lbaf;->b(I)V

    return-void
.end method
