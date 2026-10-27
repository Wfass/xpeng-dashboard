.class public final synthetic Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$jZq0dnKHjIRMAWm3BxF0ZDj42Fk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$jZq0dnKHjIRMAWm3BxF0ZDj42Fk;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/direct/-$$Lambda$NapaElementDirect$jZq0dnKHjIRMAWm3BxF0ZDj42Fk;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/direct/NapaElementDirect;->lambda$showElementItemView$1(Landroid/view/View;)V

    return-void
.end method
