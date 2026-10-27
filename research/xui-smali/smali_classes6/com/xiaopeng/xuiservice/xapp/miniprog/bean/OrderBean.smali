.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/OrderBean;
.super Ljava/lang/Object;
.source "OrderBean.java"


# instance fields
.field order_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/OrderBean;->order_id:Ljava/lang/String;

    .line 12
    return-void
.end method
