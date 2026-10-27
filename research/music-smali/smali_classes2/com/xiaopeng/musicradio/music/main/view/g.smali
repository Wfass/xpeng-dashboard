.class public Lcom/xiaopeng/musicradio/music/main/view/g;
.super Lbtx;
.source "QQMainLayoutPreload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/main/view/g$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lbtx;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/music/main/view/g;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/view/g$a;->a:Lcom/xiaopeng/musicradio/music/main/view/g;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/xiaopeng/musicradio/music/main/view/g;->a:I

    return-void
.end method

.method protected b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    sget v1, Lbez$f;->music_stub_layout_qq_main:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget v1, Lbez$f;->layout_search_topbar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c()V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/g;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/main/view/g;->d()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/g;->o:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/main/view/g;->p:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->a(ILandroid/view/LayoutInflater;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/musicradio/music/main/view/g;->a:I

    return v0
.end method
