.class Layh$6;
.super Ljava/lang/Object;
.source "MediaLogoManager.java"

# interfaces
.implements Lib$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layh;->a(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Layh;


# direct methods
.method constructor <init>(Layh;I)V
    .locals 0

    .line 437
    iput-object p1, p0, Layh$6;->b:Layh;

    iput p2, p0, Layh$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lib;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 443
    invoke-virtual {p1, v0}, Lib;->a(I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "#FFE1E2E5"

    .line 445
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 447
    :cond_1
    iget-object v0, p0, Layh$6;->b:Layh;

    invoke-static {v0, p1}, Layh;->a(Layh;I)I

    .line 448
    iget-object p1, p0, Layh$6;->b:Layh;

    invoke-static {p1}, Layh;->c(Layh;)I

    move-result p1

    iget-object v0, p0, Layh$6;->b:Layh;

    invoke-static {v0}, Layh;->d(Layh;)[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 449
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;

    iget v0, p0, Layh$6;->a:I

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$aq;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method
