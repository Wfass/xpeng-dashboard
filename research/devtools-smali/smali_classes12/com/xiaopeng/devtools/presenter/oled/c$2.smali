.class Lcom/xiaopeng/devtools/presenter/oled/c$2;
.super Ljava/lang/Object;
.source "OledPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/oled/c;->jQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/devtools/model/d/a$b<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zl:Lcom/xiaopeng/devtools/presenter/oled/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/oled/c;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/oled/c$2;->zl:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic m(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/oled/c$2;->t(Ljava/util/List;)V

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/bean/oled/CustomOledMusicBook;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/oled/c$2;->zl:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->a(Lcom/xiaopeng/devtools/presenter/oled/c;)Lcom/xiaopeng/devtools/view/oled/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/oled/c$2;->zl:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/oled/c;->a(Lcom/xiaopeng/devtools/presenter/oled/c;)Lcom/xiaopeng/devtools/view/oled/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/oled/b;->A(Ljava/util/List;)V

    .line 47
    :cond_0
    return-void
.end method
