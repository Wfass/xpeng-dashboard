.class Lcom/xiaopeng/devtools/presenter/oled/c$3;
.super Ljava/lang/Object;
.source "OledPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/d/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/oled/c;->jR()V
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
        "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic zl:Lcom/xiaopeng/devtools/presenter/oled/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/oled/c;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/oled/c$3;->zl:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic m(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/oled/c$3;->t(Ljava/util/List;)V

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 56
    const-string v1, "oled_default"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/oled/c$3;->zl:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/oled/c;->a(Lcom/xiaopeng/devtools/presenter/oled/c;)Lcom/xiaopeng/devtools/view/oled/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/oled/c$3;->zl:Lcom/xiaopeng/devtools/presenter/oled/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/oled/c;->a(Lcom/xiaopeng/devtools/presenter/oled/c;)Lcom/xiaopeng/devtools/view/oled/b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/oled/b;->a(Landroid/support/v4/util/ArrayMap;)V

    .line 60
    :cond_0
    return-void
.end method
