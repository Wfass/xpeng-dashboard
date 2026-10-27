.class Lbxo$2$1;
.super Ljava/lang/Object;
.source "UIUtils.java"

# interfaces
.implements Lib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxo$2;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxo$2;


# direct methods
.method constructor <init>(Lbxo$2;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lbxo$2$1;->a:Lbxo$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lib;)V
    .locals 6

    const/4 v0, 0x3

    .line 149
    new-array v0, v0, [F

    const-string v1, "#5C97C4"

    .line 150
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 151
    iget-object v2, p0, Lbxo$2$1;->a:Lbxo$2;

    iget-object v2, v2, Lbxo$2;->b:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setBackgroundColor(I)V

    if-eqz p1, :cond_6

    .line 154
    :try_start_0
    invoke-virtual {p1, v3}, Lib;->a(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    .line 157
    :try_start_1
    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto/16 :goto_3

    :catch_0
    move-exception p1

    move-object v0, p1

    move v1, v2

    goto :goto_2

    .line 159
    :cond_0
    :try_start_2
    invoke-virtual {p1, v3}, Lib;->b(I)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_6

    .line 162
    :try_start_3
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 163
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 164
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 165
    invoke-static {v1, v2, v4, v0}, Lbxm;->a(III[F)[F

    .line 166
    aget v1, v0, v3

    const/4 v2, 0x1

    .line 167
    aget v2, v0, v2

    const/4 v3, 0x2

    .line 168
    aget v0, v0, v3

    const v3, 0x3f19999a    # 0.6f

    cmpl-float v4, v2, v3

    const v5, 0x3ecccccd    # 0.4f

    if-lez v4, :cond_1

    sub-float/2addr v2, v3

    goto :goto_0

    :cond_1
    cmpg-float v4, v2, v5

    if-gtz v4, :cond_2

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    add-float/2addr v2, v5

    :cond_2
    :goto_0
    cmpl-float v4, v0, v3

    if-lez v4, :cond_3

    sub-float/2addr v0, v3

    goto :goto_1

    :cond_3
    cmpg-float v3, v0, v5

    const v4, 0x3e4ccccd    # 0.2f

    if-gez v3, :cond_4

    cmpl-float v3, v0, v4

    if-lez v3, :cond_4

    add-float/2addr v0, v5

    goto :goto_1

    :cond_4
    cmpg-float v3, v0, v4

    if-gtz v3, :cond_5

    add-float/2addr v0, v4

    .line 183
    :cond_5
    :goto_1
    invoke-static {v1, v2, v0}, Lbxm;->a(FFF)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v1, p1

    goto :goto_3

    :catch_1
    move-exception v0

    move v1, p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, p1

    .line 187
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    :cond_6
    :goto_3
    iget-object p1, p0, Lbxo$2$1;->a:Lbxo$2;

    iget-object p1, p1, Lbxo$2;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setBackgroundColor(I)V

    return-void
.end method
