.class Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$a;
.super Ljava/lang/Object;
.source "ThreeOneSmallPlayerLayout.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout$a;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/ThreeOneSmallPlayerLayout;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-string v0, "SmallPlayerAlbumLayout"

    const/4 v1, 0x0

    .line 325
    :try_start_0
    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "Source string not a valid resource ID."

    .line 330
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v2, "Image not found. Check the ID."

    .line 328
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method
