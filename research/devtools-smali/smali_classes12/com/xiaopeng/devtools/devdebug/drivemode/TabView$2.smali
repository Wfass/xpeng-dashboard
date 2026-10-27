.class Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Lcom/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/a;)V
    .locals 0

    .line 127
    return-void
.end method

.method public b(Lcom/a/a/a;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-static {p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->a(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-static {p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->b(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-static {p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->b(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$2;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-static {v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->c(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$a;->bP(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public c(Lcom/a/a/a;)V
    .locals 0

    .line 140
    return-void
.end method

.method public d(Lcom/a/a/a;)V
    .locals 0

    .line 145
    return-void
.end method
