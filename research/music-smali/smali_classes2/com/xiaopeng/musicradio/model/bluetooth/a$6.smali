.class Lcom/xiaopeng/musicradio/model/bluetooth/a$6;
.super Ljava/lang/Object;
.source "BluetoothMusicModel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/a;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$6;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$6;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(Lcom/xiaopeng/musicradio/model/bluetooth/a;F)F

    .line 943
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/a$6;->a:Lcom/xiaopeng/musicradio/model/bluetooth/a;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->j(Lcom/xiaopeng/musicradio/model/bluetooth/a;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->b(Lcom/xiaopeng/musicradio/model/bluetooth/a;F)V

    return-void
.end method
