.class Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$5;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/e;
.source "MusicConLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$5;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lme/drakeet/multitype/c<",
            "TT;*>;)V"
        }
    .end annotation

    .line 291
    instance-of v0, p2, Lbqo;

    if-eqz v0, :cond_0

    .line 292
    move-object v0, p2

    check-cast v0, Lbqo;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$5;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getAccountType()I

    move-result v1

    invoke-virtual {v0, v1}, Lbqo;->a(I)V

    .line 294
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    return-void
.end method
