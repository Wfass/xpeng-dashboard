.class Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1$1;
.super Ljava/lang/Object;
.source "BaseSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1$1;->b:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbfe;->playMusic(Ljava/lang/String;)V

    return-void
.end method
