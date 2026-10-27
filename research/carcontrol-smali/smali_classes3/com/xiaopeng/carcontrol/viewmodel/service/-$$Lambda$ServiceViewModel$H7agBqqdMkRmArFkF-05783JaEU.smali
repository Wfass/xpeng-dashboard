.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$H7agBqqdMkRmArFkF-05783JaEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$H7agBqqdMkRmArFkF-05783JaEU;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$ServiceViewModel$H7agBqqdMkRmArFkF-05783JaEU;->f$0:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->lambda$handleSdcObstacleTips$17(I)V

    return-void
.end method
