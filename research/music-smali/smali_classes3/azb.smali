.class public Lazb;
.super Ljava/lang/Object;
.source "NetRadioFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazb$a;
    }
.end annotation


# static fields
.field private static d:J


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lazb;->a:Z

    .line 29
    iput-boolean v0, p0, Lazb;->b:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lazb;->c:Ljava/util/List;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    sub-long/2addr v0, v2

    sput-wide v0, Lazb;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lazb$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lazb;-><init>()V

    return-void
.end method

.method public static a()Lazb;
    .locals 1

    .line 38
    sget-object v0, Lazb$a;->a:Lazb;

    return-object v0
.end method

.method static synthetic a(Lazb;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lazb;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lazb;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lazb;->b:Z

    return p1
.end method

.method static synthetic b(Lazb;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lazb;->a:Z

    return p1
.end method

.method static synthetic e()J
    .locals 2

    .line 24
    sget-wide v0, Lazb;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 72
    new-instance v0, Lazb$1;

    invoke-direct {v0, p0, p1}, Lazb$1;-><init>(Lazb;I)V

    const/16 v1, 0x32

    invoke-static {p1, v1, v0}, Laza;->a(IILbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lazb;->b:Z

    .line 47
    iput-boolean v0, p0, Lazb;->a:Z

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "NetRadioFetchModel"

    const-string v1, "redownloadnetRadio: "

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-boolean v0, p0, Lazb;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0}, Lbda;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lazb;->a:Z

    .line 54
    invoke-virtual {p0}, Lazb;->d()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 5

    .line 59
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downnetRadio: isDownNetRadio ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lazb;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mIsDownloadNetRadioSuccess ----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lazb;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioFetchModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-boolean v0, p0, Lazb;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lazb;->b:Z

    if-nez v0, :cond_0

    const-string v0, "downloadUserData: down netRadiolove"

    .line 62
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lazb;->a:Z

    .line 64
    iget-object v1, p0, Lazb;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x757b12c00L

    sub-long/2addr v1, v3

    sput-wide v1, Lazb;->d:J

    .line 66
    invoke-virtual {p0, v0}, Lazb;->a(I)V

    :cond_0
    return-void
.end method
