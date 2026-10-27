.class public Lcom/xiaopeng/devtools/presenter/oled/c;
.super Ljava/lang/Object;
.source "OledPresenter.java"


# instance fields
.field private zk:Lcom/xiaopeng/devtools/view/oled/b;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/oled/b;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/oled/c;->zk:Lcom/xiaopeng/devtools/view/oled/b;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/oled/c;)Lcom/xiaopeng/devtools/view/oled/b;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/oled/c;->zk:Lcom/xiaopeng/devtools/view/oled/b;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/oled/OledData;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/d/a;->a(Lcom/xiaopeng/devtools/bean/oled/OledData;)V

    .line 66
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/d/a;->a(Lcom/xiaopeng/devtools/presenter/oled/CANMsg387;)V

    .line 70
    return-void
.end method

.method public bE(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/d/a;->bE(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public gZ()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/d/a;->gZ()V

    .line 78
    return-void
.end method

.method public jP()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/oled/c$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/oled/c$1;-><init>(Lcom/xiaopeng/devtools/presenter/oled/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/d/a;->a(Lcom/xiaopeng/devtools/model/d/a$c;)V

    .line 38
    return-void
.end method

.method public jQ()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/oled/c$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/oled/c$2;-><init>(Lcom/xiaopeng/devtools/presenter/oled/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/d/a;->a(Lcom/xiaopeng/devtools/model/d/a$b;)V

    .line 49
    return-void
.end method

.method public jR()V
    .locals 2

    .line 52
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/oled/c$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/oled/c$3;-><init>(Lcom/xiaopeng/devtools/presenter/oled/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/d/a;->b(Lcom/xiaopeng/devtools/model/d/a$b;)V

    .line 62
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/d/a;->onCreate()V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    invoke-static {}, Lcom/xiaopeng/devtools/model/d/a;->gY()Lcom/xiaopeng/devtools/model/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/d/a;->onDestroy()V

    .line 82
    return-void
.end method
