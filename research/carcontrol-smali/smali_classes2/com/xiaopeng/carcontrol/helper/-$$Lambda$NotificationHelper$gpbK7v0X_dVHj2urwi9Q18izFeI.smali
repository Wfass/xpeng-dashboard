.class public final synthetic Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;->f$0:I

    iput p2, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;->f$1:I

    iput p3, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;->f$0:I

    iget v1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;->f$1:I

    iget v2, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$gpbK7v0X_dVHj2urwi9Q18izFeI;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->lambda$showOsd$5(III)V

    return-void
.end method
