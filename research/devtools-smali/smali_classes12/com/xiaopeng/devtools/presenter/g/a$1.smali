.class Lcom/xiaopeng/devtools/presenter/g/a$1;
.super Ljava/lang/Object;
.source "EcuVersionPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/h/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/g/a;->b([[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zw:Lcom/xiaopeng/devtools/presenter/g/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/g/a;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/g/a$1;->zw:Lcom/xiaopeng/devtools/presenter/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/a$1;->zw:Lcom/xiaopeng/devtools/presenter/g/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/g/a;->a(Lcom/xiaopeng/devtools/presenter/g/a;)Lcom/xiaopeng/devtools/view/systeminfo/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/g/a$1;->zw:Lcom/xiaopeng/devtools/presenter/g/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/g/a;->a(Lcom/xiaopeng/devtools/presenter/g/a;)Lcom/xiaopeng/devtools/view/systeminfo/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/systeminfo/a;->dx(Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method
