.class Lcom/xiaopeng/devtools/presenter/i/b$2;
.super Ljava/lang/Object;
.source "UserSettingsPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/presenter/i/b;->F(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Al:Lcom/xiaopeng/devtools/presenter/i/b;

.field final synthetic Am:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/i/b;Z)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/i/b$2;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    iput-boolean p2, p0, Lcom/xiaopeng/devtools/presenter/i/b$2;->Am:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b$2;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/i/b;->c(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/model/i/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/devtools/presenter/i/b$2;->Am:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/model/i/a;->F(Z)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b$2;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/i/b$2;->Al:Lcom/xiaopeng/devtools/presenter/i/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/i/b;->b(Lcom/xiaopeng/devtools/presenter/i/b;)Lcom/xiaopeng/devtools/view/usersettings/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/usersettings/a;->nY()V

    .line 93
    :cond_0
    return-void
.end method
