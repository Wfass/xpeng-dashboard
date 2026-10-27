.class Lbxo$1$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Lib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxo$1;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxo$1;


# direct methods
.method constructor <init>(Lbxo$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lbxo$1$1;->a:Lbxo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lib;)V
    .locals 4

    const/4 v0, 0x3

    .line 94
    new-array v0, v0, [F

    const-string v1, "#5C97C4"

    .line 95
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 96
    iget-object v2, p0, Lbxo$1$1;->a:Lbxo$1;

    iget-object v2, v2, Lbxo$1;->b:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    if-eqz p1, :cond_2

    .line 99
    :try_start_0
    invoke-virtual {p1, v3}, Lib;->a(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v1, v2

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1, v3}, Lib;->b(I)I

    move-result p1

    if-eqz p1, :cond_1

    move v1, p1

    .line 108
    :cond_1
    :goto_0
    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    :cond_2
    :goto_1
    iget-object p1, p0, Lbxo$1$1;->a:Lbxo$1;

    iget-object p1, p1, Lbxo$1;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setBackgroundColor(I)V

    return-void
.end method
