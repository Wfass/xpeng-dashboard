.class public Lcom/xiaopeng/musicradio/web/b;
.super Lcom/xiaopeng/musicradio/web/a;
.source "ProtocolLayoutDialog.java"


# instance fields
.field private g:Ljava/lang/String;

.field private h:I

.field private i:J

.field private j:Lcom/xiaopeng/musicradio/web/ProtocolLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/xiaopeng/musicradio/web/a;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/xiaopeng/musicradio/web/b;->h:I

    .line 26
    iput-object p3, p0, Lcom/xiaopeng/musicradio/web/b;->g:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/b;->e()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/web/b;->c()V

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/b;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/web/b;->b()Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/b;->j:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/b;->j:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/web/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/b;->j:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->loadUrl()V

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/b;->j:Lcom/xiaopeng/musicradio/web/ProtocolLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/web/-$$Lambda$b$IBzlzAnF970Gg4ID5Xq2UEPnMFI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/web/-$$Lambda$b$IBzlzAnF970Gg4ID5Xq2UEPnMFI;-><init>(Lcom/xiaopeng/musicradio/web/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/web/ProtocolLayout;->setCancleListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 6

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 51
    iget v2, p0, Lcom/xiaopeng/musicradio/web/b;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v2, 0x4

    .line 85
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v2, v3, v4, v0, v1}, Lbte;->a(IJJ)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v2, v3, v0, v1}, Lbte;->a(JJ)V

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x3

    .line 78
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v2, v3, v4, v0, v1}, Lbte;->a(IJJ)V

    goto :goto_0

    .line 71
    :pswitch_4
    iget-wide v4, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v3, v4, v5, v0, v1}, Lbte;->a(IJJ)V

    goto :goto_0

    .line 67
    :pswitch_5
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v4, v2, v3, v0, v1}, Lbte;->a(IJJ)V

    goto :goto_0

    .line 63
    :pswitch_6
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v5, v2, v3, v0, v1}, Lbte;->a(IJJ)V

    goto :goto_0

    .line 59
    :pswitch_7
    iget-wide v4, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v3, v4, v5, v0, v1}, Lbte;->b(IJJ)V

    goto :goto_0

    .line 75
    :pswitch_8
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v2, v3, v0, v1}, Lbte;->b(JJ)V

    goto :goto_0

    .line 56
    :pswitch_9
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v4, v2, v3, v0, v1}, Lbte;->b(IJJ)V

    goto :goto_0

    .line 53
    :pswitch_a
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/web/b;->i:J

    invoke-static {v5, v2, v3, v0, v1}, Lbte;->b(IJJ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic lambda$IBzlzAnF970Gg4ID5Xq2UEPnMFI(Lcom/xiaopeng/musicradio/web/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/web/b;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected a()[I
    .locals 1

    const/4 v0, 0x2

    .line 43
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x2
        -0x2
    .end array-data
.end method
