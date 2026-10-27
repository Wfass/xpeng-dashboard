.class Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$1;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Lcom/a/a/i$b;


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

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$1;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/a/a/i;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$1;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-virtual {p1}, Lcom/a/a/i;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->a(Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;F)F

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView$1;->qZ:Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/TabView;->invalidate()V

    .line 121
    return-void
.end method
