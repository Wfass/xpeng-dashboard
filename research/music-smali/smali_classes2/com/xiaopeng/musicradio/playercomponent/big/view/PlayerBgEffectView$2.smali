.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;
.super Ljava/lang/Object;
.source "PlayerBgEffectView.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Landroid/graphics/Bitmap;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Z

.field final synthetic d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;ZLandroid/graphics/Bitmap;Z)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->a:Z

    iput-object p3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->b:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .param p1    # Lio/reactivex/ObservableEmitter;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PlayerBgEffectView"

    .line 88
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "subscribe: use as===="

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->b:Landroid/graphics/Bitmap;

    const v4, 0x3eb33333    # 0.35f

    const/16 v5, 0x14

    iget-boolean v6, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->c:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-static {v6}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-static {v2, v3, v4, v5, v6}, Lcom/xiaopeng/musicradio/utils/i;->a(Landroid/content/Context;Landroid/graphics/Bitmap;FILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    const-string v1, "subscribe: use normal===="

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->b:Landroid/graphics/Bitmap;

    const/16 v3, 0x50

    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/i;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 95
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$2;->d:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "subscribe: "

    .line 97
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
