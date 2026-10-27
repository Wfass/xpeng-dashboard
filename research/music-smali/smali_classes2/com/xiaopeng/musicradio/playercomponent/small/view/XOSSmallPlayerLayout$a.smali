.class Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;
.super Landroidx/viewpager/widget/a;
.source "XOSSmallPlayerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;)V
    .locals 0

    .line 464
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XOSSmallPlayerLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 471
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$802(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    .line 472
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$900(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->c()V

    .line 473
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$800(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    move-result-object v0

    .line 474
    new-instance p2, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$800(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    move-result-object p2

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->setLoveClick(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$800(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    move-result-object p2

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->setNextClick(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$800(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    move-result-object p2

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->setPreClick(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$800(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    move-result-object p2

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$5;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;)V

    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->setPlayPauseClick(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 509
    :cond_0
    invoke-static {}, Lblh;->a()Lblh;

    move-result-object p2

    sget-object v3, Lblh;->a:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lblh;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    .line 512
    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 513
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    move-object v4, p2

    check-cast v4, Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$202(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/a;)Lcom/xiaopeng/musicradio/playercomponent/small/view/a;

    .line 514
    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$1400(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/XOSSmallPlayerPresenter;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 516
    :try_start_1
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a$6;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, p2

    move-object p2, v7

    goto :goto_0

    :catch_1
    move-exception p2

    .line 523
    :goto_0
    invoke-static {v2, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    :cond_1
    :goto_1
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 530
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 536
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
