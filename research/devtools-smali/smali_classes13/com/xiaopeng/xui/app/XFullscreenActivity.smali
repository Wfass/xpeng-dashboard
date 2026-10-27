.class public Lcom/xiaopeng/xui/app/XFullscreenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XFullscreenActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 0

    .line 18
    if-lez p1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 22
    const/16 p1, 0x1706

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const/16 p1, 0xe

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XFullscreenActivity;->a(Landroid/app/Activity;I)V

    .line 16
    return-void
.end method
