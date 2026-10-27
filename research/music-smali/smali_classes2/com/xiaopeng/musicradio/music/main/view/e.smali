.class public Lcom/xiaopeng/musicradio/music/main/view/e;
.super Lbtx;
.source "KugouMainLayoutPreload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/main/view/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lbtx;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/music/main/view/e;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/musicradio/music/main/view/e$a;->a:Lcom/xiaopeng/musicradio/music/main/view/e;

    return-object v0
.end method


# virtual methods
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

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    sget v1, Lbez$f;->music_stub_layout_qq_main:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public c()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/e;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/ae;->a()Lcom/xiaopeng/musicradio/utils/ae;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/main/view/e;->o:Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/main/view/e;->p:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ae;->a(ILandroid/view/LayoutInflater;Ljava/util/List;)V

    :cond_0
    return-void
.end method
