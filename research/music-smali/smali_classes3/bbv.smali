.class public Lbbv;
.super Ljava/lang/Object;
.source "IcmControlModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbv$a;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lbbv;->a:Z

    return-void
.end method

.method public static a()Lbbv;
    .locals 1

    .line 42
    sget-object v0, Lbbv$a;->a:Lbbv;

    return-object v0
.end method

.method static synthetic a(Lbbv;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lbbv;->e()V

    return-void
.end method

.method static synthetic b(Lbbv;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lbbv;->d()V

    return-void
.end method

.method private b(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 2

    .line 255
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0}, Lbfe;->isBtConnect()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 261
    invoke-virtual {p0, v0, v1}, Lbbv;->a(II)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 263
    invoke-virtual {p0, v1, v0}, Lbbv;->a(II)V

    :goto_1
    return-void
.end method

.method static synthetic c(Lbbv;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lbbv;->c()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 268
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->j()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0, v0, v1}, Lbbv;->a(II)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-direct {p0}, Lbbv;->c()V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 276
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->i()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0, v0, v1}, Lbbv;->a(II)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lbbv;->d()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lbbv$4;

    invoke-direct {v0, p0, p1}, Lbbv$4;-><init>(Lbbv;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch2AudioTypeInternal: audioType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0, p1}, Lbbv;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 190
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1, p2}, Laqr;->d(I)I

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p2

    invoke-virtual {p2, p1}, Laqr;->c(I)Laqt;

    move-result-object p1

    invoke-interface {p1}, Laqt;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealIcmKeyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IcmControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lbbv;->a:Z

    if-nez v0, :cond_0

    const-string p1, "dealIcmKeyEvent: disable keyevent"

    .line 52
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v2, 0x80

    and-int/2addr v0, v2

    .line 56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x201

    if-eq v0, v2, :cond_3

    const/16 v2, 0x202

    if-eq v0, v2, :cond_2

    const/16 v1, 0x20f

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 63
    :cond_1
    :pswitch_0
    new-instance v0, Lbbv$1;

    invoke-direct {v0, p0}, Lbbv$1;-><init>(Lbbv;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lbbv;->a(I)V

    goto :goto_0

    .line 85
    :cond_2
    new-instance p1, Lbbv$3;

    invoke-direct {p1, p0}, Lbbv$3;-><init>(Lbbv;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    const-string p1, "don\'t handlerIcmNext"

    .line 91
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Lbbv$2;

    invoke-direct {p1, p0}, Lbbv$2;-><init>(Lbbv;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    const-string p1, "don\'t handlerIcmPre"

    .line 80
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1fb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    const-string v0, "IcmControlModel"

    const-string v1, "switchNextAudio: "

    .line 214
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbbv;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lbbv$5;

    invoke-direct {v0, p0}, Lbbv$5;-><init>(Lbbv;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
