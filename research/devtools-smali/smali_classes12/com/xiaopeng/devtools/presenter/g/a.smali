.class public Lcom/xiaopeng/devtools/presenter/g/a;
.super Ljava/lang/Object;
.source "EcuVersionPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/g/b;


# instance fields
.field private zv:Lcom/xiaopeng/devtools/view/systeminfo/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/systeminfo/a;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/g/a;->zv:Lcom/xiaopeng/devtools/view/systeminfo/a;

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/g/a;)Lcom/xiaopeng/devtools/view/systeminfo/a;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/g/a;->zv:Lcom/xiaopeng/devtools/view/systeminfo/a;

    return-object p0
.end method


# virtual methods
.method public varargs b([[Ljava/lang/String;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/xiaopeng/devtools/model/h/a;->hG()Lcom/xiaopeng/devtools/model/h/a;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/g/a$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/g/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/g/a;)V

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/devtools/model/h/a;->a(Lcom/xiaopeng/devtools/model/h/a$c;[[Ljava/lang/String;)V

    .line 28
    return-void
.end method
