.class public abstract Lbra;
.super Lbrd;
.source "UsbCacheRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbrd<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbrd;-><init>()V

    return-void
.end method

.method static synthetic a(Lbra;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lbra;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lbra;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2, p3}, Lbrd;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lbra;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lbra;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lbra;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 14
    invoke-super {p0, p1, p2, p3}, Lbrd;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;

    .line 52
    new-instance v2, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;-><init>()V

    .line 53
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b(Ljava/lang/String;)V

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private f(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;

    .line 63
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;

    .line 80
    new-instance v2, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;-><init>()V

    .line 81
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;->setName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/db/AudioLogoInfo;->setLogo(Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLogo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbCacheRequestManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {}, Lbqx;->a()Lbqx;

    move-result-object v0

    new-instance v1, Lbra$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lbra$1;-><init>(Lbra;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, p2, v1}, Lbqx;->a(Ljava/util/List;Lbqx$a;)V

    return-void
.end method

.method protected a_(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbCacheRequestManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lbra;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 73
    invoke-static {}, Lbqx;->a()Lbqx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbqx;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
