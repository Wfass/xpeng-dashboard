.class public final synthetic Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;ZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$1:Z

    iput p3, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$2:I

    iput p4, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$0:Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$1:Z

    iget v2, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$2:I

    iget v3, p0, Lcom/xiaopeng/carcontrol/view/-$$Lambda$AbstractPopPanel$k9VN3m6BpYYcFM-umVZZiI0RYyI;->f$3:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/view/AbstractPopPanel;->lambda$show$5$AbstractPopPanel(ZII)V

    return-void
.end method
