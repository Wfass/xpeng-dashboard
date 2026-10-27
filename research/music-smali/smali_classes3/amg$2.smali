.class Lamg$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamg;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lamg;


# direct methods
.method constructor <init>(Lamg;Z)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lamg$2;->b:Lamg;

    iput-boolean p2, p0, Lamg$2;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1291
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 1294
    :cond_0
    iget-object p1, p0, Lamg$2;->b:Lamg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lamg;->az:J

    .line 1295
    iget-object p1, p0, Lamg$2;->b:Lamg;

    sget-object v0, Lamo;->Refreshing:Lamo;

    invoke-virtual {p1, v0}, Lamg;->a(Lamo;)V

    .line 1296
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget-object p1, p1, Lamg;->W:Lamx;

    if-eqz p1, :cond_1

    .line 1297
    iget-boolean p1, p0, Lamg$2;->a:Z

    if-eqz p1, :cond_2

    .line 1298
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget-object p1, p1, Lamg;->W:Lamx;

    iget-object v0, p0, Lamg$2;->b:Lamg;

    invoke-interface {p1, v0}, Lamx;->a_(Lamm;)V

    goto :goto_0

    .line 1300
    :cond_1
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget-object p1, p1, Lamg;->ab:Lamw;

    if-nez p1, :cond_2

    .line 1301
    iget-object p1, p0, Lamg$2;->b:Lamg;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lamg;->b(I)Lamm;

    .line 1303
    :cond_2
    :goto_0
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget-object p1, p1, Lamg;->ar:Lamh;

    const/high16 v0, 0x41200000    # 10.0f

    if-eqz p1, :cond_4

    .line 1304
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget p1, p1, Lamg;->ao:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget p1, p1, Lamg;->ai:I

    int-to-float p1, p1

    iget-object v1, p0, Lamg$2;->b:Lamg;

    iget v1, v1, Lamg;->ao:F

    mul-float/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget p1, p1, Lamg;->ao:F

    :goto_1
    float-to-int p1, p1

    .line 1305
    iget-object v1, p0, Lamg$2;->b:Lamg;

    iget-object v1, v1, Lamg;->ar:Lamh;

    iget-object v2, p0, Lamg$2;->b:Lamg;

    iget v3, v2, Lamg;->ai:I

    invoke-interface {v1, v2, v3, p1}, Lamh;->b(Lamm;II)V

    .line 1307
    :cond_4
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget-object p1, p1, Lamg;->ab:Lamw;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget-object p1, p1, Lamg;->ar:Lamh;

    instance-of p1, p1, Lamk;

    if-eqz p1, :cond_7

    .line 1308
    iget-boolean p1, p0, Lamg$2;->a:Z

    if-eqz p1, :cond_5

    .line 1309
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget-object p1, p1, Lamg;->ab:Lamw;

    iget-object v1, p0, Lamg$2;->b:Lamg;

    invoke-interface {p1, v1}, Lamw;->a_(Lamm;)V

    .line 1311
    :cond_5
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget p1, p1, Lamg;->ao:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget p1, p1, Lamg;->ai:I

    int-to-float p1, p1

    iget-object v0, p0, Lamg$2;->b:Lamg;

    iget v0, v0, Lamg;->ao:F

    mul-float/2addr p1, v0

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lamg$2;->b:Lamg;

    iget p1, p1, Lamg;->ao:F

    :goto_2
    float-to-int p1, p1

    .line 1312
    iget-object v0, p0, Lamg$2;->b:Lamg;

    iget-object v0, v0, Lamg;->ab:Lamw;

    iget-object v1, p0, Lamg$2;->b:Lamg;

    iget-object v1, v1, Lamg;->ar:Lamh;

    check-cast v1, Lamk;

    iget-object v2, p0, Lamg$2;->b:Lamg;

    iget v2, v2, Lamg;->ai:I

    invoke-interface {v0, v1, v2, p1}, Lamw;->b(Lamk;II)V

    :cond_7
    return-void
.end method
