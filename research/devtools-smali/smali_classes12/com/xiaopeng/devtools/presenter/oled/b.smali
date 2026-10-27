.class public Lcom/xiaopeng/devtools/presenter/oled/b;
.super Ljava/lang/Object;
.source "OledMusicBookPresenter.java"


# instance fields
.field private zi:Lcom/xiaopeng/devtools/view/oled/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/oled/a;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/oled/b;->zi:Lcom/xiaopeng/devtools/view/oled/a;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/oled/b;)Lcom/xiaopeng/devtools/view/oled/a;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/oled/b;->zi:Lcom/xiaopeng/devtools/view/oled/a;

    return-object p0
.end method


# virtual methods
.method public jO()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/b;->hb()Lcom/xiaopeng/devtools/model/d/b;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/oled/b$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/oled/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/oled/b;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/d/b;->a(Lcom/xiaopeng/devtools/model/d/b$a;)V

    .line 29
    return-void
.end method
