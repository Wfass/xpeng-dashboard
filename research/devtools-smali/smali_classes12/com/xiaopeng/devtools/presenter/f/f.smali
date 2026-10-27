.class public Lcom/xiaopeng/devtools/presenter/f/f;
.super Ljava/lang/Object;
.source "SmartDrivePresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/f/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/presenter/f/f$a;
    }
.end annotation


# instance fields
.field private zq:Lcom/xiaopeng/devtools/model/g/b/a;

.field private zr:Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/devtools/model/g/b/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/g/b/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zq:Lcom/xiaopeng/devtools/model/g/b/a;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zr:Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;

    .line 22
    return-void
.end method


# virtual methods
.method public b(Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zq:Lcom/xiaopeng/devtools/model/g/b/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/g/b/a;->a(Lcom/xiaopeng/devtools/bean/smartdrive/SmartDriveData;)V

    .line 38
    return-void
.end method

.method public jY()V
    .locals 0

    .line 42
    return-void
.end method

.method public jZ()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zq:Lcom/xiaopeng/devtools/model/g/b/a;

    new-instance v1, Lcom/xiaopeng/devtools/presenter/f/f$a;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zr:Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;

    invoke-direct {v1, v2}, Lcom/xiaopeng/devtools/presenter/f/f$a;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/model/g/b/a;->a(Lcom/xiaopeng/devtools/model/g/b/b$a;)V

    .line 47
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zq:Lcom/xiaopeng/devtools/model/g/b/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/g/b/a;->onCreate()V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zq:Lcom/xiaopeng/devtools/model/g/b/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/g/b/a;->onDestroy()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/f;->zr:Lcom/xiaopeng/devtools/view/smartdrive/smartdrive/a;

    .line 33
    return-void
.end method
