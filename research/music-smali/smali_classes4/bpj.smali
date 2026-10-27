.class public Lbpj;
.super Ljava/lang/Object;
.source "PageArriveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbpj$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lbpf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    .line 19
    new-instance v0, Lbpm;

    invoke-direct {v0}, Lbpm;-><init>()V

    const-string v1, "xiaopeng://musicradio/player?from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 20
    new-instance v0, Lbpn;

    invoke-direct {v0}, Lbpn;-><init>()V

    const-string v1, "xiaopeng://musicradio/player?position=playlist&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 21
    new-instance v0, Lbpo;

    invoke-direct {v0}, Lbpo;-><init>()V

    const-string v1, "xiaopeng://musicradio/player?position=quality&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 22
    new-instance v0, Lbpl;

    invoke-direct {v0}, Lbpl;-><init>()V

    const-string v1, "xiaopeng://musicradio/player?position=lrc&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 23
    new-instance v0, Lbpp;

    invoke-direct {v0}, Lbpp;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=program&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 24
    new-instance v0, Lbpi;

    invoke-direct {v0}, Lbpi;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=netradio&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 25
    new-instance v0, Lbpu;

    invoke-direct {v0}, Lbpu;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=usb&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 26
    new-instance v0, Lbpb;

    invoke-direct {v0}, Lbpb;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=bt&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 27
    new-instance v0, Lbpg;

    invoke-direct {v0}, Lbpg;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=mine&position=collect&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 28
    new-instance v0, Lbph;

    invoke-direct {v0}, Lbph;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=mine&position=sheet&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 30
    new-instance v0, Lbpq;

    invoke-direct {v0}, Lbpq;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=rank&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 31
    new-instance v0, Lbpr;

    invoke-direct {v0}, Lbpr;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=concentration&position=recommend&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 32
    new-instance v0, Lbpt;

    invoke-direct {v0}, Lbpt;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=singer&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 33
    new-instance v0, Lbpc;

    invoke-direct {v0}, Lbpc;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=mine&position=history&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 34
    new-instance v0, Lbps;

    invoke-direct {v0}, Lbps;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=search&from=speech"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    .line 35
    new-instance v0, Lbpe;

    invoke-direct {v0}, Lbpe;-><init>()V

    const-string v1, "xiaopeng://musicradio/home?tab=concentration"

    invoke-direct {p0, v1, v0}, Lbpj;->a(Ljava/lang/String;Lbpf;)V

    return-void
.end method

.method synthetic constructor <init>(Lbpj$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lbpj;-><init>()V

    return-void
.end method

.method public static a()Lbpj;
    .locals 1

    .line 13
    sget-object v0, Lbpj$a;->a:Lbpj;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lbpf;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpf;

    invoke-interface {v0, p1, p2}, Lbpf;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 43
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 46
    :cond_0
    iget-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbpf;

    invoke-interface {p1}, Lbpf;->a()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lbpj;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbpf;

    invoke-interface {p1}, Lbpf;->b()V

    :cond_0
    return-void
.end method
