.class Lcom/xiaopeng/logictree/handler/e$1;
.super Landroid/os/Handler;
.source "GpsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/logictree/handler/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yt:Lcom/xiaopeng/logictree/handler/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/logictree/handler/e;Landroid/os/Looper;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 86
    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    const v0, 0x2161360e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {v0}, Lcom/xiaopeng/logictree/handler/e;->f(Lcom/xiaopeng/logictree/handler/e;)Lcom/xiaopeng/commonfunc/b/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/d;->b(Ljava/util/Collection;)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->g(Lcom/xiaopeng/logictree/handler/e;)V

    goto/16 :goto_0

    .line 80
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    const v0, 0x2161360f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {v0}, Lcom/xiaopeng/logictree/handler/e;->f(Lcom/xiaopeng/logictree/handler/e;)Lcom/xiaopeng/commonfunc/b/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/d;->b(Ljava/util/Collection;)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->g(Lcom/xiaopeng/logictree/handler/e;)V

    .line 84
    goto :goto_0

    .line 74
    :pswitch_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const v0, 0x2161360d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {v0}, Lcom/xiaopeng/logictree/handler/e;->f(Lcom/xiaopeng/logictree/handler/e;)Lcom/xiaopeng/commonfunc/b/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/commonfunc/b/a/d;->b(Ljava/util/Collection;)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->g(Lcom/xiaopeng/logictree/handler/e;)V

    .line 78
    goto :goto_0

    .line 68
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->a(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->a(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {v0}, Lcom/xiaopeng/logictree/handler/e;->d(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/OnNmeaMessageListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->e(Lcom/xiaopeng/logictree/handler/e;)V

    .line 72
    goto :goto_0

    .line 62
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->a(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/LocationManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->a(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {v0}, Lcom/xiaopeng/logictree/handler/e;->b(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/LocationListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$1;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->c(Lcom/xiaopeng/logictree/handler/e;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Integer;)V

    .line 66
    nop

    .line 92
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
