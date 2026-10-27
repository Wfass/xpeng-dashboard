.class public final synthetic Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$mCWlYHIOl9L0aGBdP26xPwuitz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

.field private final synthetic f$1:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$mCWlYHIOl9L0aGBdP26xPwuitz4;->f$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iput-object p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$mCWlYHIOl9L0aGBdP26xPwuitz4;->f$1:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$mCWlYHIOl9L0aGBdP26xPwuitz4;->f$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$mCWlYHIOl9L0aGBdP26xPwuitz4;->f$1:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->lambda$showFloatingLayer$2$VuiFloatingLayer(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    return-void
.end method
