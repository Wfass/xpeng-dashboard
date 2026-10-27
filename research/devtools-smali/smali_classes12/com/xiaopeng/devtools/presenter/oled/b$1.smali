.class Lcom/xiaopeng/devtools/presenter/oled/b$1;
.super Ljava/lang/Object;
.source "OledMusicBookPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/d/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/oled/b;->jO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zj:Lcom/xiaopeng/devtools/presenter/oled/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/oled/b;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/oled/b$1;->zj:Lcom/xiaopeng/devtools/presenter/oled/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/oled/b$1;->zj:Lcom/xiaopeng/devtools/presenter/oled/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/oled/b;->a(Lcom/xiaopeng/devtools/presenter/oled/b;)Lcom/xiaopeng/devtools/view/oled/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/oled/b$1;->zj:Lcom/xiaopeng/devtools/presenter/oled/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/oled/b;->a(Lcom/xiaopeng/devtools/presenter/oled/b;)Lcom/xiaopeng/devtools/view/oled/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/oled/a;->y(Ljava/util/List;)V

    .line 27
    :cond_0
    return-void
.end method
