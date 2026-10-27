.class Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$a;
.super Ljava/lang/Object;
.source "SmallPlayerAlbumLayout.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$a;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$1;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$a;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    .line 382
    :try_start_0
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
