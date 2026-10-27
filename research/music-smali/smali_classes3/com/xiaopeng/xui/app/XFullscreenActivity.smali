.class public Lcom/xiaopeng/xui/app/XFullscreenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XFullscreenActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final FEATURE_XUI_FULLSCREEN:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static enterFullscreen(Landroid/app/Activity;I)V
    .locals 0

    if-lez p1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1706

    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static exitFullscreen(Landroid/app/Activity;)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, -0x1

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0xe

    .line 15
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/app/XFullscreenActivity;->enterFullscreen(Landroid/app/Activity;I)V

    return-void
.end method
