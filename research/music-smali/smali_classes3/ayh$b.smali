.class public Layh$b;
.super Ljava/lang/Object;
.source "MediaLogoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method public constructor <init>(ILcom/xiaopeng/musicradio/bean/BaseInfo;Landroid/graphics/Bitmap;Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 1

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 503
    iput-object v0, p0, Layh$b;->g:Ljava/lang/String;

    .line 508
    iput p1, p0, Layh$b;->a:I

    .line 509
    iput-object p2, p0, Layh$b;->b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    .line 510
    iput-object p3, p0, Layh$b;->c:Landroid/graphics/Bitmap;

    .line 511
    iput-object p4, p0, Layh$b;->d:Ljava/lang/String;

    .line 512
    iput p5, p0, Layh$b;->e:I

    .line 513
    iput-boolean p6, p0, Layh$b;->f:Z

    .line 514
    iput-object p7, p0, Layh$b;->g:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 515
    instance-of p1, p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p1, :cond_0

    .line 516
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAccountType()I

    move-result p1

    iput p1, p0, Layh$b;->h:I

    goto :goto_0

    .line 518
    :cond_0
    iput p8, p0, Layh$b;->h:I

    :goto_0
    return-void
.end method

.method static synthetic a(Layh$b;)Ljava/lang/String;
    .locals 0

    .line 496
    iget-object p0, p0, Layh$b;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 523
    iget v0, p0, Layh$b;->a:I

    return v0
.end method

.method public b()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 527
    iget-object v0, p0, Layh$b;->b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .line 536
    iget-object v0, p0, Layh$b;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Layh$b;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Layh$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 544
    iget v0, p0, Layh$b;->e:I

    return v0
.end method

.method public f()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Layh$b;->f:Z

    return v0
.end method

.method public g()I
    .locals 1

    .line 556
    iget v0, p0, Layh$b;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Layh$b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Layh$b;->b:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/BaseInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "audiotype:%d,info:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Layh$b;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
