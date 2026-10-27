.class Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;
.super Ljava/lang/Object;
.source "XOSSmallPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;I)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->b:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->b:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->a:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->b:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->a:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->b:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->callOnClick()Z

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout$1;->b:Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;->access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/XOSSmallPlayerLayout;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
